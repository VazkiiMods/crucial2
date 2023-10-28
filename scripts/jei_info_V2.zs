import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i(m as IItemStack, s as string) as void {
	JEI.addInfo(m, [s]);	
}
#game.localize("jeiinfo.crucial.xxx")

i(<item:minecraft:chest>, game.localize("jeiinfo.crucial.chest"));

// Backpack
i(<item:quark:backpack>, game.localize("jeiinfo.crucial.chest"));
i(<item:quark:ravager_hide>, game.localize("jeiinfo.crucial.backpack"));

// Toretoise Stuff
var s = game.localize("jeiinfo.crucial.toretoises");
i(<item:minecraft:iron_ingot>, s);
i(<item:minecraft:iron_nugget>, s);
i(<item:minecraft:redstone>, s);
i(<item:minecraft:coal>, s);
i(<item:minecraft:lapis_lazuli>, s);
i(<item:minecraft:iron_ore>, s);
i(<item:minecraft:redstone_ore>, s);
i(<item:minecraft:coal_ore>, s);
i(<item:minecraft:lapis_ore>, s);

i(<item:minecraft:minecart>, game.localize("jeiinfo.crucial.minecart"));

s = game.localize("jeiinfo.crucial.quark_root");
i(<item:quark:root>, s);
i(<item:quark:root_item>, s);

// Coralstone
s = game.localize("jeiinfo.crucial.coralstone");
i(<item:upgrade_aquatic:acan_coralstone>, s);
i(<item:upgrade_aquatic:brain_coralstone>, s);
i(<item:upgrade_aquatic:branch_coralstone>, s);
i(<item:upgrade_aquatic:bubble_coralstone>, s);
i(<item:upgrade_aquatic:chrome_coralstone>, s);
i(<item:upgrade_aquatic:dead_coralstone>, s);
i(<item:upgrade_aquatic:elder_prismarine_coralstone>, s);
i(<item:upgrade_aquatic:finger_coralstone>, s);
i(<item:upgrade_aquatic:fire_coralstone>, s);
i(<item:upgrade_aquatic:horn_coralstone>, s);
i(<item:upgrade_aquatic:moss_coralstone>, s);
i(<item:upgrade_aquatic:petal_coralstone>, s);
i(<item:upgrade_aquatic:pillow_coralstone>, s);
i(<item:upgrade_aquatic:prismarine_coralstone>, s);
i(<item:upgrade_aquatic:rock_coralstone>, s);
i(<item:upgrade_aquatic:silk_coralstone>, s);
i(<item:upgrade_aquatic:star_coralstone>, s);
i(<item:upgrade_aquatic:tube_coralstone>, s);

// Coral
s = game.localize("jeiinfo.crucial.coral");
i(<item:minecraft:brain_coral>, s);
i(<item:minecraft:brain_coral_block>, s);
i(<item:minecraft:brain_coral_fan>, s);
i(<item:minecraft:bubble_coral>, s);
i(<item:minecraft:bubble_coral_block>, s);
i(<item:minecraft:bubble_coral_fan>, s);
i(<item:minecraft:dead_brain_coral>, s);
i(<item:minecraft:dead_brain_coral_block>, s);
i(<item:minecraft:dead_brain_coral_fan>, s);
i(<item:minecraft:dead_bubble_coral>, s);
i(<item:minecraft:dead_bubble_coral_block>, s);
i(<item:minecraft:dead_bubble_coral_fan>, s);
i(<item:minecraft:dead_fire_coral>, s);
i(<item:minecraft:dead_fire_coral_block>, s);
i(<item:minecraft:dead_fire_coral_fan>, s);
i(<item:minecraft:dead_horn_coral>, s);
i(<item:minecraft:dead_horn_coral_block>, s);
i(<item:minecraft:dead_horn_coral_fan>, s);
i(<item:minecraft:dead_tube_coral>, s);
i(<item:minecraft:dead_tube_coral_block>, s);
i(<item:minecraft:dead_tube_coral_fan>, s);
i(<item:minecraft:fire_coral>, s);
i(<item:minecraft:fire_coral_block>, s);
i(<item:minecraft:fire_coral_fan>, s);
i(<item:minecraft:horn_coral>, s);
i(<item:minecraft:horn_coral_block>, s);
i(<item:minecraft:horn_coral_fan>, s);
i(<item:minecraft:tube_coral>, s);
i(<item:minecraft:tube_coral_block>, s);
i(<item:minecraft:tube_coral_fan>, s);
i(<item:upgrade_aquatic:acan_coral>, s);
i(<item:upgrade_aquatic:acan_coral_block>, s);
i(<item:upgrade_aquatic:acan_coral_fan>, s);
i(<item:upgrade_aquatic:branch_coral>, s);
i(<item:upgrade_aquatic:branch_coral_block>, s);
i(<item:upgrade_aquatic:branch_coral_fan>, s);
i(<item:upgrade_aquatic:chrome_coral>, s);
i(<item:upgrade_aquatic:chrome_coral_block>, s);
i(<item:upgrade_aquatic:chrome_coral_fan>, s);
i(<item:upgrade_aquatic:dead_acan_coral>, s);
i(<item:upgrade_aquatic:dead_acan_coral_block>, s);
i(<item:upgrade_aquatic:dead_acan_coral_fan>, s);
i(<item:upgrade_aquatic:dead_branch_coral>, s);
i(<item:upgrade_aquatic:dead_branch_coral_block>, s);
i(<item:upgrade_aquatic:dead_branch_coral_fan>, s);
i(<item:upgrade_aquatic:dead_chrome_coral>, s);
i(<item:upgrade_aquatic:dead_chrome_coral_block>, s);
i(<item:upgrade_aquatic:dead_chrome_coral_fan>, s);
i(<item:upgrade_aquatic:dead_finger_coral>, s);
i(<item:upgrade_aquatic:dead_finger_coral_block>, s);
i(<item:upgrade_aquatic:dead_finger_coral_fan>, s);
i(<item:upgrade_aquatic:dead_moss_coral>, s);
i(<item:upgrade_aquatic:dead_moss_coral_block>, s);
i(<item:upgrade_aquatic:dead_moss_coral_fan>, s);
i(<item:upgrade_aquatic:dead_petal_coral>, s);
i(<item:upgrade_aquatic:dead_petal_coral_block>, s);
i(<item:upgrade_aquatic:dead_petal_coral_fan>, s);
i(<item:upgrade_aquatic:dead_pillow_coral>, s);
i(<item:upgrade_aquatic:dead_pillow_coral_block>, s);
i(<item:upgrade_aquatic:dead_pillow_coral_fan>, s);
i(<item:upgrade_aquatic:dead_rock_coral>, s);
i(<item:upgrade_aquatic:dead_rock_coral_block>, s);
i(<item:upgrade_aquatic:dead_rock_coral_fan>, s);
i(<item:upgrade_aquatic:dead_silk_coral>, s);
i(<item:upgrade_aquatic:dead_silk_coral_block>, s);
i(<item:upgrade_aquatic:dead_silk_coral_fan>, s);
i(<item:upgrade_aquatic:dead_star_coral>, s);
i(<item:upgrade_aquatic:dead_star_coral_block>, s);
i(<item:upgrade_aquatic:dead_star_coral_fan>, s);
i(<item:upgrade_aquatic:elder_prismarine_coral>, s);
i(<item:upgrade_aquatic:elder_prismarine_coral_block>, s);
i(<item:upgrade_aquatic:elder_prismarine_coral_fan>, s);
i(<item:upgrade_aquatic:elder_prismarine_coral_shower>, s);
i(<item:upgrade_aquatic:finger_coral>, s);
i(<item:upgrade_aquatic:finger_coral_block>, s);
i(<item:upgrade_aquatic:finger_coral_fan>, s);
i(<item:upgrade_aquatic:moss_coral>, s);
i(<item:upgrade_aquatic:moss_coral_block>, s);
i(<item:upgrade_aquatic:moss_coral_fan>, s);
i(<item:upgrade_aquatic:petal_coral>, s);
i(<item:upgrade_aquatic:petal_coral_block>, s);
i(<item:upgrade_aquatic:petal_coral_fan>, s);
i(<item:upgrade_aquatic:pillow_coral>, s);
i(<item:upgrade_aquatic:pillow_coral_block>, s);
i(<item:upgrade_aquatic:pillow_coral_fan>, s);
i(<item:upgrade_aquatic:prismarine_coral>, s);
i(<item:upgrade_aquatic:prismarine_coral_block>, s);
i(<item:upgrade_aquatic:prismarine_coral_fan>, s);
i(<item:upgrade_aquatic:prismarine_coral_shower>, s);
i(<item:upgrade_aquatic:rock_coral>, s);
i(<item:upgrade_aquatic:rock_coral_block>, s);
i(<item:upgrade_aquatic:rock_coral_fan>, s);
i(<item:upgrade_aquatic:silk_coral>, s);
i(<item:upgrade_aquatic:silk_coral_block>, s);
i(<item:upgrade_aquatic:silk_coral_fan>, s);
i(<item:upgrade_aquatic:star_coral>, s);
i(<item:upgrade_aquatic:star_coral_block>, s);
i(<item:upgrade_aquatic:star_coral_fan>, s);

// Wood Types
s = game.localize("jeiinfo.crucial.extinct_wood");
i(<item:atmospheric:aspen_log>, s);
i(<item:atmospheric:aspen_planks>, s);
i(<item:atmospheric:grimwood_log>, s);
i(<item:atmospheric:grimwood_planks>, s);
i(<item:atmospheric:kousa_log>, s);
i(<item:atmospheric:kousa_planks>, s);

s = game.localize("jeiinfo.crucial.rainforests_wood");
i(<item:atmospheric:rosewood_log>, s);
i(<item:atmospheric:rosewood_planks>, s);
i(<item:atmospheric:morado_log>, s);
i(<item:atmospheric:morado_planks>, s);

s = game.localize("jeiinfo.crucial.dunes_wood");
i(<item:atmospheric:yucca_log>, s);
i(<item:atmospheric:yucca_planks>, s);
s = game.localize("jeiinfo.crucial.yucca_tree");
i(<item:atmospheric:yucca_branch>, s);
i(<item:atmospheric:yucca_bundle>, s);
i(<item:atmospheric:yucca_flower>, s);
i(<item:atmospheric:yucca_fruit>, s);

s = game.localize("jeiinfo.crucial.maple_wood");
i(<item:autumnity:maple_log>, s);
i(<item:autumnity:maple_planks>, s);

s = game.localize("jeiinfo.crucial.outer_wood");
i(<item:endergetic:poise_stem>, s);
i(<item:endergetic:poise_planks>, s);

s = game.localize("jeiinfo.crucial.glowshroom");
i(<item:quark:glowshroom>, s);
i(<item:quark:glowcelium>, s);
i(<item:quark:glowshroom_block>, s);
i(<item:enhanced_mushrooms:glowshroom_stem>, s);
i(<item:enhanced_mushrooms:glowshroom_planks>, s);

s = game.localize("jeiinfo.crucial.grow_mushroom");
i(<item:enhanced_mushrooms:brown_mushroom_stem>, s);
i(<item:enhanced_mushrooms:brown_mushroom_planks>, s);
i(<item:enhanced_mushrooms:red_mushroom_stem>, s);
i(<item:enhanced_mushrooms:red_mushroom_planks>, s);

s = game.localize("jeiinfo.crucial.blossom");
i(<item:environmental:cherry_log>, s);
i(<item:environmental:cherry_planks>, s);

s = game.localize("jeiinfo.crucial.swamp_wood");
i(<item:environmental:willow_log>, s);
i(<item:environmental:willow_planks>, s);

s = game.localize("jeiinfo.crucial.flower_wood");
i(<item:environmental:wisteria_log>, s);
i(<item:environmental:wisteria_planks>, s);

s = game.localize("jeiinfo.crucial.driftwood");
i(<item:upgrade_aquatic:driftwood_log>, s);
i(<item:upgrade_aquatic:driftwood_planks>, s);

s = game.localize("jeiinfo.crucial.river_wood");
i(<item:upgrade_aquatic:river_log>, s);
i(<item:upgrade_aquatic:river_planks>, s);

s = game.localize("jeiinfo.crucial.jacaranda");
i(<item:abundance:jacaranda_log>, s);
i(<item:abundance:jacaranda_planks>, s);

s = game.localize("jeiinfo.crucial.redbud");
i(<item:abundance:redbud_log>, s);
i(<item:abundance:flowering_redbud_log>, s);
i(<item:abundance:redbud_planks>, s);

s = game.localize("jeiinfo.crucial.cypress");
i(<item:bayou_blues:cypress_log>, s);
i(<item:bayou_blues:cypress_planks>, s);

// Dunes Features
s = game.localize("jeiinfo.crucial.dunes_stuff");
i(<item:atmospheric:arid_sand>, s); 
i(<item:atmospheric:arid_sandstone>, s);
i(<item:atmospheric:red_arid_sandstone>, s);
i(<item:atmospheric:barrel_cactus>, s);
i(<item:atmospheric:aloe_kernels>, s);
i(<item:atmospheric:aloe_leaves>, s);

i(<item:atmospheric:arid_sand>, game.localize("jeiinfo.crucial.arid_sand")); 
i(<item:atmospheric:red_arid_sand>, game.localize("jeiinfo.crucial.red_arid_sand"));

// Rainforest Features
s = game.localize("jeiinfo.crucial.rainforests_stuff");
i(<item:atmospheric:passion_vine>, s);
i(<item:atmospheric:passionfruit>, s);

// Bayou Features
s = game.localize("jeiinfo.crucial.bayous_stuff");
i(<item:bayou_blues:cypress_knee>, s);
i(<item:bayou_blues:large_cypress_knee>, s);
i(<item:bayou_blues:cypress_branch>, s);
i(<item:bayou_blues:gooseberries>, s);
i(<item:bayou_blues:algae>, s);
i(<item:bayou_blues:beard_moss>, s);

// Lavender Features
i(<item:abundance:lavender>, game.localize("jeiinfo.crucial.lavender_stuff"));

// Saguaro
s = game.localize("jeiinfo.crucial.saguaro");
i(<item:abundance:small_saguaro_cactus>, s);
i(<item:abundance:saguaro_flower>, s);

// Balloons
s = game.localize("jeiinfo.crucial.balloons");
i(<item:endergetic:black_bolloom_balloon>, s);
i(<item:endergetic:blue_bolloom_balloon>, s);
i(<item:endergetic:bolloom_balloon>, s);
i(<item:endergetic:brown_bolloom_balloon>, s);
i(<item:endergetic:cyan_bolloom_balloon>, s);
i(<item:endergetic:gray_bolloom_balloon>, s);
i(<item:endergetic:green_bolloom_balloon>, s);
i(<item:endergetic:light_blue_bolloom_balloon>, s);
i(<item:endergetic:light_gray_bolloom_balloon>, s);
i(<item:endergetic:lime_bolloom_balloon>, s);
i(<item:endergetic:magenta_bolloom_balloon>, s);
i(<item:endergetic:orange_bolloom_balloon>, s);
i(<item:endergetic:pink_bolloom_balloon>, s);
i(<item:endergetic:purple_bolloom_balloon>, s);
i(<item:endergetic:red_bolloom_balloon>, s);
i(<item:endergetic:white_bolloom_balloon>, s);
i(<item:endergetic:yellow_bolloom_balloon>, s);

// Runes
s = game.localize("jeiinfo.crucial.runes");
i(<item:quark:black_rune>, s);
i(<item:quark:blue_rune>, s);
i(<item:quark:brown_rune>, s);
i(<item:quark:cyan_rune>, s);
i(<item:quark:gray_rune>, s);
i(<item:quark:green_rune>, s);
i(<item:quark:light_blue_rune>, s);
i(<item:quark:light_gray_rune>, s);
i(<item:quark:lime_rune>, s);
i(<item:quark:magenta_rune>, s);
i(<item:quark:orange_rune>, s);
i(<item:quark:pink_rune>, s);
i(<item:quark:purple_rune>, s);
i(<item:quark:rainbow_rune>, s);
i(<item:quark:red_rune>, s);
i(<item:quark:white_rune>, s);
i(<item:quark:yellow_rune>, s);

i(<item:quark:blank_rune>, game.localize("jeiinfo.crucial.blank_rune"));

// Speleothems
s = game.localize("jeiinfo.crucial.speleothems");
i(<item:quark:stone_speleothem>, s);
i(<item:quark:netherrack_speleothem>, s);
i(<item:quark:granite_speleothem>, s);
i(<item:quark:diorite_speleothem>, s);
i(<item:quark:andesite_speleothem>, s);
i(<item:quark:marble_speleothem>, s);
i(<item:quark:limestone_speleothem>, s);
i(<item:quark:jasper_speleothem>, s);
i(<item:quark:slate_speleothem>, s);
i(<item:quark:basalt_speleothem>, s);

// Cave Crystals
s = game.localize("jeiinfo.crucial.crystals");
i(<item:quark:black_crystal>, s);
i(<item:quark:blue_crystal>, s);
i(<item:quark:green_crystal>, s);
i(<item:quark:indigo_crystal>, s);
i(<item:quark:orange_crystal>, s);
i(<item:quark:red_crystal>, s);
i(<item:quark:violet_crystal>, s);
i(<item:quark:white_crystal>, s);
i(<item:quark:yellow_crystal>, s);

s = game.localize("jeiinfo.crucial.crystal_cluster");
i(<item:quark:black_crystal_cluster>, s);
i(<item:quark:blue_crystal_cluster>, s);
i(<item:quark:green_crystal_cluster>, s);
i(<item:quark:indigo_crystal_cluster>, s);
i(<item:quark:orange_crystal_cluster>, s);
i(<item:quark:red_crystal_cluster>, s);
i(<item:quark:violet_crystal_cluster>, s);
i(<item:quark:white_crystal_cluster>, s);
i(<item:quark:yellow_crystal_cluster>, s);

s = game.localize("jeiinfo.crucial.waxed_crystal");
i(<item:quark:waxed_black_crystal>, s);
i(<item:quark:waxed_blue_crystal>, s);
i(<item:quark:waxed_green_crystal>, s);
i(<item:quark:waxed_indigo_crystal>, s);
i(<item:quark:waxed_orange_crystal>, s);
i(<item:quark:waxed_red_crystal>, s);
i(<item:quark:waxed_violet_crystal>, s);
i(<item:quark:waxed_white_crystal>, s);
i(<item:quark:waxed_yellow_crystal>, s);

// World Stones
i(<item:minecraft:andesite>, game.localize("jeiinfo.crucial.andesite"));
i(<item:minecraft:diorite>, game.localize("jeiinfo.crucial.diorite"));
i(<item:minecraft:granite>, game.localize("jeiinfo.crucial.granite"));
i(<item:quark:basalt>, game.localize("jeiinfo.crucial.basalt"));
i(<item:quark:brimstone>, game.localize("jeiinfo.crucial.brimstone"));
i(<item:quark:cobbedstone>, game.localize("jeiinfo.crucial.cobbedstone"));
i(<item:quark:elder_prismarine>, game.localize("jeiinfo.crucial.elder_prismarine"));
i(<item:quark:jasper>, game.localize("jeiinfo.crucial.jasper"));
i(<item:quark:limestone>, game.localize("jeiinfo.crucial.limestone"));
i(<item:quark:marble>, game.localize("jeiinfo.crucial.marble"));
i(<item:quark:myalite>, game.localize("jeiinfo.crucial.myalite"));
i(<item:quark:permafrost>, game.localize("jeiinfo.crucial.permafrost"));
i(<item:quark:slate>, game.localize("jeiinfo.crucial.slate"));
i(<item:quark:deepslate>, game.localize("jeiinfo.crucial.deepslate"));
i(<item:quark:cobbled_deepslate>, game.localize("jeiinfo.crucial.cobbled_deepslate"));
i(<item:quark:smooth_basalt>, game.localize("jeiinfo.crucial.smooth_basalt"));

// Slime Blocks
s = game.localize("jeiinfo.crucial.slime_block");
i(<item:minecraft:slime_block>, s);
i(<item:quark:blue_slime_block>, s);
i(<item:quark:cyan_slime_block>, s);
i(<item:quark:magenta_slime_block>, s);
i(<item:quark:red_slime_block>, s);
i(<item:quark:yellow_slime_block>, s);

// Chimes
s = game.localize("jeiinfo.crucial.chimes");
i(<item:chimes:bamboo_chimes>, s);
i(<item:chimes:metal_chimes>, s);

// Traveller's Armor
i(<item:environmental:architect_belt>, game.localize("jeiinfo.crucial.architect_belt"));
i(<item:environmental:healer_pouch>, game.localize("jeiinfo.crucial.healer_pouch"));
i(<item:environmental:thief_hood>, game.localize("jeiinfo.crucial.thief_hood"));
i(<item:environmental:wanderer_boots>, game.localize("jeiinfo.crucial.wanderer_boots"));

// Maple Forest Features
s = game.localize("jeiinfo.crucial.foul_berries");
i(<item:autumnity:foul_berries>, s);
i(<item:autumnity:foul_berry_pips>, s);

s = game.localize("jeiinfo.crucial.snail");
i(<item:autumnity:snail_shell_piece>, s);
i(<item:autumnity:snail_slime>, s);

s = game.localize("jeiinfo.crucial.turkey");
i(<item:autumnity:turkey>, s);
i(<item:autumnity:turkey_egg>, s);
i(<item:autumnity:turkey_piece>, s);

// Bee Stuff
s = game.localize("jeiinfo.crucial.beekeeper");
i(<item:buzzier_bees:honey_wand>, s);
i(<item:buzzier_bees:sticky_honey_wand>, s);
i(<item:buzzier_bees:honey_pot>, game.localize("jeiinfo.crucial.honey_pot"));

// Poise Forest Stuff
i(<item:endergetic:booflo_hide>, game.localize("jeiinfo.crucial.booflo_hide"));
i(<item:endergetic:bolloom_fruit>, game.localize("jeiinfo.crucial.bolloom_fruit"));
i(<item:endergetic:boof_block>, game.localize("jeiinfo.crucial.boof_block"));

s = game.localize("jeiinfo.crucial.poise");
i(<item:endergetic:eumus>, s);
i(<item:endergetic:eumus_poismoss>, s);
i(<item:endergetic:poise_cluster>, s);
i(<item:endergetic:poismoss>, s);
i(<item:endergetic:booflo_vest>, game.localize("jeiinfo.crucial.booflo_vest"));

s = game.localize("jeiinfo.crucial.end_corrock");
i(<item:endergetic:end_corrock>, s);
i(<item:endergetic:end_corrock_block>, s);
i(<item:endergetic:end_corrock_crown>, s);

s = game.localize("jeiinfo.crucial.nether_corrock");
i(<item:endergetic:nether_corrock>, s);
i(<item:endergetic:nether_corrock_block>, s);
i(<item:endergetic:nether_corrock_crown>, s);

s = game.localize("jeiinfo.crucial.overworld_corrock");
i(<item:endergetic:overworld_corrock>, s);
i(<item:endergetic:overworld_corrock_block>, s);
i(<item:endergetic:overworld_corrock_crown>, s);

// Random Environmental Stuff
i(<item:environmental:yak_hair>, game.localize("jeiinfo.crucial.yaks"));

s = game.localize("jeiinfo.crucial.mud");
i(<item:environmental:mud>, s);
i(<item:environmental:mud_ball>, s);

s = game.localize("jeiinfo.crucial.lily_pad");
i(<item:environmental:large_lily_pad>, s);
i(<item:environmental:giant_lily_pad>, s);

s = game.localize("jeiinfo.crucial.truffle_food");
i(<item:environmental:truffle_mash>, s);
i(<item:environmental:truffle_pie>, s);

i(<item:environmental:cattail_seeds>, game.localize("jeiinfo.crucial.cattail"));
i(<item:environmental:cherries>, game.localize("jeiinfo.crucial.cherries"));
i(<item:environmental:slabfish_effigy>, game.localize("jeiinfo.crucial.slabfish_effigy"));
i(<item:environmental:kiln>, game.localize("jeiinfo.crucial.kiln"));
i(<item:environmental:sawmill>, game.localize("jeiinfo.crucial.sawmill"));
i(<item:environmental:truffle>, game.localize("jeiinfo.crucial.truffle"));

// Neapolitan
s = game.localize("jeiinfo.crucial.banana");
i(<item:neapolitan:banana>, s); 
i(<item:neapolitan:banana_bunch>, s);
i(<item:neapolitan:banana_stalk>, s);

s = game.localize("jeiinfo.crucial.banana_frond");
i(<item:neapolitan:banana_frond>, s);
i(<item:neapolitan:small_banana_frond>, s);
i(<item:neapolitan:large_banana_frond>, s);

s = game.localize("jeiinfo.crucial.strawberries");
i(<item:neapolitan:strawberries>, s);
i(<item:neapolitan:strawberry_pips>, s);

s = game.localize("jeiinfo.crucial.beanstalk");
i(<item:neapolitan:beanstalk>, s);
i(<item:neapolitan:beanstalk_thorns>, s);

i(<item:neapolitan:adzuki_beans>, game.localize("jeiinfo.crucial.adzuki"));
i(<item:neapolitan:mint_sprout>, game.localize("jeiinfo.crucial.mint"));
i(<item:neapolitan:white_strawberries>, game.localize("jeiinfo.crucial.white_strawberries"));
i(<item:neapolitan:vanilla_pods>, game.localize("jeiinfo.crucial.vanilla"));
i(<item:neapolitan:ice_cubes>, game.localize("jeiinfo.crucial.ice_cubes"));
i(<item:neapolitan:magic_beans>, game.localize("jeiinfo.crucial.magic_beans"));

// Savage & Ravage
i(<item:savageandravage:creeper_spores>, game.localize("jeiinfo.crucial.creeper_spores"));

// Upgrade Aquatic Stuff
s = game.localize("jeiinfo.crucial.beach");
i(<item:upgrade_aquatic:beachgrass>, s);
i(<item:upgrade_aquatic:tall_beachgrass>, s);

i(<item:upgrade_aquatic:glowing_ink_sac>, game.localize("jeiinfo.crucial.glowing_ink_sac"));
i(<item:upgrade_aquatic:mulberry>, game.localize("jeiinfo.crucial.mulberry")); 

s = game.localize("jeiinfo.crucial.pickerelweed");
i(<item:upgrade_aquatic:blue_pickerelweed>, s);
i(<item:upgrade_aquatic:purple_pickerelweed>, s);

s = game.localize("jeiinfo.crucial.tooth_door");
i(<item:upgrade_aquatic:tooth_door>, s);
i(<item:upgrade_aquatic:tooth_trapdoor>, s);
i(<item:upgrade_aquatic:thrasher_tooth>, game.localize("jeiinfo.crucial.thrasher_tooth"));

i(<item:upgrade_aquatic:elder_eye>, game.localize("jeiinfo.crucial.elder_eye"));
i(<item:upgrade_aquatic:elder_guardian_spine>, game.localize("jeiinfo.crucial.elder_guardian_spine"));
i(<item:upgrade_aquatic:guardian_spine>, game.localize("jeiinfo.crucial.guardian_spine"));

s = game.localize("jeiinfo.crucial.kelp");
i(<item:upgrade_aquatic:ochre_kelp>, s);
i(<item:upgrade_aquatic:polar_kelp>, s);
i(<item:upgrade_aquatic:thorny_kelp>, s);
i(<item:upgrade_aquatic:tongue_kelp>, s);

i(<item:minecraft:sand>, game.localize("jeiinfo.crucial.sand"));
i(<item:minecraft:red_sand>, game.localize("jeiinfo.crucial.red_sand"));
i(<item:minecraft:gravel>, game.localize("jeiinfo.crucial.gravel"));

// Farmers Delight Materials
i(<item:farmersdelight:ham>, game.localize("jeiinfo.crucial.ham"));
s = game.localize("jeiinfo.crucial.wild_beaches");
i(<item:farmersdelight:cabbage>, s); 
i(<item:minecraft:beetroot>, s);

s = game.localize("jeiinfo.crucial.wild_cold");
i(<item:minecraft:potato>, s);

s = game.localize("jeiinfo.crucial.wild_temperate");
i(<item:farmersdelight:onion>, s); 
i(<item:minecraft:carrot>, s);

s = game.localize("jeiinfo.crucial.wild_arid");
i(<item:farmersdelight:tomato>, s);

s = game.localize("jeiinfo.crucial.wild_rice");
i(<item:farmersdelight:rice_panicle>, s);

// Other Farmers Delight Things
i(<item:farmersdelight:basket>, game.localize("jeiinfo.crucial.basket"));

i(<item:farmersdelight:cooking_pot>, game.localize("jeiinfo.crucial.cooking_pot"));
i(<item:farmersdelight:stove>, game.localize("jeiinfo.crucial.stove"));
i(<item:farmersdelight:cutting_board>, game.localize("jeiinfo.crucial.cutting_board"));
i(<item:farmersdelight:rich_soil>, game.localize("jeiinfo.crucial.rich_soil"));
i(<item:farmersdelight:brown_mushroom_colony>, game.localize("jeiinfo.crucial.brown_mushroom_colony"));
i(<item:farmersdelight:red_mushroom_colony>, game.localize("jeiinfo.crucial.red_mushroom_colony"));

// Quark Tweaks
i(<item:minecraft:poisonous_potato>, game.localize("jeiinfo.crucial.poisonous_potato"));
i(<item:minecraft:shulker_shell>, game.localize("jeiinfo.crucial.shulker_shell"));
i(<item:minecraft:cobweb>, game.localize("jeiinfo.crucial.cobweb"));

// Quark Items
s = game.localize("jeiinfo.crucial.chorus");
i(<item:quark:chorus_twist>, s);
i(<item:quark:chorus_weeds>, s);

s = game.localize("jeiinfo.crucial.crab");
i(<item:quark:crab_leg>, s);
i(<item:quark:crab_shell>, s);

s = game.localize("jeiinfo.crucial.glass_item_frame");
i(<item:quark:glass_item_frame>, s);
i(<item:quark:glowing_glass_item_frame>, s);

s = game.localize("jeiinfo.crucial.ambient");
i(<item:quark:music_disc_drips>, s);
i(<item:quark:music_disc_ocean>, s);
i(<item:quark:music_disc_rain>, s);
i(<item:quark:music_disc_wind>, s);
i(<item:quark:music_disc_fire>, s);
i(<item:quark:music_disc_clock>, s);
i(<item:quark:music_disc_crickets>, s);
i(<item:quark:music_disc_chatter>, s);

i(<item:quark:ancient_tome>, game.localize("jeiinfo.crucial.ancient_tome"));
i(<item:quark:biotite>, game.localize("jeiinfo.crucial.biotite")); 
i(<item:quark:bottled_cloud>, game.localize("jeiinfo.crucial.bottled_cloud"));

i(<item:quark:diamond_heart>, game.localize("jeiinfo.crucial.diamond_heart")); 
i(<item:quark:dragon_scale>, game.localize("jeiinfo.crucial.dragon_scale"));
i(<item:quark:soul_bead>, game.localize("jeiinfo.crucial.soul_bead"));
i(<item:quark:forgotten_hat>, game.localize("jeiinfo.crucial.forgotten_hat"));
i(<item:quark:frog_leg>, game.localize("jeiinfo.crucial.frog"));

i(<item:quark:slime_in_a_bucket>, game.localize("jeiinfo.crucial.slime_in_a_bucket"));

// Alex's Mobs
s = game.localize("jeiinfo.crucial.dictionary");
i(<item:alexsmobs:acacia_blossom>, s);
i(<item:alexsmobs:bear_fur>, s);
i(<item:alexsmobs:blood_sac>, s);
i(<item:alexsmobs:bone_serpent_tooth>, s);
i(<item:alexsmobs:centipede_leg>, s);
i(<item:alexsmobs:cockroach_ootheca>, s);
i(<item:alexsmobs:cockroach_wing_fragment>, s);
i(<item:alexsmobs:crocodile_egg>, s);
i(<item:alexsmobs:gazelle_horn>, s);
i(<item:alexsmobs:komodo_spit>, s);
i(<item:alexsmobs:lobster_tail>, s);
i(<item:alexsmobs:moose_antler>, s);
i(<item:alexsmobs:mosquito_larva>, s);
i(<item:alexsmobs:mosquito_proboscis>, s);
i(<item:alexsmobs:raccoon_tail>, s);
i(<item:alexsmobs:rattlesnake_rattle>, s);
i(<item:alexsmobs:roadrunner_feather>, s);
i(<item:alexsmobs:soul_heart>, s);
i(<item:alexsmobs:moose_ribs>, s);
i(<item:alexsmobs:spiked_scute>, s);
i(<item:alexsmobs:guster_eye>, s);
i(<item:alexsmobs:emu_egg>, s);
i(<item:alexsmobs:emu_feather>, s);
i(<item:alexsmobs:dropbear_claw>, s);
i(<item:alexsmobs:kangaroo_meat>, s);
i(<item:alexsmobs:kangaroo_hide>, s);
i(<item:alexsmobs:straddlite>, s);
i(<item:alexsmobs:stradpole_bucket>, s);
i(<item:alexsmobs:straddleboard>, s);
i(<item:alexsmobs:gongylidia>, s);
i(<item:alexsmobs:leafcutter_ant_pupa>, s);
i(<item:alexsmobs:enderiophage_rocket>, s);
i(<item:alexsmobs:leafcutter_anthill>, s);
i(<item:alexsmobs:leafcutter_ant_chamber>, s);

i(<item:alexsmobs:crocodile_scute>, game.localize("jeiinfo.crucial.crocodile_scute"));
i(<item:alexsmobs:animal_dictionary>, game.localize("jeiinfo.crucial.animal_dictionary"));
i(<item:alexsmobs:mimicream>, game.localize("jeiinfo.crucial.mimicream"));
i(<item:alexsmobs:pocket_sand>, game.localize("jeiinfo.crucial.pocket_sand"));
i(<item:alexsmobs:gustmaker>, game.localize("jeiinfo.crucial.gustmaker"));
i(<item:alexsmobs:fedora>, game.localize("jeiinfo.crucial.fedora"));
i(<item:alexsmobs:capsid>, game.localize("jeiinfo.crucial.capsid"));

// The section that brings all the boys to the yard
s = game.localize("jeiinfo.crucial.milkshake");
i(<item:neapolitan:vanilla_milkshake>, s + ("jeiinfo.crucial.vanilla_milkshake"));
i(<item:neapolitan:chocolate_milkshake>, s + ("jeiinfo.crucial.chocolate_milkshake"));
i(<item:neapolitan:strawberry_milkshake>, s + ("jeiinfo.crucial.strawberry_milkshake"));
i(<item:neapolitan:banana_milkshake>, s + ("jeiinfo.crucial.banana_milkshake"));
i(<item:neapolitan:mint_milkshake>, s + ("jeiinfo.crucial.mint_milkshake"));
i(<item:neapolitan:adzuki_milkshake>, s + ("jeiinfo.adzuki_milkshake"));

i(<item:peculiars:yucca_milkshake>, s + ("jeiinfo.crucial.yucca_milkshake"));
i(<item:peculiars:aloe_milkshake>, s + ("jeiinfo.crucial.aloe_milkshake"));
i(<item:peculiars:passionfruit_milkshake>, s + ("jeiinfo.crucial.passionfruit_milkshake"));

i(<item:seasonals:pumpkin_milkshake>, s + ("jeiinfo.crucial.pumpkin_milkshake"));
i(<item:seasonals:sweet_berry_milkshake>, s + ("jeiinfo.crucial.sweet_berry_milkshake"));

// Unique Functional Items
i(<item:atmospheric:passion_vine_coil>, game.localize("jeiinfo.crucial.passion_vine_coil"));
i(<item:atmospheric:crustose>, game.localize("jeiinfo.crucial.crustose"));

i(<item:antiqueatlas:empty_antique_atlas>, game.localize("jeiinfo.crucial.atlas"));

i(<item:charm:bat_bucket>, game.localize("jeiinfo.crucial.bat_bucket"));
i(<item:charm:ender_pearl_block>, game.localize("jeiinfo.crucial.ender_pearl_block"));
i(<item:charm:endermite_powder>, game.localize("jeiinfo.crucial.endermite_powder"));
i(<item:charm:glowball>, game.localize("jeiinfo.crucial.glowball"));
i(<item:charm:gunpowder_block>, game.localize("jeiinfo.crucial.gunpowder_block"));
i(<item:charm:raid_horn>, game.localize("jeiinfo.crucial.raid_horn"));
i(<item:charm:redstone_lantern>, game.localize("jeiinfo.crucial.redstone_lantern"));
i(<item:charm:redstone_sand>, game.localize("jeiinfo.crucial.redstone_sand"));
i(<item:charm:sugar_block>, game.localize("jeiinfo.crucial.sugar_block"));
i(<item:charm:netherite_nugget>, game.localize("jeiinfo.crucial.netherite_nugget"));

i(<item:environmental:koi_bucket>, game.localize("jeiinfo.crucial.koi_bucket"));
i(<item:environmental:slabfish_bucket>, game.localize("jeiinfo.crucial.slabfish_bucket"));

i(<item:inspirations:charged_arrow>, game.localize("jeiinfo.crucial.charged_arrow"));
i(<item:inspirations:north_compass>, game.localize("jeiinfo.crucial.north_compass"));
i(<item:inspirations:redstone_charger>, game.localize("jeiinfo.crucial.redstone_charger"));
i(<item:inspirations:collector>, game.localize("jeiinfo.crucial.collector"));

i(<item:quark:ender_watcher>, game.localize("jeiinfo.crucial.ender_watcher"));
i(<item:quark:feeding_trough>, game.localize("jeiinfo.crucial.feeding_trough"));
i(<item:quark:gold_button>, game.localize("jeiinfo.crucial.gold_button"));
i(<item:quark:grate>, game.localize("jeiinfo.crucial.grate"));
i(<item:quark:gravisand>, game.localize("jeiinfo.crucial.gravisand"));
i(<item:quark:iron_button>, game.localize("jeiinfo.crucial.iron_button"));
i(<item:quark:iron_ladder>, game.localize("jeiinfo.crucial.iron_ladder"));
i(<item:quark:iron_rod>, game.localize("jeiinfo.crucial.iron_rod"));
i(<item:quark:magnet>, game.localize("jeiinfo.crucial.magnet"));
i(<item:quark:myalite_crystal>, game.localize("jeiinfo.crucial.myalite_crystal"));
i(<item:quark:obsidian_pressure_plate>, game.localize("jeiinfo.crucial.obsidian_pressure_plate"));
i(<item:quark:pipe>, game.localize("jeiinfo.crucial.pipe"));
i(<item:quark:redstone_inductor>, game.localize("jeiinfo.crucial.redstone_inductor"));
i(<item:quark:redstone_randomizer>, game.localize("jeiinfo.crucial.redstone_randomizer"));
i(<item:quark:seed_pouch>, game.localize("jeiinfo.crucial.seed_pouch"));
i(<item:quark:soul_compass>, game.localize("jeiinfo.crucial.soul_compass"));
i(<item:quark:trowel>, game.localize("jeiinfo.crucial.trowel"));
i(<item:quark:abacus>, game.localize("jeiinfo.crucial.abacus"));
i(<item:quark:crate>, game.localize("jeiinfo.crucial.crate"));
i(<item:quark:chute>, game.localize("jeiinfo.crucial.chute"));

i(<item:structuredcrafting:structured_crafter>, game.localize("jeiinfo.crucial.structured_crafter"));

i(<item:supplementaries:blackboard>, game.localize("jeiinfo.crucial.blackboard"));
i(<item:supplementaries:clock_block>, game.localize("jeiinfo.crucial.clock_block"));
i(<item:supplementaries:crank>, game.localize("jeiinfo.crucial.crank"));
i(<item:supplementaries:faucet>, game.localize("jeiinfo.crucial.faucet"));
i(<item:supplementaries:firefly_jar>, game.localize("jeiinfo.crucial.firefly_jar"));
i(<item:supplementaries:flute>, game.localize("jeiinfo.crucial.flute"));
i(<item:supplementaries:hourglass>, game.localize("jeiinfo.crucial.hourglass"));
i(<item:supplementaries:jar>, game.localize("jeiinfo.crucial.jar"));
i(<item:supplementaries:jar_tinted>, game.localize("jeiinfo.crucial.jar_tinted"));
i(<item:supplementaries:notice_board>, game.localize("jeiinfo.crucial.notice_board"));
i(<item:supplementaries:pedestal>, game.localize("jeiinfo.crucial.pedestal"));
i(<item:supplementaries:piston_launcher>, game.localize("jeiinfo.crucial.piston_launcher"));
i(<item:supplementaries:planter>, game.localize("jeiinfo.crucial.planter"));
i(<item:supplementaries:planter_rich>, game.localize("jeiinfo.crucial.planter_rich"));
i(<item:supplementaries:redstone_illuminator>, game.localize("jeiinfo.crucial.redstone_illuminator"));
i(<item:supplementaries:sack>, game.localize("jeiinfo.crucial.sack"));
i(<item:supplementaries:turn_table>, game.localize("jeiinfo.crucial.turn_table"));
i(<item:supplementaries:wind_vane>, game.localize("jeiinfo.crucial.wind_vane"));
i(<item:supplementaries:bamboo_spikes>, game.localize("jeiinfo.crucial.bamboo_spikes"));
i(<item:supplementaries:bamboo_spikes_tipped>, game.localize("jeiinfo.crucial.bamboo_spikes_tipped"));
i(<item:supplementaries:bellows>, game.localize("jeiinfo.crucial.bellows"));
i(<item:supplementaries:key>, game.localize("jeiinfo.crucial.key"));
i(<item:supplementaries:rope_arrow>, game.localize("jeiinfo.crucial.rope_arrow"));
i(<item:supplementaries:pulley_block>, game.localize("jeiinfo.crucial.pulley_block"));
i(<item:supplementaries:magma_cream_block>, game.localize("jeiinfo.crucial.magma_cream_block"));
i(<item:supplementaries:bomb>, game.localize("jeiinfo.crucial.bomb"));
i(<item:supplementaries:raked_gravel>, game.localize("jeiinfo.crucial.raked_gravel"));
i(<item:supplementaries:flower_box>, game.localize("jeiinfo.crucial.flower_box"));
i(<item:minecraft:rotten_flesh>, game.localize("jeiinfo.crucial.rotten_flesh"));
i(<item:supplementaries:slingshot>, game.localize("jeiinfo.crucial.slingshot"));

s = game.localize("jeiinfo.crucial.gold_door");
i(<item:supplementaries:gold_door>, s);
i(<item:supplementaries:gold_trapdoor>, s);

s = game.localize("jeiinfo.crucial.netherite_door");
i(<item:supplementaries:safe>, s);
i(<item:supplementaries:netherite_door>, s);
i(<item:supplementaries:netherite_trapdoor>, s);

i(<item:paraglider:paraglider>, game.localize("jeiinfo.crucial.paraglider"));

i(<item:conjurer_illager:conjurer_hat>, game.localize("jeiinfo.crucial.conjurer_hat"));

i(<item:frozenup:frozen_truffle>, game.localize("jeiinfo.crucial.frozen_truffle"));
i(<item:frozenup:chilloo_feather>, game.localize("jeiinfo.crucial.chilloo_feather"));

i(<item:alexsmobs:music_disc_thime>, game.localize("jeiinfo.crucial.thime"));
i(<item:alexsmobs:music_disc_daze>, game.localize("jeiinfo.crucial.daze"));
i(<item:environmental:music_disc_leaving_home>, game.localize("jeiinfo.crucial.leaving_home"));
i(<item:environmental:music_disc_slabrave>, game.localize("jeiinfo.crucial.slabrave"));
i(<item:endergetic:music_disc_kilobyte>, game.localize("jeiinfo.crucial.kilobyte"));
i(<item:berry_good:music_disc_fox>, game.localize("jeiinfo.crucial.fox"));
i(<item:infernalexp:music_disc_soul_spunk>, game.localize("jeiinfo.crucial.soul_spunk"));
i(<item:infernalexp:music_disc_flush>, game.localize("jeiinfo.crucial.flush"));

s = game.localize("jeiinfo.crucial.fish_barrel");
i(<item:fish_in_planks:cod_barrel>, s);
i(<item:fish_in_planks:lionfish_barrel>, s);
i(<item:fish_in_planks:pike_barrel>, s);
i(<item:fish_in_planks:pufferfish_barrel>, s);
i(<item:fish_in_planks:salmon_barrel>, s);
i(<item:fish_in_planks:tropical_fish_barrel>, s);
i(<item:fish_in_planks:perch_barrel>, s);
i(<item:fish_in_planks:koi_barrel>, s);

i(<item:iron_and_gold:raw_iron>, game.localize("jeiinfo.crucial.raw_iron"));
i(<item:iron_and_gold:raw_gold>, game.localize("jeiinfo.crucial.raw_gold"));

i(<item:farsight_spyglasses:spyglass>, game.localize("jeiinfo.crucial.spyglass"));

i(<item:fruitful:flowering_oak_sapling>, game.localize("jeiinfo.crucial.flowering_oak_sapling"));

i(<item:architects_palette:entrails>, game.localize("jeiinfo.crucial.entrails"));
i(<item:architects_palette:warpstone>, game.localize("jeiinfo.crucial.warpstone"));
i(<item:architects_palette:withered_bone>, game.localize("jeiinfo.crucial.withered_bone"));
i(<item:architects_palette:moonstone>, game.localize("jeiinfo.crucial.moonstone"));
i(<item:architects_palette:sunstone>, game.localize("jeiinfo.crucial.sunstone"));
i(<item:architects_palette:chiseled_abyssaline_bricks>, game.localize("jeiinfo.crucial.chiseled_abyssaline_bricks"));

s = game.localize("jeiinfo.crucial.acacia_totem");
i(<item:architects_palette:grinning_acacia_totem>, s);
i(<item:architects_palette:placid_acacia_totem>, s);
i(<item:architects_palette:shocked_acacia_totem>, s);

s = game.localize("jeiinfo.crucial.abyssaline");
i(<item:architects_palette:abyssaline>, s);
i(<item:architects_palette:abyssaline_bricks>, s);
i(<item:architects_palette:abyssaline_pillar>, s);
i(<item:architects_palette:abyssaline_brick_slab>, s);
i(<item:architects_palette:abyssaline_tiles>, s);
i(<item:architects_palette:abyssaline_tile_slab>, s);
i(<item:architects_palette:abyssaline_lamp>, s);
i(<item:architects_palette:abyssaline_brick_vertical_slab>, s);
i(<item:architects_palette:abyssaline_tile_vertical_slab>, s);

s = game.localize("jeiinfo.crucial.glowstone_canyon");
i(<item:infernalexp:dimstone>, s);
i(<item:infernalexp:dullstone>, s);
i(<item:infernalexp:luminous_wart_block>, s);
i(<item:infernalexp:glowdust_sand>, s);
i(<item:infernalexp:glowdust>, s);
i(<item:infernalexp:glowdust_stone>, s);
i(<item:infernalexp:crumbling_blackstone>, s);
i(<item:infernalexp:dullthorns>, s);
i(<item:infernalexp:luminous_fungus>, s);

s = game.localize("jeiinfo.crucial.infernalexp_path");
i(<item:infernalexp:crimson_nylium_path>, s);
i(<item:infernalexp:warped_nylium_path>, s);
i(<item:infernalexp:soul_soil_path>, s);

i(<item:infernalexp:infernal_painting>, game.localize("jeiinfo.crucial.infernal_painting"));
i(<item:infernalexp:raw_hogchop>, game.localize("jeiinfo.crucial.raw_hogchop"));
i(<item:infernalexp:glowcoal>, game.localize("jeiinfo.crucial.glowcoal"));
i(<item:infernalexp:glownuggets>, game.localize("jeiinfo.crucial.glownuggets"));
i(<item:infernalexp:blindsight_tongue>, game.localize("jeiinfo.crucial.blindsight_tongue"));
i(<item:infernalexp:moth_dust>, game.localize("jeiinfo.crucial.moth_dust"));
i(<item:infernalexp:molten_gold_cluster>, game.localize("jeiinfo.crucial.molten_gold_cluster"));
i(<item:infernalexp:glowsilk>, game.localize("jeiinfo.crucial.glowsilk"));
i(<item:infernalexp:glowsilk_cocoon>, game.localize("jeiinfo.crucial.glowsilk_cocoon"));
i(<item:infernalexp:soul_salt_clump>, game.localize("jeiinfo.crucial.soul_salt_clump"));
i(<item:infernalexp:ascus_bomb>, game.localize("jeiinfo.crucial.ascus_bomb"));
i(<item:infernalexp:glowsilk_bow>, game.localize("jeiinfo.crucial.glowsilk_bow"));
i(<item:infernalexp:blindsight_tongue_whip>, game.localize("jeiinfo.crucial.blindsight_tongue_whip"));
i(<item:infernalexp:shroomlight_fungus>, game.localize("jeiinfo.crucial.shroomlight_fungus"));
i(<item:infernalexp:cured_jerky>, game.localize("jeiinfo.crucial.cured_jerky"));
i(<item:infernalexp:trapped_glowdust_sand>, game.localize("jeiinfo.crucial.trapped_glowdust_sand"));
i(<item:infernalexp:basalt_iron_ore>, game.localize("jeiinfo.crucial.basalt_iron_ore"));
i(<item:infernalexp:basaltic_magma>, game.localize("jeiinfo.crucial.magma"));
i(<item:infernalexp:quartz_glass>, game.localize("jeiinfo.crucial.quartz_glass"));
i(<item:infernalexp:quartz_glass_pane>, game.localize("jeiinfo.crucial.quartz_glass_pane"));

i(<item:storagedrawers:oak_full_drawers_1>, game.localize("jeiinfo.crucial.oak_full_drawers_1"));

i(<item:bundlesplus:bundle>, game.localize("jeiinfo.crucial.bundle"));