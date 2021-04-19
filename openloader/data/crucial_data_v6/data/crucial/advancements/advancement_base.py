import os, json

namespace = 'crucial'
last_added = 'root'

known_parents = []
known_advancements = ['root']

def fetch(name, icon, parent, targets=None, display_type='task'):
	if not targets:
		targets = [icon]
	if not type(targets) is list:
		targets = [targets]

	criteria = {}
	for t in targets:
		tname = t[(t.index(':') + 1):]
		criteria[tname] = {
			'trigger': 'minecraft:inventory_changed',
			'conditions': {
				'items': [ item(t) ]
			}
		}

	return adv(name, icon, criteria, parent, display_type)

def stub(name, icon, parent):
	criteria = {
		'impossible': {
			'trigger': 'minecraft:impossible'
		}
	}
	adv(name, icon, criteria, parent)

def adv(name, icon, criteria, parent, display_type='task'):
	global last_added

	if name in known_advancements:
		print(name, 'is already an advancement')
		exit(1)

	obj = {
		'display': display(name, icon),
		'criteria': criteria
	}

	if not parent:
		parent = last_added

	known_parents.append(parent)
	known_advancements.append(name)

	obj['parent'] = ('{}:{}/{}'.format(namespace, namespace, parent))
	last_added = name
	make(name, obj)

def display(name, icon, display_type='task'):
	return {
		'icon': item(icon),
		'title': ('advancement.{}.{}'.format(namespace, name)),
		'description': ('advancement.{}.{}.desc'.format(namespace, name)),
		'frame': display_type,
		'show_toast': True,
		'announce_to_chat': True,
		'hidden': False
	}

def item(item):
	return { 'tag': item[1:] } if item.startswith('#') else { 'item': item }
		
def make(name, obj):
	print('Writing advancement', name)
	with open(file(name), 'w') as out:
		json.dump(obj, out, indent = 2, sort_keys = False)

def file(name):
	filedir = namespace
	os.makedirs(filedir, exist_ok = True)
	return '{}/{}.json'.format(filedir, name)

def verify():
	for parent in known_parents:
		if not parent in known_advancements:
			print(parent, ' is not a valid parent')
			exit(1)