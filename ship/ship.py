import json, os, shutil

# ############################################################ CONFIG ############################################################

pack_name = 'Crucial 2'
pack_author = 'Vazkii'

book_file = 'patchouli_books/crucialguide/book.json'
files_to_copy = ['config', 'defaultconfigs', 'openloader', 'patchouli_books', 'scripts', 'packmenu']
blacklisted_files = [
	'config/jei/ingredient-list-mod-sort-order.ini',
	'config/jei/ingredient-list-type-sort-order.ini',
	'config/jei/recipe-category-sort-order.ini',
	'config/jei/bookmarks.ini',
	'config/sodium-options.json'
]

server_files_to_copy = ['setup_server.bat', 'setup_server.sh', 'SERVER_README.txt']
server_mods_blacklist = [
	401648, # BetterF3
	440465, # Panorama
	238372, # Neat
	448233, # Entity Culling
	460819, # LazyDFU
	441114, # Neko's Enchanted Books
	532127, # Legendary Tooltips
	574856, # Rubidium
	558905  # Magnesium Extras
]
server_blacklisted_files = [
	'openloader/resources',
	'packmenu'
]

temp_dir = '.ship_temp'
overrides_dir = temp_dir + '/overrides'
out_dir = 'ship/output'
ship_dir = 'ship'

##################################################################################################################################

mod_urls = []
version = input('Modpack Version: ')
print('Building', pack_name, 'version', version)

def build_pack():
	ensure_directory()
	clear_dir(temp_dir)
	clear_dir(overrides_dir)
	clear_dir(out_dir)

	# Client files
	copy_files(files_to_copy, '', overrides_dir)
	clear_files(overrides_dir, blacklisted_files)
	update_book()
	make_manifests()
	zip_files(temp_dir, '');

	# Server files
	copy_files(server_files_to_copy, 'ship/', overrides_dir)
	clear_files(overrides_dir, server_blacklisted_files)
	write_mods_csv()
	zip_files(overrides_dir, '-server');

# Ensure we're working in the right directory
def ensure_directory():
	for f in files_to_copy:
		if not os.path.isdir(f):
			os.chdir('..')
			break

	for f in files_to_copy:
		assert os.path.isdir(f)

# Clear out old dir, make new one
def clear_dir(dir_name):
	if os.path.isdir(dir_name):
		shutil.rmtree(dir_name)
	os.mkdir(dir_name)

# Copy relevant files
def copy_files(arr, in_dir, out_dir):
	for f in arr:
		target = in_dir + f
		out_path = out_dir + '/' + f
		if os.path.isdir(target):
			shutil.copytree(target, out_path)
		else:
			shutil.copy(target, out_path)

# Delete blacklisted files
def clear_files(dir_name, blacklist):
	for f in blacklist:
		target = dir_name + '/' + f
		if os.path.isdir(target):
			shutil.rmtree(target)
		elif os.path.exists(target):
			os.remove(target)

# Update book.json with correct version
def update_book():
	with open(book_file, 'r') as in_file:
		book_data = json.load(in_file)
		book_data['subtitle'] = ("Version " + version)

		with open(overrides_dir + '/' + book_file, 'w') as out_file:
			json.dump(book_data, out_file, indent=4)

# Build and write manifest.json
def make_manifests():
	with open('minecraftinstance.json', 'r', encoding="utf8") as in_file:
		data = json.load(in_file)

		modloader = data['baseModLoader']
		forge_ver = modloader['name']
		mc_ver = modloader['minecraftVersion']
		minecraft = {
			'version': mc_ver,
			'modLoaders': [
				{
					'id': forge_ver,
					'primary': True
				}
			]
		}
		
		files = []


		addons = data['installedAddons']
		expected = len([f for f in os.listdir('mods') if f.endswith('.jar')])
		curr = len([a for a in addons if a['installedFile']])

		if curr != expected:
			print('Length of installedAddons array differs from amount of installed mod jars! (%d len vs %d expected)' % (curr, expected))
			assert False

		print('Making pack manifest with', curr, 'mods...')

		for addon in addons:
			installed_file = addon['installedFile']
			project_id = addon['addonID']

			file_id = installed_file['id']
			file = {
				'projectID': project_id,
				'fileID': file_id,
				'required': True
			}

			files.append(file)

			if not (project_id in server_mods_blacklist):
				url = installed_file['downloadUrl']
				filename = 'mods/' + installed_file['fileName']
				download = {
					'url': url,
					'filename': filename
				}

				mod_urls.append(download)

		out_manifest = {
			'minecraft': minecraft,
			'manifestType': 'minecraftModpack',
			'manifestVersion': 1,
			'name': pack_name,
			'version': version,
			'author': pack_author,
			'files': files,
			'overrides': 'overrides'
		}

		forge_ver = mc_ver + '-' + modloader['forgeVersion']
		forge_filename = 'forge-' + forge_ver + '-installer.jar'
		forge_url = 'https://files.minecraftforge.net/maven/net/minecraftforge/forge/' + forge_ver + '/' + forge_filename
		mod_urls.insert(0, {
			'url': forge_url,
			'filename': 'forge-installer.jar'
		})

		with open(temp_dir + '/manifest.json', 'w') as out_file:
			json.dump(out_manifest, out_file, indent=2)

def write_mods_csv():
	with open(overrides_dir + '/mods.csv', 'w') as out_file:
		for mod in mod_urls:
			out_file.write(mod['url'].replace(' ', '%20') + ',' + mod['filename'].replace(' ', '_') + '\n')

def zip_files(src_dir, denom):
	out_file = out_dir + '/' + pack_name.replace(' ', '') + '-' + version + denom
	shutil.make_archive(out_file, 'zip', src_dir)

build_pack()