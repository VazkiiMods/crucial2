#
# Description:	turns item frame invisible if successful
# Called by:	armor_statues:if_trigger
# Entity @s:	item frame
#
# Makes item frame invisible
#
data merge entity @s {Invisible:1b}
tag @s add if_invisible
