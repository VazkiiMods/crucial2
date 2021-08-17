#
# Description:	Copies stored book from storage into mainhand or offhand
# Called by:	as_statue:trigger\copy
# Entity @s:	player
#
# Copies data to a temp pig
#
summon minecraft:pig ~ 0 ~ {DeathLootTable:"armor_statues:replace", Invulnerable:1b, NoGravity:1b, Silent:1b, ActiveEffects:[{Id:14,Amplifier:0,Duration:2147483647}], NoAI:1b, PersistenceRequired:1b, Tags:["as_temp"], HandItems:[{id:"minecraft:stone_button", Count:1b, tag:{ Enchantments:[{ lvl:1s, id:"minecraft:looting"} ]}},{}] }
#
data modify entity @e[tag=as_temp, type=minecraft:pig, sort=nearest, limit=1] HandItems[1] set from storage customizable_armor_stands:book_storage SavedItem
#
# Copies count to looting for book count
#
execute store result entity @e[tag=as_temp, type=minecraft:pig, sort=nearest, limit=1] HandItems[0].tag.Enchantments[0].lvl short 1 run data get storage customizable_armor_stands:book_storage SavedItem.Count
#
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] as @e[tag=as_temp, type=minecraft:pig, limit=1,sort=nearest] run loot replace entity @p[tag=as_selected] weapon.mainhand kill @s
execute if entity @s[nbt={Inventory:[{id:"minecraft:written_book", Slot:-106b, tag:{datapack:"ArmorStatuesV2"}}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] as @e[tag=as_temp, type=minecraft:pig, sort=nearest, limit=1] run loot replace entity @p[tag=as_selected] weapon.offhand kill @s
#
# Kills temp pig
#
tp @e[type=minecraft:pig, tag=as_temp] ~ -300 ~
kill @e[type=minecraft:pig, tag=as_temp]