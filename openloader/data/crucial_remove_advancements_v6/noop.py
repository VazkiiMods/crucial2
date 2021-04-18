import os
import re

p = re.compile('(.+?)\\:((?:.+\\/)+)(.+)');

outtext = [
	'{',
	'    "criteria": {',
	'        "impossible": {',
	'            "trigger": "minecraft:impossible"',
	'        }',
	'    }',
	'}'
]

with open('list.txt') as infile:
		for line in infile:
			line = line.strip()
			m = p.match(line)

			if m:
				g1 = m.group(1)
				g2 = m.group(2)

				path = "data/{}/advancements/{}".format(g1, g2)
				name = m.group(3) + '.json'

				os.makedirs(path, exist_ok = True)
				
				filepath = path + name
				with open(filepath, 'w') as outfile:
					for outline in outtext:
						outfile.write(outline + '\n')
