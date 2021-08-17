#
# Description:	Exchange items between equipment slots
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# Creates temporary storage
#
#data modify storage customizable_armor_stands:slot_storage {} set value {Slots:[{}, {}]}
#
# Copy item from main hand to temporary storage
#
data modify storage customizable_armor_stands:slot_storage Slot set from entity @s HandItems[0]
#
# Copy item from off hand or head to main hand
#
execute if entity @s[scores={as_trigger=161}] run data modify entity @s HandItems[0] set from entity @s HandItems[1]
execute if entity @s[scores={as_trigger=162}] run data modify entity @s HandItems[0] set from entity @s ArmorItems[3]
#
# Copy item from temporary storage to off hand or head
#
execute if entity @s[scores={as_trigger=161}] run data modify entity @s HandItems[1] set from storage customizable_armor_stands:slot_storage Slot
execute if entity @s[scores={as_trigger=162}] run data modify entity @s ArmorItems[3] set from storage customizable_armor_stands:slot_storage Slot
