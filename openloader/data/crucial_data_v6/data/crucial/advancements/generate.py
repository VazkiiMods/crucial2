import os, json

root = 'root'
namespace = 'crucial'

def main():
	stub('mine_stone', 'minecraft:wooden_pickaxe', root)
	stub('upgrade_tools', 'minecraft:stone_pickaxe', mine_stone)
	stub('smelt_iron', 'minecraft:iron_ingot', upgrade_tools)
	stub('iron_tools', 'minecraft:iron_pickaxe', smelt_iron)
	stub('mine_diamond', 'minecraft:diamond', iron_tools)
	stub('diamond_tools', 'minecraft:diamond_pickaxe', mine_diamond)
	stub('form_obsidian', 'minecraft:obsidian', diamond_tools)
	stub('enter_the_nether', 'minecraft:flint_and_steel', form_obsidian)
	stub('find_fortress', 'minecraft:nether_bricks', enter_the_nether)
	stub('obtain_blaze_rod', 'minecraft:blaze_rod', find_fortress)
	stub('follow_ender_eye', 'minecraft:ender_eye', obtain_blaze_rod)
	stub('enter_the_end', 'minecraft:end_stone', follow_ender_eye)
	stub('kill_dragon', 'minecraft:dragon_head', enter_the_end)
	stub('enter_end_gateway', 'minecraft:ender_pearl', kill_dragon)
	stub('find_end_city', 'minecraft:purpur_block', enter_end_gateway)
	stub('elytra', 'minecraft:elytra', find_end_city)


def stub(name, icon, parent):
	obj = {
		'display': {
			'icon': {
				'item': icon
			},
			'title': 'WIP',
			'description': 'WIP',
			'frame': 'task',
			'show_toast': True,
			'announce_to_chat': True,
			'hidden': False
		},
		'criteria': {
			'impossible': {
				'trigger': 'minecraft:impossible'
			}
		}
	}
	if parent:
		obj['parent'] = ('{}:{}/{}'.format(namespace, namespace, parent))


	adv(name, obj)
		
def adv(name, obj):
	print('Writing advancement', name)
	globals()[name] = name
	with open(file(name), 'w') as out:
		json.dump(obj, out, indent = 2, sort_keys = False)

def file(name):
	filedir = namespace
	os.makedirs(filedir, exist_ok = True)
	return '{}/{}.json'.format(filedir, name)

main()