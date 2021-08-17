#
# Description:	Copies player book from mainhand or offhand into storage
# Called by:	as_statue:trigger\copy as_statue:trigger\paste
# Entity @s:	player
#
# Temp storage to copy
#
execute if entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] run data modify storage customizable_armor_stands:book_storage SavedItem set from entity @s SelectedItem
execute if entity @s[nbt={Inventory:[{id:"minecraft:written_book", Slot:-106b, tag:{datapack:"ArmorStatuesV2" }}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:written_book", tag:{datapack:"ArmorStatuesV2"}}}] run data modify storage customizable_armor_stands:book_storage SavedItem set from entity @s Inventory[{Slot:-106b}]