#
# Description:	Display main help options
# Called by:	armor_statues:help
# Entity @s:	Player
#
tellraw @s [{"text":"Customizable Armor Stands - Help","color":"yellow","bold":"true"},{"text":"\nGet the book by:","color":"aqua","bold":"false"}]
execute if data storage customizable_armor_stands:settings as_admin{book_help:"Enabled"} run tellraw @s [{"text":" - Clicking ","color":"aqua"},{"text":"here","color":"green","clickEvent":{"action":"run_command","value":"/trigger as_help set 2"}}]
execute if score #as_shrine_x as_help matches ..0 run tellraw @s [{"text":" - Going to the shrine at ","color":"aqua"},{"score":{"name":"#as_shrine_x","objective":"as_help"},"color":"aqua"},{"text":",","color":"aqua"},{"score":{"name":"#as_shrine_z","objective":"as_help"},"color":"aqua"}]
execute if score #as_shrine_x as_help matches 1.. run tellraw @s [{"text":" - Going to the shrine at ","color":"aqua"},{"score":{"name":"#as_shrine_x","objective":"as_help"},"color":"aqua"},{"text":",","color":"aqua"},{"score":{"name":"#as_shrine_z","objective":"as_help"},"color":"aqua"}]
execute if data storage customizable_armor_stands:settings as_admin{book_craft:"Enabled"} run tellraw @s [{"text":" - Crafting a written book titled \"Statues\"","color":"aqua"}]
execute if entity @s[tag=as_chat] run tellraw @s [{"text":"Send notifications to: ","color":"aqua"},{"text":"Chat","color":"green","clickEvent":{"action":"run_command","value":"/trigger as_help set 3"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle between Chat and Actionbar", "color":"yellow"}}}]
execute if entity @s[tag=!as_chat] run tellraw @s [{"text":"Send notifications to: ","color":"aqua"},{"text":"Actionbar","color":"green","clickEvent":{"action":"run_command","value":"/trigger as_help set 3"}, "hoverEvent":{"action":"show_text", "contents":{"text":"Click to toggle between Chat and Actionbar", "color":"yellow"}}}]
tellraw @s [{"text":"Credits","color":"green","clickEvent":{"action":"run_command","value":"/trigger as_help set 4"}}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
