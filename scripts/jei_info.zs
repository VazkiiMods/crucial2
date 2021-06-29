import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function i(m as IItemStack, s as string) as void {
	JEI.addInfo(m, [s]);	
}

// Backpack
i(<item:quark:backpack>, "When wearing this, you'll have 27 more inventory slots. You can even dye it to look fancy!");
i(<item:quark:ravager_hide>, "This drops from Ravagers. Call in a raid to get them over.");

// Toretoise Stuff
var s = "Toretoises can spawn this. Find them underground and feed them Cave Roots. Iron Rods can pop it automatically, or manually with a Pickaxe.";
i(<item:minecraft:iron_nugget>, s);
i(<item:minecraft:redstone>, s);
i(<item:minecraft:coal>, s);
i(<item:minecraft:lapis_lazuli>, s);

s = "These can be found underground. Stick them on a wall in a dark area to grow them.";
i(<item:quark:root>, s);
i(<item:quark:root_item>, s);

// Coralstone
s = "Put the respective coral block next to raw Coralstone and it'll propagate. Powering with redstone gives coral bits.";
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
s = "This can be found in reefs under warm oceans and farmed with bone meal underwater in those biomes.";
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
s = "This wood doesn't spawn naturally, you have to figure out how to make the Saplings.";
i(<item:atmospheric:aspen_log>, s);
i(<item:atmospheric:aspen_planks>, s);
i(<item:atmospheric:grimwood_log>, s);
i(<item:atmospheric:grimwood_planks>, s);
i(<item:atmospheric:kousa_log>, s);
i(<item:atmospheric:kousa_planks>, s);

s = "This wood spawns in Rainforests.";
i(<item:atmospheric:rosewood_log>, s);
i(<item:atmospheric:rosewood_planks>, s);
i(<item:atmospheric:morado_log>, s);
i(<item:atmospheric:morado_planks>, s);

s = "This wood spawns in Dunes.";
i(<item:atmospheric:yucca_log>, s);
i(<item:atmospheric:yucca_planks>, s);
s = "This spawns alongside Yucca Trees in Dunes.";
i(<item:atmospheric:yucca_branch>, s);
i(<item:atmospheric:yucca_bundle>, s);
i(<item:atmospheric:yucca_flower>, s);
i(<item:atmospheric:yucca_fruit>, s);

s = "This wood spawns in Maple Forests.";
i(<item:autumnity:maple_log>, s);
i(<item:autumnity:maple_planks>, s);

s = "This wood spawns in the Outer End.";
i(<item:endergetic:poise_stem>, s);
i(<item:endergetic:poise_planks>, s);

s = "This spawns underground under Mountains and Mushroom Islands.";
i(<item:quark:glowshroom>, s);
i(<item:quark:glowcelium>, s);
i(<item:quark:glowshroom_block>, s);
i(<item:enhanced_mushrooms:glowshroom_stem>, s);
i(<item:enhanced_mushrooms:glowshroom_planks>, s);

s = "This wood can be gotten by growing mushrooms.";
i(<item:enhanced_mushrooms:brown_mushroom_stem>, s);
i(<item:enhanced_mushrooms:brown_mushroom_planks>, s);
i(<item:enhanced_mushrooms:red_mushroom_stem>, s);
i(<item:enhanced_mushrooms:red_mushroom_planks>, s);

s = "This wood spawns in Blossom Highlands.";
i(<item:environmental:cherry_log>, s);
i(<item:environmental:cherry_planks>, s);

s = "This wood spawns in Swamps.";
i(<item:environmental:willow_log>, s);
i(<item:environmental:willow_planks>, s);

s = "This wood spawns in Flower Forests.";
i(<item:environmental:wisteria_log>, s);
i(<item:environmental:wisteria_planks>, s);

s = "This wood spawns in watery areas. It does not have a sapling variation, so it's in limited supply.";
i(<item:upgrade_aquatic:driftwood_log>, s);
i(<item:upgrade_aquatic:driftwood_planks>, s);

s = "This wood spawns in Rivers and Beaches.";
i(<item:upgrade_aquatic:river_log>, s);
i(<item:upgrade_aquatic:river_planks>, s);

s = "This wood spawns in Lavender Fields and Lavender Forests.";
i(<item:abundance:jacaranda_log>, s);
i(<item:abundance:jacaranda_planks>, s);

s = "This wood spawns randomly around plains and forests.";
i(<item:abundance:redbud_log>, s);
i(<item:abundance:flowering_redbud_log>, s);
i(<item:abundance:redbud_planks>, s);

s = "This wood spawns in Bayous.";
i(<item:bayou_blues:cypress_log>, s);
i(<item:bayou_blues:cypress_planks>, s);

// Dunes Features
s = "This spawns in Dunes.";
i(<item:atmospheric:arid_sand>, s); 
i(<item:atmospheric:arid_sandstone>, s);
i(<item:atmospheric:red_arid_sandstone>, s);
i(<item:atmospheric:barrel_cactus>, s);
i(<item:atmospheric:aloe_kernels>, s);
i(<item:atmospheric:aloe_leaves>, s);

i(<item:atmospheric:arid_sand>, "This spawns in Dunes. Can also be acquired by making an upwards bubble column with Arid Sandstone directly above."); 
i(<item:atmospheric:red_arid_sand>, "This spawns in Dunes. Can also be acquired by making an upwards bubble column with Red Arid Sandstone directly above.");

// Rainforest Features
s = "This spawns in Rainforests.";
i(<item:atmospheric:passion_vine>, s);
i(<item:atmospheric:passionfruit>, s);

// Bayou Features
s = "This spawns in Bayous.";
i(<item:bayou_blues:cypress_knee>, s);
i(<item:bayou_blues:large_cypress_knee>, s);
i(<item:bayou_blues:cypress_branch>, s);
i(<item:bayou_blues:gooseberries>, s);
i(<item:bayou_blues:algae>, s);
i(<item:bayou_blues:beard_moss>, s);

// Lavender Features
i(<item:abundance:lavender>, "This spawns in Lavender Fields and Lavender Forests.");

// Saguaro
s = "This spawns in Badlands";
i(<item:abundance:small_saguaro_cactus>, s);
i(<item:abundance:saguaro_flower>, s);

// Balloons
s = "Try attaching these to fences, mobs, or even boats!";
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
s = "Runes can be found in loot chests. Only some colors can be crafted.";
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

// Cave Crystals
s = "This can be found randomly underground. They can grow if placed deep underground, look for the semi-transparent swirly particles.";
i(<item:quark:black_crystal>, s);
i(<item:quark:blue_crystal>, s);
i(<item:quark:green_crystal>, s);
i(<item:quark:indigo_crystal>, s);
i(<item:quark:orange_crystal>, s);
i(<item:quark:red_crystal>, s);
i(<item:quark:violet_crystal>, s);
i(<item:quark:white_crystal>, s);
i(<item:quark:yellow_crystal>, s);

s = "This can be found randomly underground and can be grown via normal Corundum. Can redirect beacon beams, provided the last one faces upwards, and can also be moved via pistons alongside adjacent Corundum blocks of the same color.";
i(<item:quark:black_crystal_cluster>, s);
i(<item:quark:blue_crystal_cluster>, s);
i(<item:quark:green_crystal_cluster>, s);
i(<item:quark:indigo_crystal_cluster>, s);
i(<item:quark:orange_crystal_cluster>, s);
i(<item:quark:red_crystal_cluster>, s);
i(<item:quark:violet_crystal_cluster>, s);
i(<item:quark:white_crystal_cluster>, s);
i(<item:quark:yellow_crystal_cluster>, s);

// World Stones
i(<item:minecraft:andesite>, "This spawns in large clusters under Forest type biomes.");
i(<item:minecraft:diorite>, "This spawns in large clusters under Savannas, Jungles, and Mushroom Islands.");
i(<item:minecraft:granite>, "This spawns in large clusters under Mountains.");
i(<item:quark:basalt>, "This spawns in large clusters under the Outer End.");
i(<item:quark:brimstone>, "This spawns in large clusters under Badlands.");
i(<item:quark:cobbedstone>, "This spawns in large clusters under Plains. Zombies that spawn on it, naturally or via spawners, get turned into Wrapped, which may drop Cobwebs.");
i(<item:quark:elder_prismarine>, "This spawns in large clusters under Oceans.");
i(<item:quark:jasper>, "This spawns in large clusters under Badlands and Deserts.");
i(<item:quark:limestone>, "This spawns in large clusters under Swamps and Oceans.");
i(<item:quark:marble>, "This spawns in large clusters under Plains.");
i(<item:quark:myalite>, "This spawns in large clusters on top of the Outer End.");
i(<item:quark:permafrost>, "This spawns in large clusters under icy and snowy biomes.");
i(<item:quark:slate>, "This spawns in large clusters under icy and snowy biomes.");

// Slime Blocks
s = "Slime blocks will only stick to ones composed of their color or vice versa. (e.g. Red won't stick to Blue, but it'll stick to Magenta, as Magenta contains Red)";
i(<item:minecraft:slime_block>, s);
i(<item:quark:blue_slime_block>, s);
i(<item:quark:cyan_slime_block>, s);
i(<item:quark:magenta_slime_block>, s);
i(<item:quark:red_slime_block>, s);
i(<item:quark:yellow_slime_block>, s);

// Chimes
s = "This can be right clicked to remove your insomnia level without having to sleep. It also makes a nice sound!";
i(<item:chimes:bamboo_chimes>, s);
i(<item:chimes:metal_chimes>, s);

// Traveller's Armor
i(<item:environmental:architect_belt>, "Part of the Traveller's Armor set. Can be bought by master level Masons, Carpenters, or Ceramists and leveled up with use.");
i(<item:environmental:healer_pouch>, "Part of the Traveller's Armor set. Can be acquired via Piglin Bartering.");
i(<item:environmental:thief_hood>, "Part of the Traveller's Armor set. Can be acquired rarely by killing Skeletons or Wither Skeletons and leveled up with use.");
i(<item:environmental:wanderer_boots>, "Part of the Traveller's Armor set. Can be purchased from the Wandering Trader and leveled up with use.");

// Maple Forest Features
s = "This spawns in Maple Forests.";
i(<item:autumnity:foul_berries>, s);
i(<item:autumnity:foul_berry_pips>, s);

s = "Sourced from Snails, which spawn in Maple Forests.";
i(<item:autumnity:snail_shell_piece>, s);
i(<item:autumnity:snail_slime>, s);

s = "Sourced from Turkeys, which spawn in Maple Forests.";
i(<item:autumnity:turkey>, s);
i(<item:autumnity:turkey_egg>, s);
i(<item:autumnity:turkey_piece>, s);

// Bee Stuff
s = "Get this by trading with a Beekeeper, can take honey out of hives.";
i(<item:buzzier_bees:honey_wand>, s);
i(<item:buzzier_bees:sticky_honey_wand>, s);
i(<item:buzzier_bees:honey_pot>, "Stores honey, can take in honeycombs. It's also the Beekeeper villager workstation.");

// Poise Forest Stuff
i(<item:endergetic:booflo_hide>, "Dropped from Booflos on death or growth. They spawn in the outer end, tame them with Bolloom Fruit, and breed with Poise Clusters.");
i(<item:endergetic:bolloom_fruit>, "Spawns in the outer end, Puff Bug mobs can pollinate buds to make more.");

s = "Spawns in the Poise Forest, located in the Outer End.";
i(<item:endergetic:eumus>, s);
i(<item:endergetic:eumus_poismoss>, s);
i(<item:endergetic:poise_cluster>, s);
i(<item:endergetic:poismoss>, s);
i(<item:endergetic:booflo_vest>, "While worn allows for extra jumps.");

s = "Spawns in the Outer End. Placing any other Corrock in the End will also create this.";
i(<item:endergetic:end_corrock>, s);
i(<item:endergetic:end_corrock_block>, s);
i(<item:endergetic:end_corrock_crown>, s);

s = "Get this by placing any Corrock in the Nether.";
i(<item:endergetic:nether_corrock>, s);
i(<item:endergetic:nether_corrock_block>, s);
i(<item:endergetic:nether_corrock_crown>, s);

s = "Get this by placing any Corrock in the Overworld.";
i(<item:endergetic:overworld_corrock>, s);
i(<item:endergetic:overworld_corrock_block>, s);
i(<item:endergetic:overworld_corrock_crown>, s);

// Random Environmental Stuff
i(<item:environmental:yak_hair>, "Get this by shearing Yaks, which spawn in Mountains.");

s = "Spawns in Swamps and Marshes.";
i(<item:environmental:mud>, s);
i(<item:environmental:mud_ball>, s);

s = "Get this by bone mealing a Lily Pad.";
i(<item:environmental:large_lily_pad>, s);
i(<item:environmental:giant_lily_pad>, s);

i(<item:environmental:cattail_seeds>, "Get by right clicking grown Cattails. Can also be planted, but they'll only grow on farmland underwater.");
i(<item:environmental:cherries>, "Can drop from Cherry Tree leaves like apples.");
i(<item:environmental:slabfish_effigy>, "Can hold up to one item inside it, has no other purpose other than that and looking cool.");
i(<item:environmental:kiln>, "It's faster at smelting anything a smoker and blast furnace can't. It's also the Ceramist villager workstation.");
i(<item:environmental:sawmill>, "Cuts wood like a stonecutter. It's also the Carpenter villager workstation.");

// Neapolitan
s = "Spawns in tropical biomes and beaches. Can be farmed by planting Fronds.";
i(<item:neapolitan:banana>, s); 
i(<item:neapolitan:banana_bunch>, s);
i(<item:neapolitan:banana_stalk>, s);

s = "Grows when planted on Sand or Gravel during rain. Can be bone mealed if raining.";
i(<item:neapolitan:banana_frond>, s);
i(<item:neapolitan:small_banana_frond>, s);
i(<item:neapolitan:large_banana_frond>, s);

s = "Found in patches in Plains Biomes.";
i(<item:neapolitan:strawberries>, s);
i(<item:neapolitan:strawberry_pips>, s);

s = "You can get these by using Magic Beans.";
i(<item:neapolitan:beanstalk>, s);
i(<item:neapolitan:beanstalk_thorns>, s);

i(<item:neapolitan:adzuki_beans>, "Found in patches in Forest Biomes.");
i(<item:neapolitan:mint_sprout>, "Found in patches in Mountain Biomes.");
i(<item:neapolitan:white_strawberries>, "Can be gotten by growing strawberries at high altitudes (Y > 200).");
i(<item:neapolitan:vanilla_pods>, "Found in patches in Plains Savannas. Grows taller if there's adjacent solid blocks.");
i(<item:neapolitan:ice_cubes>, "Drop from ice if broken without Silk Touch.");
i(<item:neapolitan:magic_beans>, "Can be planted to grow large beanstalks.");

// Savage & Ravage
i(<item:savageandravage:creeper_spores>, "Drops when a Creeper blows another Creeper up. Try throwing it to make friends!");

// Upgrade Aquatic Stuff
s = "Spawns in Beaches";
i(<item:upgrade_aquatic:beachgrass>, s);
i(<item:upgrade_aquatic:tall_beachgrass>, s);

i(<item:upgrade_aquatic:glowing_ink_sac>, "Dropped by Glowsquid, find them deep in oceans. Can be used to make signs glow.");
i(<item:upgrade_aquatic:mulberry>, "Grows in river trees, can be farmed under river leaves."); 

s = "Spawns in any body of water. Slows you down too.";
i(<item:upgrade_aquatic:blue_pickerelweed>, s);
i(<item:upgrade_aquatic:purple_pickerelweed>, s);

s = "Like a wooden one, but automatically closes after a bit.";
i(<item:upgrade_aquatic:tooth_door>, s);
i(<item:upgrade_aquatic:tooth_trapdoor>, s);
i(<item:upgrade_aquatic:thrasher_tooth>, "Dropped by Thrashers. Find them deep under cold and frozen oceans.");

i(<item:upgrade_aquatic:elder_eye>, "Drops from Elder Guardians, detects mobs in front of it when enabled and sends a redstone signal.");
i(<item:upgrade_aquatic:elder_guardian_spine>, "Drops from Elder Guardians, deals damage and mining fatigue to creatures in it when activated with redstone.");
i(<item:upgrade_aquatic:guardian_spine>, "Drops from Guardians, deals damage to creatures in it when activated with redstone.");

s = "Sold by Wandering Traders. No one really knows where they get it. Grows like normal Kelp aside from that.";
i(<item:upgrade_aquatic:ochre_kelp>, s);
i(<item:upgrade_aquatic:polar_kelp>, s);
i(<item:upgrade_aquatic:thorny_kelp>, s);
i(<item:upgrade_aquatic:tongue_kelp>, s);

i(<item:minecraft:sand>, "Can be acquired by making an upwards bubble column with Sandstone directly above.");
i(<item:minecraft:red_sand>, "Can be acquired by making an upwards bubble column with Red Sandstone directly above.");
i(<item:minecraft:gravel>, "Can be acquired by making an upwards bubble column with Cobblestone directly above.");

// Farmers Delight Materials
i(<item:farmersdelight:ham>, "Dropped when hitting a Pig or Hoglin with a knife.");

s = "Wild patches spawn in Beaches.";
i(<item:farmersdelight:cabbage>, s); 
i(<item:minecraft:beetroot>, s);

s = "Wild patches spawn in Cold Climates.";
i(<item:minecraft:potato>, s);

s = "Wild patches spawn in Temperate Climates.";
i(<item:farmersdelight:onion>, s); 
i(<item:minecraft:carrot>, s);

s = "Wild patches spawn in Arid Climates.";
i(<item:farmersdelight:tomato>, s);

s = "Wild patches spawn in Swamps and Jungles.";
i(<item:farmersdelight:rice_panicle>, s);

// Other Farmers Delight Things
i(<item:farmersdelight:basket>, "Can store items like a chest. Automatically picks up anything that falls in it.");

i(<item:farmersdelight:cooking_pot>, "Put over a heat source such as fire or a stove to start cooking.");
i(<item:farmersdelight:stove>, "Serves as heat source for a Cooking Pot.");
i(<item:farmersdelight:cutting_board>, "Right click with an item and a knife to cut it.");

// Quark Tweaks
i(<item:minecraft:poisonous_potato>, "Feeding this to a baby animal may poison it and prevent it from growing.");
i(<item:minecraft:shulker_shell>, "Endermites can burrow into Purpur blocks, creating new Shulkers.");
i(<item:minecraft:cobweb>, "Dropped by Wrapped, which can only spawn on Cobbedstone.");

// Quark Items
s = "Spawns in the Outer End. Teleports when touched, if touched a mob, can spawn endermites or spread.";
i(<item:quark:chorus_twist>, s);
i(<item:quark:chorus_weeds>, s);

s = "Drops from Crabs, which spawn in beaches. Breed them with Wheat, Chicken, or any type of Fish.";
i(<item:quark:crab_leg>, s);
i(<item:quark:crab_shell>, s);

s = "Item frame without a background. Can be right clicked through onto chests, placed onto signs, or serve as wallpaper with banners. Can also update Maps in real time.";
i(<item:quark:glass_item_frame>, s);
i(<item:quark:glowing_glass_item_frame>, s);

i(<item:quark:ancient_tome>, "Can be found in loot chests. Combine with the equivalent enchanted book to limit break.");
i(<item:quark:biotite>, "Spawns in the middle end island after killing a dragon."); 
i(<item:quark:bottled_cloud>, "Right click an empty bottle at cloud level to get this. Can place a block in midair.");

i(<item:quark:diamond_heart>, "Drops from stonelings sometimes, find them rarely underground and sneak with a diamond in hand to not scare them."); 
i(<item:quark:dragon_scale>, "Drops from enderdragons summoned by a player. Can be used to duplicate Elytras.");
i(<item:quark:soul_bead>, "Drops from wraiths, in the Soul Sand Valley. When right clicked, will fly towards the nearest Nether Fortress.");
i(<item:quark:forgotten_hat>, "Drops from Forgotten skeletons, deep underground.");
i(<item:quark:frog_leg>, "Drops from Frogs, which spawn in swamps. Breed them with Spider Eyes, or any type of Fish.");

i(<item:quark:slime_in_a_bucket>, "Right click a tiny slime to capture it. It gets excited when you're in a slime chunk!");

// Alex's Mobs
s = "Consult an Animal Dictionary for more information.";
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

i(<item:alexsmobs:crocodile_scute>, "Sourced from Crocodiles, which spawn in Rivers and Swamps. Crocodiles may kill you. Consult an Animal Dictionary for more information.");
i(<item:alexsmobs:animal_dictionary>, "Contains information on Alex's Mobs.");
i(<item:alexsmobs:mimicream>, "Drops from Mimicubes near end cities. Consult an Animal Dictionary for more information.");
i(<item:alexsmobs:pocket_sand>, "Can be used as a longrange weapon, if you're so inclined.");
i(<item:alexsmobs:gustmaker>, "When given a redstone signal, sends a sand tornado in the direction it's facing.");
i(<item:alexsmobs:fedora>, "Do bee do bee doo ba doo");
i(<item:alexsmobs:capsid>, "Can drop from Enderiophages and used to transport items. Consult an Animal Dictionary for more information.");

// The section that brings all the boys to the yard
s = "When drank or fed to a creature or mob, it ";
i(<item:neapolitan:vanilla_milkshake>, s + "removes all effects.");
i(<item:neapolitan:chocolate_milkshake>, s + "removes all positive effects.");
i(<item:neapolitan:strawberry_milkshake>, s + "removes all negative effects.");
i(<item:neapolitan:banana_milkshake>, s + "swaps all effects with the nearest creature.");
i(<item:neapolitan:mint_milkshake>, s + "steals all effects from the nearest creature.");
i(<item:neapolitan:adzuki_milkshake>, s + "gives all effects to the nearest creature.");

i(<item:peculiars:yucca_milkshake>, s + "consumes all effects, and then gives them to the next creature that attacks the drinker.");
i(<item:peculiars:aloe_milkshake>, s + "consumes all effects, and then gives them to back when the drinker is next attacked.");
i(<item:peculiars:passionfruit_milkshake>, s + "consumes all effects, and then gives them to the next creature that is attacked by the drinker.");

i(<item:seasonals:pumpkin_milkshake>, s + "redistributes the duration of effects equally.");
i(<item:seasonals:sweet_berry_milkshake>, s + "shuffles active effects' levels and durations.");

// Unique Functional Items
i(<item:atmospheric:passion_vine_coil>, "Can be thrown. When it lands on a block, it drops down a vine you can climb.");

i(<item:antiqueatlas:empty_antique_atlas>, "Works as a sort of map that catalogues where you go. Definitely a must have if you're going exploring!");

i(<item:charm:bat_bucket>, "Right-click a bat with an empty bucket to capture it, when you release it, you can see all nearby mobs.");
i(<item:charm:ender_pearl_block>, "Eating a Chorus Fruit close to one will teleport you to it instead.");
i(<item:charm:endermite_powder>, "Dropped by Endermites sometimes, right click to help locate the nearest End City.");
i(<item:charm:glowball>, "Can be thrown, and leaves a little glowy blob where it lands.");
i(<item:charm:gunpowder_block>, "Falls like sand or gravel, and dissolves into air if near lava.");
i(<item:charm:raid_horn>, "A rare drop from patrol leaders. Can be used to cancel raids, or to summon patrols.");
i(<item:charm:redstone_lantern>, "Turns on only when powered.");
i(<item:charm:redstone_sand>, "Emits a redstone signal like a redstone block, and also falls like sand or gravel.");
i(<item:charm:sugar_block>, "Falls like sand or gravel, and dissolves into air if near water.");
i(<item:charm:netherite_nugget>, "Can be used to reset item repair cost in an anvil.");

i(<item:environmental:koi_bucket>, "When near a Koi fish, players are given a Serenity effect, which prevents nearby mob spawns. Find these fish in Blossom Highlands.");
i(<item:environmental:slabfish_bucket>, "Slabfish can be found in Swamps and Marshes, and tamed using Tropical Fish.");

i(<item:inspirations:charged_arrow>, "Produces a 1 second long redstone signal if it hits a block.");
i(<item:inspirations:north_compass>, "Always points to the north.");
i(<item:inspirations:redstone_charger>, "Right click a block to make 1 second long redstone signal. If sneaking, it's 1 redstone tick instead.");
i(<item:inspirations:collector>, "Pulls items dropped or in inventories in front of it when given a redstone signal.");

i(<item:quark:ender_watcher>, "Emits a redstone signal when looked at by a player. The closer to the middle, the higher the signal.");
i(<item:quark:feeding_trough>, "Animals can eat and breed from this. If there's over 32 animals in a 10 block radius, they won't breed though!");
i(<item:quark:gold_button>, "Emits a 2 redstone tick long pulse.");
i(<item:quark:grate>, "Animals can't walk through this, and items fall right through.");
i(<item:quark:gravisand>, "When given a redstone signal, falls or floats upwards if it can't, also propagates this behavior. Outputs a comparator signal of 15.");
i(<item:quark:iron_button>, "Emits a 5 second long pulse.");
i(<item:quark:iron_ladder>, "Can stand without a block behind it as long as at least one ladder above it has one.");
i(<item:quark:iron_rod>, "Breaks any blocks in front when pushed by a piston.");
i(<item:quark:magnet>, "Can push or pull metallic blocks when powered. When moved, stonecutters break the block above, and hoppers drop the item in front, or plant, if it's a seed.");
i(<item:quark:myalite_crystal>, "Can be found in Spiral Pillars in the outer end. If placed in a line, can redirect any enderman or ender pearl teleportations between the two ends.");
i(<item:quark:obsidian_pressure_plate>, "Only players can trigger this.");
i(<item:quark:pipe>, "Put items in with a hopper. Items prefer to flow downwards, then forwards, sideways, and lastly upwards. Disable specific pipes with a redstone signal. Items can also fall out of and into open ends.");
i(<item:quark:redstone_inductor>, "Adds up the inputs, can also be locked by pointing a repeater at it.");
i(<item:quark:redstone_randomizer>, "Randomly repeats the input to the left or right.");
i(<item:quark:seed_pouch>, "Can hold 10 stacks of a seed. Right click the seed onto it to add. Can also place 1 or 3x3 if sneaking.");
i(<item:quark:soul_compass>, "Points to where you last died.");
i(<item:quark:trowel>, "Randomly places one block from your hotbar, great for paths!");
i(<item:quark:abacus>, "Right Click a block to set the source - from there, the Abacus will count the distance from the block you're looking at to that one, provided you're holding it.");
i(<item:quark:crate>, "Can hold up to 640 items. Unlike Chests, the amount of slots expands based on the different items you put in, so it's good for holding a high variety of things.");
i(<item:quark:chute>, "Can receive items with Hoppers and the like. Any items that end up in it are immediately ejected downwards into the world.");

i(<item:structuredcrafting:structured_crafter>, "When powered, crafts based on the recipe in blocks or items in chests behind it in a 3x3 area.");

i(<item:supplementaries:blackboard>, "You can draw in this.");
i(<item:supplementaries:clock_block>, "Tells the time. Observers and comparators can interact with it.");
i(<item:supplementaries:crank>, "Like a lever, but with 16 different states.");
i(<item:supplementaries:faucet>, "When powered, pulls items or liquid from the block behind it. Can put liquids into Jars.");
i(<item:supplementaries:firefly_jar>, "Capture a Firefly with a Jar to get this.");
i(<item:supplementaries:flute>, "Summons any non-sitting pets around you when used. Can also right click a pet to bind it to said pet.");
i(<item:supplementaries:hourglass>, "Fill it with sand or other dusts, outputs the remaining time with a comparator, and can be reset with a Turn Table.");
i(<item:supplementaries:jar>, "Can store many liquids, potion, stew, cookies, fish, or tiny slimes.");
i(<item:supplementaries:jar_tinted>, "Can capture vexes and endermites.");
i(<item:supplementaries:notice_board>, "Can display maps, or the first page of a written book.");
i(<item:supplementaries:pedestal>, "Can display items, including their names. Can also be stacked vertically for decor.");
i(<item:supplementaries:piston_launcher>, "Pushes entities, like the original piston mod! You can also jump on it while it's extended.");
i(<item:supplementaries:planter>, "Can grow crops just like irrigated farmland.");
i(<item:supplementaries:redstone_illuminator>, "Outputs a lower light level the higher the redstone signal its given.");
i(<item:supplementaries:sack>, "Can store items, you can take it with you like a shulker box. If you try to carry multiple, it'll slow you down.");
i(<item:supplementaries:turn_table>, "While powered, keeps rotating whatever block is attached to it. Also rotates entities on top. Right click to invert the rotation.");
i(<item:supplementaries:wind_vane>, "Outputs a redstone signal when raining.");
i(<item:supplementaries:bamboo_spikes>, "Can be placed in any direction. Damages entities that pass through them and deals extra fall damage. Can be tipped with potions.");
i(<item:supplementaries:bamboo_spikes_tipped>, "Can be placed in any direction. Damages entities that pass through them, deals extra fall damage, and inflicts the potion effect.");
i(<item:supplementaries:bellows>, "When powered fans fires and furnaces to keep them burning longer or faster. Can also push items with the wind.");
i(<item:supplementaries:key>, "Can be used to lock Safes. Name it in an anvil before usage.");
i(<item:supplementaries:rope_arrow>, "Places down ropes wherever it lands so you can climb up.");
i(<item:supplementaries:pulley_block>, "Can be given ropes or chains. When rotated with a Turn Table, can drop or pull said ropes or chains back up.");
i(<item:supplementaries:magma_cream_block>, "Works like a slime block when moved by pistons, but only one of the sides is sticky.");
i(<item:supplementaries:bomb>, "Can be thrown, explodes on contact for explosive damage without breaking blocks.");

s = "Works like a normal wooden one when unpowered. When powered, ignores interactions.";
i(<item:supplementaries:gold_door>, s);
i(<item:supplementaries:gold_trapdoor>, s);

s = "Can be locked with Keys. If locked, only players with the appropriately named key can open it.";
i(<item:supplementaries:safe>, s);
i(<item:supplementaries:netherite_door>, s);
i(<item:supplementaries:netherite_trapdoor>, s);

i(<item:paraglider:paraglider>, "Can be found on Wild Tower chests only. When held, right click to glide.");

i(<item:conjurer_illager:conjurer_hat>, "This is the trademark accessory of the Conjurer illager, who resides in its theatre, located in Dark Forests. While worn, it keeps Bad Omens away.");

i(<item:frozenup:frozen_truffle>, "Chilloos are known to scavenge this and other crops from the ground. You can find these creatures in cold biomes and use the Frozen Truffles to tame them.");
i(<item:frozenup:chilloo_feather>, "Chilloos shed their feathers occasionally. You can find them in cold biomes and tame them with Frozen Truffles.");

i(<item:alexsmobs:music_disc_thime>, "Can be acquired from bartering with Seals. Consult an Animal Dictionary for more information.");
i(<item:alexsmobs:music_disc_daze>, "Can be acquired by placing any Music Disc inside a Capsid.");
i(<item:environmental:music_disc_leaving_home>, "Can be acquired by having a Skeleton kill a Wandering Trader.");
i(<item:environmental:music_disc_slabrave>, "Can be acquired by giving another Music Disc to a Slabfish.");
i(<item:endergetic:music_disc_kilobyte>, "Can be acquired from chests in End Cities.");
i(<item:berry_good:music_disc_fox>, "Can be acquired from Foxes, who randomly spawn with it in their mouths.");

s = "Can be cooked by placing above a fire or campfire. This will result in a slight loss of fish.";
i(<item:fish_in_planks:cod_barrel>, s);
i(<item:fish_in_planks:lionfish_barrel>, s);
i(<item:fish_in_planks:pike_barrel>, s);
i(<item:fish_in_planks:pufferfish_barrel>, s);
i(<item:fish_in_planks:salmon_barrel>, s);
i(<item:fish_in_planks:tropical_fish_barrel>, s);
i(<item:fish_in_planks:perch_barrel>, s);
i(<item:fish_in_planks:koi_barrel>, s);