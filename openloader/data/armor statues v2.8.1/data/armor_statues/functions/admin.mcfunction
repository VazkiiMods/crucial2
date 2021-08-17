#
# Description:	Display admin options in chat
# Called by:	Player
# Entity @s:	Player
#
tellraw @s [{"text":"Customizable Armor Stands - Admin Options","color":"yellow","bold":"true"}]
tellraw @s [{"text":"Particle shrine: ","color":"aqua"},{"text":"Create","color":"green","clickEvent":{"action":"run_command","value":"/function armor_statues:shrine/create"}},{"text":" / ","color":"aqua"},{"text":"Remove","color":"green","clickEvent":{"action":"run_command","value":"/function armor_statues:shrine/remove"}}]
tellraw @s [{"text":"Get book from help: ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.book_help", "color":"green", "clickEvent":{"action":"run_command", "value":"/function armor_statues:admin/book_from_help_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Craftable book: ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.book_craft", "color":"green", "clickEvent":{"action":"run_command", "value":"/function armor_statues:admin/craft_book_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"UUID locked Armor Stands: ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.uuid_lock", "color":"green", "clickEvent":{"action":"run_command", "value":"/function armor_statues:admin/uuid_lock_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Makes locked armor stands only unlockable by the player who locked them or creative players.\\n\\nClick to toggle", "color":"yellow"}}}]
tellraw @s [{"text":"Enable Item Frame Fixing: ","color":"aqua"},{"storage":"customizable_armor_stands:settings", "nbt":"as_admin.fixed_item_frame", "color":"green", "clickEvent":{"action":"run_command", "value":"/function armor_statues:admin/fixed_item_frame_toggle"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle", "color":"yellow"}}}]
#
tellraw @s [{"text":"Delete unused invisible stands","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Deletes any invisible armor stands in loaded chunks that are not holding or wearing any items.","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function armor_statues:admin/unused"}}]
tellraw @s [{"text":"Highlight all stands","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Gives all stands within 64 blocks the glowing effect for 15 seconds","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/effect give @e[type=armor_stand,distance=..64] minecraft:glowing 15 1 true"}}]
#tellraw @s [{"text":"Reduce local server load","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Sets the Marker tag on all locked armor stands within 128 blocks. This reduces the load on the server from ticking the entities but makes the stands unaffected by entity updates such as being pushed by pistons. The Marker tag can be reset for individual stands by unlocking them.","color":"yellow"}]},"clickEvent":{"action":"run_command","value":"/function armor_statues:admin/marker"}}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
#
# The "Reduce local server load" option has the unfortunate side effect of moving the stands' eye line to their base.
# If this puts it inside a block, the items held and worn by the stand turn black.
# Commented out for the time being whilst options are investigated.
#
