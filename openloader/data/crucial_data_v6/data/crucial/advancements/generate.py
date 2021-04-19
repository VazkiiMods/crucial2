from advancement_base import *

# stub: name, icon, <parent>

# Main Path
fetch('mine_stone', 'minecraft:wooden_pickaxe', 'root', '#minecraft:stone_tool_materials')
fetch('upgrade_tools', 'minecraft:stone_pickaxe', 'mine_stone')
fetch('smelt_iron', 'minecraft:iron_ingot', 'upgrade_tools')
fetch('iron_tools', 'minecraft:iron_pickaxe', 'smelt_iron')
fetch('mine_diamond', 'minecraft:diamond', 'iron_tools')
fetch('diamond_tools', 'minecraft:diamond_pickaxe', 'mine_diamond')
fetch('form_obsidian', 'minecraft:obsidian', 'diamond_tools')
stub('enter_the_nether', 'minecraft:flint_and_steel', 'form_obsidian')
stub('find_fortress', 'minecraft:nether_bricks', 'enter_the_nether')
fetch('obtain_blaze_rod', 'minecraft:blaze_rod', 'find_fortress')
stub('follow_ender_eye', 'minecraft:ender_eye', 'obtain_blaze_rod')
stub('enter_the_end', 'minecraft:end_stone', 'follow_ender_eye')
stub('kill_dragon', 'minecraft:dragon_head', 'enter_the_end')
stub('enter_end_gateway', 'minecraft:ender_pearl', 'kill_dragon')
stub('find_end_city', 'minecraft:purpur_block', 'enter_end_gateway')
fetch('elytra', 'minecraft:elytra', 'find_end_city', None, 'goal')

# Vanilla Story
stub('obtain_armor', 'minecraft:iron_chestplate', 'smelt_iron')
stub('deflect_arrow', 'minecraft:shield', 'obtain_armor')
stub('enchant_item', 'minecraft:enchanting_table', 'form_obsidian')
stub('cure_zombie_villager', 'minecraft:golden_apple', 'brew_potion')

# Vanilla Nether
stub('return_to_sender', 'minecraft:fire_charge', 'enter_the_nether')
stub('find_bastion', 'minecraft:polished_blackstone_bricks', 'enter_the_nether')
stub('obtain_ancient_debris', 'minecraft:netherite_scrap', 'enter_the_nether')
stub('fast_travel', 'minecraft:map', 'enter_the_nether')
stub('obtain_crying_obsidian', 'minecraft:crying_obsidian', 'find_bastion')
stub('distract_piglin', 'minecraft:gold_ingot', 'enter_the_nether')
stub('ride_strider', 'minecraft:warped_fungus_on_a_stick', 'enter_the_nether')
stub('uneasy_alliance', 'minecraft:ghast_tear', 'return_to_sender')
stub('loot_bastion', 'quark:crimson_chest', 'find_bastion')
stub('use_lodestone', 'minecraft:lodestone', 'obtain_ancient_debris')
stub('netherite_armor', 'minecraft:netherite_chestplate', 'obtain_ancient_debris')
stub('get_wither_skull', 'minecraft:wither_skeleton_skull', 'find_fortress')
stub('charge_respawn_anchor', 'minecraft:respawn_anchor', 'obtain_crying_obsidian')
stub('explore_nether', 'minecraft:netherite_boots', 'ride_strider')
stub('summon_wither', 'minecraft:nether_star', 'get_wither_skull')
stub('brew_potion', 'minecraft:potion', 'obtain_blaze_rod')
stub('create_beacon', 'minecraft:beacon', 'summon_wither')
stub('all_potions', 'minecraft:milk_bucket', 'brew_potion')
stub('create_full_beacon', 'minecraft:beacon', 'create_beacon')

# Vanilla End
stub('dragon_egg', 'minecraft:dragon_egg', 'kill_dragon')
stub('respawn_dragon', 'minecraft:end_crystal', 'kill_dragon')
stub('dragon_breath', 'minecraft:dragon_breath', 'kill_dragon')
stub('levitate', 'minecraft:shulker_shell', 'find_end_city')

# Vanilla Adventure
stub('voluntary_exile', 'minecraft:end_crystal', 'kill_a_mob')
stub('kill_a_mob', 'minecraft:iron_sword', 'root')
stub('trade', 'minecraft:emerald', 'root')
stub('ol_betsy', 'minecraft:crossbow', 'kill_a_mob')
stub('honey_block_slide', 'minecraft:honey_block', 'safely_harvest_honey')
stub('sleep_in_bed', 'minecraft:red_bed', 'root')
stub('hero_of_the_village', 'charm:raid_horn', 'voluntary_exile')
stub('throw_trident', 'minecraft:trident', 'kill_a_mob')
stub('shoot_arrow', 'minecraft:bow', 'kill_a_mob')
stub('kill_all_mobs', 'minecraft:diamond_sword', 'kill_a_mob')
stub('totem_of_undying', 'minecraft:totem_of_undying', 'kill_a_mob')
stub('summon_iron_golem', 'minecraft:carved_pumpkin', 'trade')
stub('two_birds_one_arrow', 'minecraft:crossbow', 'ol_betsy')
stub('whos_the_pillager_now', 'minecraft:crossbow', 'ol_betsy')
stub('arbalistic', 'minecraft:crossbow', 'ol_betsy')
stub('adventuring_time', 'minecraft:diamond_boots', 'sleep_in_bed')
stub('very_very_frightening', 'minecraft:trident', 'throw_trident')
stub('sniper_duel', 'minecraft:arrow', 'shoot_arrow')
stub('bullseye', 'minecraft:target', 'shoot_arrow')

# Vanilla Husbandry
stub('safely_harvest_honey', 'minecraft:honey_bottle', 'root')
stub('breed_an_animal', 'minecraft:wheat', 'root')
stub('tame_an_animal', 'minecraft:lead', 'root')
stub('fishy_business', 'minecraft:fishing_rod', 'root')
stub('silk_touch_nest', 'minecraft:bee_nest', 'root')
stub('plant_seed', 'minecraft:wheat_seeds', 'root')
stub('bred_all_animals', 'fantasy:diamond_carrot', 'breed_an_animal')
stub('complete_catalogue', 'minecraft:cooked_cod', 'tame_an_animal')
stub('tactical_fishing', 'minecraft:pufferfish_bucket', 'fishy_business')
stub('balanced_diet', 'farmersdelight:roast_chicken_block', 'plant_seed')
stub('obtain_netherite_hoe', 'minecraft:netherite_hoe', 'plant_seed')

# 

# Finalize and ensure all is okay
verify()