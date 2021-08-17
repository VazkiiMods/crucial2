#
# Description:	Display credits in chat
# Called by:	armor_statues:help
# Entity @s:	Player
#
tellraw @s [{"text":"Customizable Armor Stands - Credits","color":"yellow","bold":"true"}]
tellraw @s [{"text":"Coding and original concept:         ","color":"aqua"},{"text":"Phssthpok","color":"#87325d","bold":"true","clickEvent":{"action":"open_url","value":"https://twitter.com/MCPhssthpok"}}]
tellraw @s ["",{"text":"Vanilla Tweaks","color":"#81bfdc","clickEvent":{"action":"open_url","value":"https://vanillatweaks.net/"}},{"text":" integration:           ","color":"aqua"},{"text":"MSpaceDev","color":"#e30000","bold":"true","clickEvent":{"action":"open_url","value":"https://www.youtube.com/c/MinecraftSpace"}}]
tellraw @s [{"text":"Development and improvements:     ","color":"aqua"},{"text":"MukiTanuki","color":"#0072e5","bold":"true","clickEvent":{"action":"open_url","value":"https://twitter.com/MukiTanuki"}}]
tellraw @s [{"text":"\nThanks to many other people for help with testing and suggestions -Phssthpok","color":"aqua"}]
tellraw @s [{"text":"--------------------------","color":"yellow","bold":"true"}]
