import json, os, shutil

# ############################################################ CONFIG ############################################################

pack_name = 'Crucial 2'
pack_author = 'Vazkii'
out_dir = '.ship_out'
ship_dir = 'ship'
files_to_copy = ['config', 'defaultconfigs', 'openloader', 'patchouli_books', 'scripts']
server_files_to_copy = ['setup_server.bat', 'setup_server.ps1']
blacklisted_files = [
	'config/jei/ingredient-list-mod-sort-order.ini',
	'config/jei/ingredient-list-type-sort-order.ini',
	'config/jei/recipe-category-sort-order.ini',
	'config/jei/bookmarks.ini',
]
server_blacklist = [
	440465, # Panorama
	238372 # Neat
]
book_file = 'patchouli_books/crucialguide/book.json'

##################################################################################################################################

version = input('Modpack Version: ')

print('Building', pack_name, version)

# Ensure we're working on the right directory
for f in files_to_copy:
	if not os.path.isdir(f):
		os.chdir('..')
		break

for f in files_to_copy:
	assert os.path.isdir(f)

# Clear out old dir, make new one
if os.path.isdir(out_dir):
	shutil.rmtree(out_dir)
os.mkdir(out_dir)

# Copy relevant files
for f in files_to_copy:
	out_path = out_dir + '/' + f
	if os.path.isdir(f):
		shutil.copytree(f, out_path)
	else:
		shutil.copy(f, out_path)

# Delete blacklisted files
for f in blacklisted_files:
	os.remove(out_dir + '/' + f)

# Update book.json with correct version
with open(book_file, 'r') as in_file:
	book_data = json.load(in_file)
	book_data['subtitle'] = ("Version " + version)

	with open(out_dir + '/' + book_file, 'w') as out_file:
		json.dump(book_data, out_file, indent=4)

# Build and write manifest.json
mod_urls = []
with open('minecraftinstance.json', 'r') as in_file:
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

		if not (project_id in server_blacklist):
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

	forge_url = modloader['downloadUrl']
	forge_name = modloader['filename']
	mod_urls.insert(0, {
		'url': forge_url,
		'filename': forge_name
	})

	with open(out_dir + '/manifest.json', 'w') as out_file:
		json.dump(out_manifest, out_file, indent=2)

# TODO Zip Client here

# Copy relevant server files
for f in server_files_to_copy:
	target = 'ship/' + f
	out_path = out_dir + '/' + f
	shutil.copy(target, out_path)

with open(out_dir + '/mods.csv', 'w') as out_file:
	for mod in mod_urls:
		out_file.write(mod['url'] + ',' + mod['filename']+'\n')