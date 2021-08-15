// Create integration provided by MobiusFlip
#snip modnotloaded create

#snip modloaded createtweaker
import crafttweaker.api.events.CTEventManager;
CTEventManager.register<crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent>((event) => {
     var player = event.player;
     player.sendMessage("CreateTweaker and ContentTweaker are required for Create integration to work properly. Please make sure you have the latest versions installed: https://www.curseforge.com/minecraft/mc-mods/createtweaker https://www.curseforge.com/minecraft/mc-mods/contenttweaker");
});
#snip end

#snip modloaded contenttweaker
import crafttweaker.api.events.CTEventManager;
CTEventManager.register<crafttweaker.api.event.entity.player.MCPlayerLoggedInEvent>((event) => {
     var player = event.player;
     player.sendMessage("CreateTweaker and ContentTweaker are required for Create integration to work properly. Please make sure you have the latest versions installed: https://www.curseforge.com/minecraft/mc-mods/createtweaker https://www.curseforge.com/minecraft/mc-mods/contenttweaker");
});
#snip end

#snip modnotloaded contenttweaker
#snip modnotloaded createtweaker
import mods.jei.JEI as JEI;

println("Create detected. Loading Create Compat!");

// Dezincronization ===============================================================================
craftingTable.removeRecipe(<item:create:zinc_block>);
craftingTable.removeRecipe(<item:create:zinc_ingot>);
craftingTable.removeRecipe(<item:create:zinc_nugget>);
craftingTable.removeByName("create:crafting/materials/andesite_alloy_from_zinc");
furnace.removeRecipe(<item:create:zinc_ingot>);
blastFurnace.removeRecipe(<item:create:zinc_ingot>);
<recipetype:create:splashing>.removeRecipe(<item:create:zinc_nugget>);
<recipetype:create:milling>.removeRecipe(<item:create:crushed_zinc_ore>);
<recipetype:create:crushing>.removeRecipe(<item:create:crushed_zinc_ore>);
<recipetype:create:mixing>.removeByName("create:mixing/andesite_alloy_from_zinc");
<recipetype:create:mixing>.removeRecipe(<item:create:brass_ingot>);
<recipetype:create:mixing>.removeRecipe(<item:create:crushed_brass>);
<recipetype:create:mixing>.addRecipe("quartz_brass_ingot", "heated", <item:create:brass_ingot> * 2, [<item:create:copper_ingot>, <item:minecraft:quartz>]);
<recipetype:create:mixing>.addRecipe("quartz_crushed_brass", "heated", <item:create:crushed_brass> * 2, [<item:create:crushed_copper_ore>, <item:minecraft:quartz>]);

// Raw Ores =======================================================================================
craftingTable.addShaped("raw_copper_compact", <item:contenttweaker:raw_copper_block>, [[<item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>], [<item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>], [<item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>, <item:contenttweaker:raw_copper>]]);
craftingTable.addShapeless("raw_copper_uncompact", <item:contenttweaker:raw_copper> * 9, [<item:contenttweaker:raw_copper_block>]);
JEI.addInfo(<item:contenttweaker:raw_copper>, ["Drops from Copper Ore when mined without Silk Touch. Using Fortune increases the amount dropped."]);

furnace.addRecipe("raw_copper_smelting", <item:create:copper_ingot>, <item:contenttweaker:raw_copper>, 0.1, 200);
blastFurnace.addRecipe("raw_copper_blasting", <item:create:copper_ingot>, <item:contenttweaker:raw_copper>, 0.1, 100);

<recipetype:create:milling>.addRecipe("raw_iron_milling", [<item:create:crushed_iron_ore>], <item:iron_and_gold:raw_iron>);
<recipetype:create:milling>.addRecipe("raw_gold_milling", [<item:create:crushed_gold_ore>], <item:iron_and_gold:raw_gold>);
<recipetype:create:milling>.addRecipe("raw_copper_milling", [<item:create:crushed_copper_ore>], <item:contenttweaker:raw_copper>);
<recipetype:create:crushing>.addRecipe("raw_iron_crushing", [<item:create:crushed_iron_ore>, <item:create:crushed_iron_ore> % 30, <item:minecraft:gravel> % 6], <item:iron_and_gold:raw_iron>);
<recipetype:create:crushing>.addRecipe("raw_gold_crushing", [<item:create:crushed_gold_ore>, <item:create:crushed_gold_ore> % 30, <item:minecraft:gravel> % 6], <item:iron_and_gold:raw_gold>);
<recipetype:create:crushing>.addRecipe("raw_copper_crushing", [<item:create:crushed_copper_ore>, <item:create:crushed_copper_ore> % 30, <item:minecraft:gravel> % 6], <item:contenttweaker:raw_copper>);

// Tweaks =========================================================================================
<recipetype:create:splashing>.removeByName("create:splashing/gravel");
<recipetype:create:splashing>.addRecipe("gravel_splashing", [<item:minecraft:flint> % 25, <item:create:copper_nugget> % 12], <item:minecraft:gravel>);
<recipetype:create:splashing>.removeByName("create:splashing/red_sand");
<recipetype:create:splashing>.addRecipe("red_sand_splashing", [<item:minecraft:dead_bush> % 5, <item:minecraft:gold_nugget> % 2], <item:minecraft:red_sand>);
<recipetype:create:splashing>.removeByName("create:compat/atmospheric/splashing/red_arid_sand");
<recipetype:create:splashing>.addRecipe("red_arid_sand_splashing", [<item:atmospheric:aloe_kernels> % 5, <item:minecraft:gold_nugget> % 2], <item:atmospheric:red_arid_sand>);
<recipetype:create:splashing>.removeByName("create:splashing/soul_sand");
<recipetype:create:splashing>.addRecipe("soul_sand_splashing", [<item:minecraft:bone_meal> * 2 % 10, <item:minecraft:gold_nugget> % 2], <item:minecraft:soul_sand>);
<recipetype:create:splashing>.addRecipe("soul_soil_splashing", [<item:minecraft:quartz> * 4 % 12, <item:minecraft:gold_nugget> % 2], <item:minecraft:soul_soil>);
furnace.addRecipe("honey_stone", <item:buzzier_bees:crystallized_honey_block>, <item:create:limestone_cobblestone>, 0.1, 200);
<recipetype:create:milling>.addRecipe("honey_milling", [<item:create:limesand>, <item:minecraft:honeycomb> % 50], <item:create:limestone_cobblestone>);
<recipetype:create:crushing>.addRecipe("honey_crushing", [<item:create:limesand>, <item:minecraft:honeycomb> % 50], <item:create:limestone_cobblestone>);
furnace.addRecipe("chocolate_stone", <item:neapolitan:chocolate_block>, <item:create:scoria_cobblestone>, 0.1, 200);
<recipetype:create:milling>.addRecipe("chocolate_milling", [<item:minecraft:soul_sand>, <item:neapolitan:chocolate_bar> % 50], <item:create:scoria_cobblestone>);
<recipetype:create:crushing>.addRecipe("chocolate_crushing", [<item:minecraft:soul_sand>, <item:neapolitan:chocolate_bar> % 50], <item:create:scoria_cobblestone>);
<recipetype:create:compacting>.addRecipe("blastproof_create", "none", <item:savageandravage:blast_proof_plating>, [<item:savageandravage:creeper_spores> * 3, <item:minecraft:gold_ingot> * 2], []);
// Fix nether gold ore giving cobblestone
<recipetype:create:crushing>.removeByName("create:crushing/gold_ore");
<recipetype:create:crushing>.addRecipe("gold_ore_crushing", [<item:create:crushed_gold_ore>, <item:create:crushed_gold_ore> * 2 % 30, <item:minecraft:cobblestone> % 12], <item:minecraft:gold_ore>);
<recipetype:create:crushing>.addRecipe("nether_gold_ore_crushing", [<item:create:crushed_gold_ore>, <item:create:crushed_gold_ore> * 2 % 30, <item:minecraft:netherrack> % 12], <item:minecraft:nether_gold_ore>);

// Food and Drinks ================================================================================
<recipetype:create:compacting>.removeRecipe(<item:create:bar_of_chocolate>);
<recipetype:create:compacting>.addRecipe("neapolitan_chocolate_create", "none", <item:neapolitan:chocolate_bar> * 4, [], [<fluid:create:chocolate> * 250]);
<recipetype:create:compacting>.addRecipe("wheat_pancake", "none", <item:autumnity:pancake>, [<item:autumnity:syrup_bottle>, <item:minecraft:egg>, <item:minecraft:wheat> * 2], [<fluid:minecraft:milk> * 250]);
<recipetype:create:compacting>.addRecipe("flour_pancake", "none", <item:autumnity:pancake>, [<item:autumnity:syrup_bottle>, <item:minecraft:egg>, <item:create:wheat_flour> * 2], [<fluid:minecraft:milk> * 250]);
<recipetype:create:emptying>.addRecipe("hot_cocoa_emptying", <item:minecraft:glass_bottle>, <fluid:create:chocolate> * 250, <item:farmersdelight:hot_cocoa>);
<recipetype:create:filling>.addRecipe("hot_cocoa_filling", <item:farmersdelight:hot_cocoa>, <item:minecraft:glass_bottle>, <fluid:create:chocolate> * 250);
<recipetype:create:emptying>.addRecipe("milk_emptying", <item:minecraft:glass_bottle>, <fluid:minecraft:milk> * 250, <item:neapolitan:milk_bottle>);
<recipetype:create:filling>.addRecipe("milk_filling", <item:neapolitan:milk_bottle>, <item:minecraft:glass_bottle>, <fluid:minecraft:milk> * 250);
<recipetype:create:filling>.removeByName("create:filling/honeyed_apple");
<recipetype:create:filling>.addRecipe("buzzier_apple", <item:buzzier_bees:honey_apple>, <item:minecraft:apple>, <fluid:create:honey> * 250);
<recipetype:create:filling>.addRecipe("buzzier_bread", <item:buzzier_bees:honey_bread>, <item:minecraft:bread>, <fluid:create:honey> * 250);
<recipetype:create:filling>.addRecipe("buzzier_gooseberries", <item:bayou_blues:honey_glazed_gooseberries>, <item:bayou_blues:gooseberries>, <fluid:create:honey> * 250);
<recipetype:create:filling>.addRecipe("buzzier_pork", <item:buzzier_bees:glazed_porkchop>, <item:minecraft:cooked_porkchop>, <fluid:create:honey> * 250);
<recipetype:create:mixing>.removeByName("create:mixing/chocolate");
<recipetype:create:mixing>.addRecipe("neapolitan_chocolate", "none", <fluid:create:chocolate> * 250, [<item:minecraft:sugar>, <item:minecraft:cocoa_beans> * 2], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("vanilla_fudge", "none", <item:neapolitan:vanilla_fudge> * 4, [<item:minecraft:sugar>, <item:neapolitan:dried_vanilla_pods> * 2], [<fluid:minecraft:milk> * 250]);

<recipetype:create:mixing>.addRecipe("vanilla_milkshake", "none", <item:neapolitan:vanilla_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("chocolate_milkshake_ice", "none", <item:neapolitan:chocolate_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:chocolate_bar>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("chocolate_milkshake_pod", "none", <item:neapolitan:chocolate_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:chocolate_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("strawberry_milkshake_ice", "none", <item:neapolitan:strawberry_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:strawberries>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("strawberry_milkshake_pod", "none", <item:neapolitan:strawberry_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:strawberry_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("banana_milkshake_ice", "none", <item:neapolitan:banana_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:banana>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("banana_milkshake_pod", "none", <item:neapolitan:banana_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:banana_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("mint_milkshake_ice", "none", <item:neapolitan:mint_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:mint_leaves>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("mint_milkshake_pod", "none", <item:neapolitan:mint_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:mint_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("adzuki_milkshake_ice", "none", <item:neapolitan:adzuki_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:roasted_adzuki_beans>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("adzuki_milkshake_pod", "none", <item:neapolitan:adzuki_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:neapolitan:adzuki_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("yucca_milkshake_ice", "none", <item:peculiars:yucca_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:atmospheric:yucca_fruit>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("yucca_milkshake_pod", "none", <item:peculiars:yucca_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:yucca_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("aloe_milkshake_ice", "none", <item:peculiars:aloe_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:atmospheric:aloe_leaves>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("aloe_milkshake_pod", "none", <item:peculiars:aloe_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:aloe_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("passionfruit_milkshake_ice", "none", <item:peculiars:passionfruit_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:atmospheric:passionfruit>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("passionfruit_milkshake_pod", "none", <item:peculiars:passionfruit_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:peculiars:passionfruit_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("pumpkin_milkshake_ice", "none", <item:seasonals:pumpkin_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:seasonals:roasted_pumpkin>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("pumpkin_milkshake_pod", "none", <item:seasonals:pumpkin_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:seasonals:pumpkin_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("sweet_berry_milkshake_ice", "none", <item:seasonals:sweet_berry_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:minecraft:sweet_berries>, <item:neapolitan:vanilla_ice_cream>], [<fluid:minecraft:milk> * 250]);
<recipetype:create:mixing>.addRecipe("sweet_berry_milkshake_pod", "none", <item:seasonals:sweet_berry_milkshake> * 4, [<item:minecraft:glass_bottle> * 4, <item:neapolitan:dried_vanilla_pods>, <item:seasonals:sweet_berry_ice_cream>], [<fluid:minecraft:milk> * 250]);

// Feature Parity =================================================================================
<recipetype:create:crushing>.addRecipe("red_crushing", [<item:minecraft:red_sand>], <item:minecraft:red_sandstone>);
<recipetype:create:crushing>.addRecipe("arid_crushing", [<item:atmospheric:arid_sand>], <item:atmospheric:arid_sandstone>);
<recipetype:create:crushing>.addRecipe("red_arid_crushing", [<item:atmospheric:red_arid_sand>], <item:atmospheric:red_arid_sandstone>);
<recipetype:create:crushing>.addRecipe("soul_crushing", [<item:minecraft:soul_sand>], <item:quark:soul_sandstone>);

<recipetype:create:cutting>.addRecipe("jacaranda_log", <item:abundance:stripped_jacaranda_log>, <item:abundance:jacaranda_log>);
<recipetype:create:cutting>.addRecipe("jacaranda_wood", <item:abundance:stripped_jacaranda_wood>, <item:abundance:jacaranda_wood>);
<recipetype:create:cutting>.addRecipe("stripped_jacaranda_log", <item:abundance:jacaranda_planks> * 5, <item:abundance:stripped_jacaranda_log>);
<recipetype:create:cutting>.addRecipe("stripped_jacaranda_wood", <item:abundance:jacaranda_planks> * 5, <item:abundance:stripped_jacaranda_wood>);
<recipetype:create:cutting>.addRecipe("redbud_log", <item:abundance:stripped_redbud_log>, <item:abundance:redbud_log>);
<recipetype:create:cutting>.addRecipe("flowering_redbud_log", <item:abundance:stripped_redbud_log>, <item:abundance:flowering_redbud_log>);
<recipetype:create:cutting>.addRecipe("redbud_wood", <item:abundance:stripped_redbud_wood>, <item:abundance:redbud_wood>);
<recipetype:create:cutting>.addRecipe("flowering_redbud_wood", <item:abundance:stripped_redbud_wood>, <item:abundance:flowering_redbud_wood>);
<recipetype:create:cutting>.addRecipe("stripped_redbud_log", <item:abundance:redbud_planks> * 5, <item:abundance:stripped_redbud_log>);
<recipetype:create:cutting>.addRecipe("stripped_redbud_wood", <item:abundance:redbud_planks> * 5, <item:abundance:stripped_redbud_wood>);

<recipetype:create:cutting>.addRecipe("morado_log", <item:atmospheric:stripped_morado_log>, <item:atmospheric:morado_log>);
<recipetype:create:cutting>.addRecipe("morado_wood", <item:atmospheric:stripped_morado_wood>, <item:atmospheric:morado_wood>);
<recipetype:create:cutting>.addRecipe("stripped_morado_log", <item:atmospheric:morado_planks> * 5, <item:atmospheric:stripped_morado_log>);
<recipetype:create:cutting>.addRecipe("stripped_morado_wood", <item:atmospheric:morado_planks> * 5, <item:atmospheric:stripped_morado_wood>);
<recipetype:create:cutting>.addRecipe("watchful_aspen_log", <item:atmospheric:stripped_aspen_log>, <item:atmospheric:watchful_aspen_log>);
<recipetype:create:cutting>.addRecipe("watchful_aspen_wood", <item:atmospheric:stripped_aspen_wood>, <item:atmospheric:watchful_aspen_wood>);
<recipetype:create:cutting>.addRecipe("crustose_log", <item:atmospheric:aspen_log>, <item:atmospheric:crustose_log>);
<recipetype:create:cutting>.addRecipe("crustose_wood", <item:atmospheric:aspen_wood>, <item:atmospheric:crustose_wood>);
<recipetype:create:cutting>.addRecipe("aspen_wood", <item:atmospheric:stripped_aspen_wood>, <item:atmospheric:aspen_wood>);
<recipetype:create:cutting>.addRecipe("stripped_aspen_wood", <item:atmospheric:aspen_planks> * 5, <item:atmospheric:stripped_aspen_wood>);
<recipetype:create:cutting>.addRecipe("rosewood", <item:atmospheric:stripped_rosewood>, <item:atmospheric:rosewood>);
<recipetype:create:cutting>.addRecipe("stripped_rosewood", <item:atmospheric:rosewood_planks> * 5, <item:atmospheric:stripped_rosewood>);
<recipetype:create:cutting>.addRecipe("yucca_wood", <item:atmospheric:stripped_yucca_wood>, <item:atmospheric:yucca_wood>);
<recipetype:create:cutting>.addRecipe("stripped_yucca_wood", <item:atmospheric:yucca_planks> * 5, <item:atmospheric:stripped_yucca_wood>);
<recipetype:create:cutting>.addRecipe("kousa_wood", <item:atmospheric:stripped_kousa_wood>, <item:atmospheric:kousa_wood>);
<recipetype:create:cutting>.addRecipe("stripped_kousa_wood", <item:atmospheric:kousa_planks> * 5, <item:atmospheric:stripped_kousa_wood>);
<recipetype:create:cutting>.addRecipe("grimwood", <item:atmospheric:stripped_grimwood>, <item:atmospheric:grimwood>);
<recipetype:create:cutting>.addRecipe("stripped_grimwood", <item:atmospheric:grimwood_planks> * 5, <item:atmospheric:stripped_grimwood>);

<recipetype:create:cutting>.addRecipe("maple_wood", <item:autumnity:stripped_maple_wood>, <item:autumnity:maple_wood>);
<recipetype:create:cutting>.addRecipe("stripped_maple_wood", <item:autumnity:maple_planks> * 5, <item:autumnity:stripped_maple_wood>);
<recipetype:create:cutting>.addRecipe("sappy_maple_log", <item:autumnity:maple_planks> * 5, <item:autumnity:sappy_maple_log>);
<recipetype:create:cutting>.addRecipe("sappy_maple_wood", <item:autumnity:maple_planks> * 5, <item:autumnity:sappy_maple_wood>);

<recipetype:create:cutting>.addRecipe("cypress_log", <item:bayou_blues:stripped_cypress_log>, <item:bayou_blues:cypress_log>);
<recipetype:create:cutting>.addRecipe("cypress_wood", <item:bayou_blues:stripped_cypress_wood>, <item:bayou_blues:cypress_wood>);
<recipetype:create:cutting>.addRecipe("stripped_cypress_log", <item:bayou_blues:cypress_planks> * 5, <item:bayou_blues:stripped_cypress_log>);
<recipetype:create:cutting>.addRecipe("stripped_cypress_wood", <item:bayou_blues:cypress_planks> * 5, <item:bayou_blues:stripped_cypress_wood>);

<recipetype:create:cutting>.addRecipe("red_mushroom_stem", <item:enhanced_mushrooms:stripped_red_mushroom_stem>, <item:enhanced_mushrooms:red_mushroom_stem>);
<recipetype:create:cutting>.addRecipe("red_mushroom_hyphae", <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>, <item:enhanced_mushrooms:red_mushroom_hyphae>);
<recipetype:create:cutting>.addRecipe("stripped_red_mushroom_stem", <item:enhanced_mushrooms:red_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_red_mushroom_stem>);
<recipetype:create:cutting>.addRecipe("stripped_red_mushroom_hyphae", <item:enhanced_mushrooms:red_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>);
<recipetype:create:cutting>.addRecipe("brown_mushroom_stem", <item:enhanced_mushrooms:stripped_brown_mushroom_stem>, <item:enhanced_mushrooms:brown_mushroom_stem>);
<recipetype:create:cutting>.addRecipe("brown_mushroom_hyphae", <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>, <item:enhanced_mushrooms:brown_mushroom_hyphae>);
<recipetype:create:cutting>.addRecipe("stripped_brown_mushroom_stem", <item:enhanced_mushrooms:brown_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_brown_mushroom_stem>);
<recipetype:create:cutting>.addRecipe("stripped_brown_mushroom_hyphae", <item:enhanced_mushrooms:brown_mushroom_planks> * 5, <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>);
<recipetype:create:cutting>.addRecipe("glowshroom_stem", <item:enhanced_mushrooms:stripped_glowshroom_stem>, <item:enhanced_mushrooms:glowshroom_stem>);
<recipetype:create:cutting>.addRecipe("glowshroom_hyphae", <item:enhanced_mushrooms:stripped_glowshroom_hyphae>, <item:enhanced_mushrooms:glowshroom_hyphae>);
<recipetype:create:cutting>.addRecipe("stripped_glowshroom_stem", <item:enhanced_mushrooms:glowshroom_planks> * 5, <item:enhanced_mushrooms:stripped_glowshroom_stem>);
<recipetype:create:cutting>.addRecipe("stripped_glowshroom_hyphae", <item:enhanced_mushrooms:glowshroom_planks> * 5, <item:enhanced_mushrooms:stripped_glowshroom_hyphae>);

<recipetype:create:cutting>.addRecipe("willow_log", <item:environmental:stripped_willow_log>, <item:environmental:willow_log>);
<recipetype:create:cutting>.addRecipe("willow_wood", <item:environmental:stripped_willow_wood>, <item:environmental:willow_wood>);
<recipetype:create:cutting>.addRecipe("stripped_willow_log", <item:environmental:willow_planks> * 5, <item:environmental:stripped_willow_log>);
<recipetype:create:cutting>.addRecipe("stripped_willow_wood", <item:environmental:willow_planks> * 5, <item:environmental:stripped_willow_wood>);
<recipetype:create:cutting>.addRecipe("cherry_log", <item:environmental:stripped_cherry_log>, <item:environmental:cherry_log>);
<recipetype:create:cutting>.addRecipe("cherry_wood", <item:environmental:stripped_cherry_wood>, <item:environmental:cherry_wood>);
<recipetype:create:cutting>.addRecipe("stripped_cherry_log", <item:environmental:cherry_planks> * 5, <item:environmental:stripped_cherry_log>);
<recipetype:create:cutting>.addRecipe("stripped_cherry_wood", <item:environmental:cherry_planks> * 5, <item:environmental:stripped_cherry_wood>);
<recipetype:create:cutting>.addRecipe("wisteria_log", <item:environmental:stripped_wisteria_log>, <item:environmental:wisteria_log>);
<recipetype:create:cutting>.addRecipe("wisteria_wood", <item:environmental:stripped_wisteria_wood>, <item:environmental:wisteria_wood>);
<recipetype:create:cutting>.addRecipe("stripped_wisteria_log", <item:environmental:wisteria_planks> * 5, <item:environmental:stripped_wisteria_log>);
<recipetype:create:cutting>.addRecipe("stripped_wisteria_wood", <item:environmental:wisteria_planks> * 5, <item:environmental:stripped_wisteria_wood>);

<recipetype:create:cutting>.addRecipe("poise_wood", <item:endergetic:stripped_poise_wood>, <item:endergetic:poise_wood>);
<recipetype:create:cutting>.addRecipe("stripped_poise_wood", <item:endergetic:poise_planks> * 5, <item:endergetic:stripped_poise_wood>);
<recipetype:create:cutting>.addRecipe("glowing_poise_stem", <item:endergetic:stripped_poise_stem>, <item:endergetic:glowing_poise_stem>);
<recipetype:create:cutting>.addRecipe("glowing_poise_wood", <item:endergetic:stripped_poise_wood>, <item:endergetic:glowing_poise_wood>);

<recipetype:create:cutting>.addRecipe("driftwood", <item:upgrade_aquatic:stripped_driftwood>, <item:upgrade_aquatic:driftwood>);
<recipetype:create:cutting>.addRecipe("stripped_driftwood", <item:upgrade_aquatic:driftwood_planks> * 5, <item:upgrade_aquatic:stripped_driftwood>);
<recipetype:create:cutting>.addRecipe("river_wood", <item:upgrade_aquatic:stripped_river_wood>, <item:upgrade_aquatic:river_wood>);
<recipetype:create:cutting>.addRecipe("stripped_river_wood", <item:upgrade_aquatic:river_planks> * 5, <item:upgrade_aquatic:stripped_river_wood>);

<recipetype:create:crushing>.addRecipe("buttercup_crushing", [<item:minecraft:yellow_dye> * 2, <item:minecraft:brown_dye> % 10], <item:buzzier_bees:buttercup>);
<recipetype:create:milling>.addRecipe("buttercup_milling", [<item:minecraft:yellow_dye> * 2, <item:minecraft:brown_dye> % 10], <item:buzzier_bees:buttercup>);
<recipetype:create:crushing>.addRecipe("white_clover_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:white_clover>);
<recipetype:create:milling>.addRecipe("white_clover_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:white_clover>);
<recipetype:create:crushing>.addRecipe("pink_clover_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:pink_clover>);
<recipetype:create:milling>.addRecipe("pink_clover_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 10], <item:buzzier_bees:pink_clover>);

<recipetype:create:crushing>.addRecipe("tall_yucca_crushing", [<item:minecraft:light_gray_dye> * 3, <item:minecraft:light_gray_dye> * 2 % 25, <item:minecraft:white_dye> * 2 % 5], <item:atmospheric:tall_yucca_flower>);
<recipetype:create:milling>.addRecipe("tall_yucca_milling", [<item:minecraft:light_gray_dye> * 3, <item:minecraft:light_gray_dye> * 2 % 25, <item:minecraft:white_dye> * 2 % 5], <item:atmospheric:tall_yucca_flower>);
<recipetype:create:crushing>.addRecipe("water_hyacinth_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 20], <item:atmospheric:water_hyacinth>);
<recipetype:create:milling>.addRecipe("water_hyacinth_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 20], <item:atmospheric:water_hyacinth>);

<recipetype:create:crushing>.addRecipe("sunny_marigold_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:abundance:sunny_marigold>);
<recipetype:create:milling>.addRecipe("sunny_marigold_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:abundance:sunny_marigold>);
<recipetype:create:crushing>.addRecipe("shady_marigold_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:brown_dye> % 20], <item:abundance:shady_marigold>);
<recipetype:create:milling>.addRecipe("shady_marigold_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:brown_dye> % 20], <item:abundance:shady_marigold>);
<recipetype:create:crushing>.addRecipe("tall_marigold_crushing", [<item:minecraft:orange_dye> * 3, <item:minecraft:brown_dye> % 50, <item:minecraft:yellow_dye> % 50], <item:abundance:tall_marigold>);
<recipetype:create:milling>.addRecipe("tall_marigold_milling", [<item:minecraft:orange_dye> * 3, <item:minecraft:brown_dye> % 50, <item:minecraft:yellow_dye> % 50], <item:abundance:tall_marigold>);
<recipetype:create:crushing>.addRecipe("chicory_crushing", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:magenta_dye> % 5], <item:abundance:chicory>);
<recipetype:create:milling>.addRecipe("chicory_milling", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:magenta_dye> % 5], <item:abundance:chicory>);
<recipetype:create:crushing>.addRecipe("amaranthus_crushing", [<item:minecraft:red_dye> * 2], <item:abundance:amaranthus>);
<recipetype:create:milling>.addRecipe("amaranthus_milling", [<item:minecraft:red_dye> * 2], <item:abundance:amaranthus>);
<recipetype:create:crushing>.addRecipe("nemophila_crushing", [<item:minecraft:light_blue_dye> * 2], <item:abundance:nemophila>);
<recipetype:create:milling>.addRecipe("nemophila_milling", [<item:minecraft:light_blue_dye> * 2], <item:abundance:nemophila>);
<recipetype:create:crushing>.addRecipe("purple_african_daisy_crushing", [<item:minecraft:purple_dye> * 2], <item:abundance:purple_african_daisy>);
<recipetype:create:milling>.addRecipe("purple_african_daisy_milling", [<item:minecraft:purple_dye> * 2], <item:abundance:purple_african_daisy>);
<recipetype:create:crushing>.addRecipe("yellow_african_daisy_crushing", [<item:minecraft:yellow_dye> * 2], <item:abundance:yellow_african_daisy>);
<recipetype:create:milling>.addRecipe("yellow_african_daisy_milling", [<item:minecraft:yellow_dye> * 2], <item:abundance:yellow_african_daisy>);

<recipetype:create:crushing>.addRecipe("blue_lily_crushing", [<item:minecraft:blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:blue_lily>);
<recipetype:create:milling>.addRecipe("blue_lily_milling", [<item:minecraft:blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:blue_lily>);
<recipetype:create:crushing>.addRecipe("light_gray_lily_crushing", [<item:minecraft:light_gray_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_gray_lily>);
<recipetype:create:milling>.addRecipe("light_gray_lily_milling", [<item:minecraft:light_gray_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_gray_lily>);
<recipetype:create:crushing>.addRecipe("cyan_lily_crushing", [<item:minecraft:cyan_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:cyan_lily>);
<recipetype:create:milling>.addRecipe("cyan_lily_milling", [<item:minecraft:cyan_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:cyan_lily>);
<recipetype:create:crushing>.addRecipe("light_blue_lily_crushing", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_blue_lily>);
<recipetype:create:milling>.addRecipe("light_blue_lily_milling", [<item:minecraft:light_blue_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:light_blue_lily>);
<recipetype:create:crushing>.addRecipe("magenta_lily_crushing", [<item:minecraft:magenta_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:magenta_lily>);
<recipetype:create:milling>.addRecipe("magenta_lily_milling", [<item:minecraft:magenta_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:magenta_lily>);
<recipetype:create:crushing>.addRecipe("pink_lily_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:pink_lily>);
<recipetype:create:milling>.addRecipe("pink_lily_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:pink_lily>);
<recipetype:create:crushing>.addRecipe("purple_lily_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:purple_lily>);
<recipetype:create:milling>.addRecipe("purple_lily_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:purple_lily>);
<recipetype:create:crushing>.addRecipe("white_lily_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:white_lily>);
<recipetype:create:milling>.addRecipe("white_lily_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:green_dye> % 10], <item:bayou_blues:white_lily>);

<recipetype:create:crushing>.addRecipe("cartwheel_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:environmental:cartwheel>);
<recipetype:create:milling>.addRecipe("cartwheel_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:yellow_dye> % 20], <item:environmental:cartwheel>);
<recipetype:create:crushing>.addRecipe("bluebell_crushing", [<item:minecraft:blue_dye> * 2, <item:minecraft:light_blue_dye> % 10], <item:environmental:bluebell>);
<recipetype:create:milling>.addRecipe("bluebell_milling", [<item:minecraft:blue_dye> * 2, <item:minecraft:light_blue_dye> % 10], <item:environmental:bluebell>);
<recipetype:create:crushing>.addRecipe("violet_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:blue_dye> % 5], <item:environmental:violet>);
<recipetype:create:milling>.addRecipe("violet_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:blue_dye> % 5], <item:environmental:violet>);
<recipetype:create:crushing>.addRecipe("dianthus_crushing", [<item:minecraft:green_dye> * 2, <item:minecraft:lime_dye> % 25], <item:environmental:dianthus>);
<recipetype:create:milling>.addRecipe("dianthus_milling", [<item:minecraft:green_dye> * 2, <item:minecraft:lime_dye> % 25], <item:environmental:dianthus>);
<recipetype:create:crushing>.addRecipe("red_lotus_flower_crushing", [<item:minecraft:red_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:red_lotus_flower>);
<recipetype:create:milling>.addRecipe("red_lotus_flower_milling", [<item:minecraft:red_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:red_lotus_flower>);
<recipetype:create:crushing>.addRecipe("white_lotus_flower_crushing", [<item:minecraft:white_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:white_lotus_flower>);
<recipetype:create:milling>.addRecipe("white_lotus_flower_milling", [<item:minecraft:white_dye> * 2, <item:minecraft:orange_dye> % 5], <item:environmental:white_lotus_flower>);
<recipetype:create:crushing>.addRecipe("bird_of_paradise_crushing", [<item:minecraft:lime_dye>, <item:minecraft:red_dye> * 3 % 50, <item:minecraft:yellow_dye> * 3 % 50, <item:minecraft:blue_dye> * 3 % 50], <item:environmental:bird_of_paradise>);
<recipetype:create:milling>.addRecipe("bird_of_paradise_milling", [<item:minecraft:lime_dye>, <item:minecraft:red_dye> * 3 % 50, <item:minecraft:yellow_dye> * 3 % 50, <item:minecraft:blue_dye> * 3 % 50], <item:environmental:bird_of_paradise>);
<recipetype:create:crushing>.addRecipe("yellow_hibiscus_crushing", [<item:minecraft:yellow_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:yellow_hibiscus>);
<recipetype:create:milling>.addRecipe("yellow_hibiscus_milling", [<item:minecraft:yellow_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:yellow_hibiscus>);
<recipetype:create:crushing>.addRecipe("orange_hibiscus_crushing", [<item:minecraft:orange_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:orange_hibiscus>);
<recipetype:create:milling>.addRecipe("orange_hibiscus_milling", [<item:minecraft:orange_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:orange_hibiscus>);
<recipetype:create:crushing>.addRecipe("red_hibiscus_crushing", [<item:minecraft:red_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:red_hibiscus>);
<recipetype:create:milling>.addRecipe("red_hibiscus_milling", [<item:minecraft:red_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:red_hibiscus>);
<recipetype:create:crushing>.addRecipe("pink_hibiscus_crushing", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:pink_hibiscus>);
<recipetype:create:milling>.addRecipe("pink_hibiscus_milling", [<item:minecraft:pink_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:pink_hibiscus>);
<recipetype:create:crushing>.addRecipe("magenta_hibiscus_crushing", [<item:minecraft:magenta_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:magenta_hibiscus>);
<recipetype:create:milling>.addRecipe("magenta_hibiscus_milling", [<item:minecraft:magenta_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:magenta_hibiscus>);
<recipetype:create:crushing>.addRecipe("purple_hibiscus_crushing", [<item:minecraft:purple_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:purple_hibiscus>);
<recipetype:create:milling>.addRecipe("purple_hibiscus_milling", [<item:minecraft:purple_dye> * 2, <item:minecraft:lime_dye> % 5], <item:environmental:purple_hibiscus>);
<recipetype:create:crushing>.addRecipe("pink_delphinium_crushing", [<item:minecraft:pink_dye> * 3, <item:minecraft:pink_dye> * 2 % 25], <item:environmental:pink_delphinium>);
<recipetype:create:milling>.addRecipe("pink_delphinium_milling", [<item:minecraft:pink_dye> * 3, <item:minecraft:pink_dye> * 2 % 25], <item:environmental:pink_delphinium>);
<recipetype:create:crushing>.addRecipe("blue_delphinium_crushing", [<item:minecraft:blue_dye> * 3, <item:minecraft:blue_dye> * 2 % 25], <item:environmental:blue_delphinium>);
<recipetype:create:milling>.addRecipe("blue_delphinium_milling", [<item:minecraft:blue_dye> * 3, <item:minecraft:blue_dye> * 2 % 25], <item:environmental:blue_delphinium>);
<recipetype:create:crushing>.addRecipe("purple_delphinium_crushing", [<item:minecraft:purple_dye> * 3, <item:minecraft:purple_dye> * 2 % 25], <item:environmental:purple_delphinium>);
<recipetype:create:milling>.addRecipe("purple_delphinium_milling", [<item:minecraft:purple_dye> * 3, <item:minecraft:purple_dye> * 2 % 25], <item:environmental:purple_delphinium>);
<recipetype:create:crushing>.addRecipe("white_delphinium_crushing", [<item:minecraft:white_dye> * 3, <item:minecraft:white_dye> * 2 % 25], <item:environmental:white_delphinium>);
<recipetype:create:milling>.addRecipe("white_delphinium_milling", [<item:minecraft:white_dye> * 3, <item:minecraft:white_dye> * 2 % 25], <item:environmental:white_delphinium>);

<recipetype:create:milling>.addRecipe("basalt_iron_ore_milling", [<item:create:crushed_iron_ore>], <item:infernalexp:basalt_iron_ore>);
<recipetype:create:crushing>.addRecipe("basalt_iron_ore_crushing", [<item:create:crushed_iron_ore>, <item:create:crushed_iron_ore> * 2 % 30, <item:minecraft:basalt> % 12], <item:infernalexp:basalt_iron_ore>);

// Uninspirational Fluids =========================================================================
<recipetype:create:filling>.removeRecipe(<item:inspirations:honey_bucket>);
<recipetype:create:emptying>.removeRecipe(<fluid:inspirations:honey>);
<recipetype:create:emptying>.addRecipe("uninspirational_honey", <item:minecraft:bucket>, <fluid:create:honey> * 1000, <item:inspirations:honey_bucket>);

// Demugging ======================================================================================
craftingTable.removeRecipe(<item:frozenup:empty_mug>);
craftingTable.removeRecipe(<item:frozenup:mug_of_milk>);
craftingTable.removeRecipe(<item:frozenup:mug_of_chocolate_milk>);
craftingTable.removeRecipe(<item:frozenup:mug_of_truffle_hot_chocolate>);
JEI.hideItem(<item:frozenup:empty_mug>);
JEI.hideItem(<item:frozenup:mug_of_milk>);
JEI.hideItem(<item:frozenup:mug_of_chocolate_milk>);
JEI.hideItem(<item:frozenup:mug_of_truffle_hot_chocolate>);

// Schematic Removal ==============================================================================
craftingTable.removeRecipe(<item:create:schematicannon>);
craftingTable.removeRecipe(<item:create:schematic_table>);
craftingTable.removeRecipe(<item:create:empty_schematic>);
craftingTable.removeRecipe(<item:create:schematic_and_quill>);

// Endgame Removal ================================================================================
craftingTable.removeRecipe(<item:create:shadow_steel_casing>);
craftingTable.removeRecipe(<item:create:refined_radiance_casing>);
<recipetype:create:crushing>.removeRecipe(<item:create:powdered_obsidian>);
<recipetype:create:mixing>.removeRecipe(<item:create:chromatic_compound>);
craftingTable.removeRecipe(<item:create:wand_of_symmetry>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:create:extendo_grip>);

// Palette Removal ================================================================================
craftingTable.removeRecipe(<item:create:oak_window>);
craftingTable.removeRecipe(<item:create:spruce_window>);
craftingTable.removeRecipe(<item:create:birch_window>);
craftingTable.removeRecipe(<item:create:jungle_window>);
craftingTable.removeRecipe(<item:create:acacia_window>);
craftingTable.removeRecipe(<item:create:dark_oak_window>);
craftingTable.removeRecipe(<item:create:crimson_window>);
craftingTable.removeRecipe(<item:create:warped_window>);
craftingTable.removeRecipe(<item:create:oak_window_pane>);
craftingTable.removeRecipe(<item:create:spruce_window_pane>);
craftingTable.removeRecipe(<item:create:birch_window_pane>);
craftingTable.removeRecipe(<item:create:jungle_window_pane>);
craftingTable.removeRecipe(<item:create:acacia_window_pane>);
craftingTable.removeRecipe(<item:create:dark_oak_window_pane>);
craftingTable.removeRecipe(<item:create:crimson_window_pane>);
craftingTable.removeRecipe(<item:create:warped_window_pane>);

craftingTable.removeRecipe(<item:create:granite_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:granite_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:granite_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:granite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:granite_bricks_slab>);
craftingTable.removeRecipe(<item:create:granite_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_granite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_granite_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_granite_bricks_wall>);
craftingTable.removeRecipe(<item:create:granite_pillar>);
craftingTable.removeRecipe(<item:create:paved_granite_stairs>);
craftingTable.removeRecipe(<item:create:paved_granite_slab>);
craftingTable.removeRecipe(<item:create:paved_granite_wall>);

stoneCutter.removeRecipe(<item:create:granite_cobblestone>);
stoneCutter.removeRecipe(<item:create:granite_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:granite_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:granite_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:granite_bricks>);
stoneCutter.removeRecipe(<item:create:granite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:granite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:granite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_granite_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_granite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_granite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_granite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:granite_pillar>);
stoneCutter.removeRecipe(<item:create:paved_granite>);
stoneCutter.removeRecipe(<item:create:paved_granite_stairs>);
stoneCutter.removeRecipe(<item:create:paved_granite_slab>);
stoneCutter.removeRecipe(<item:create:paved_granite_wall>);
stoneCutter.removeRecipe(<item:create:layered_granite>);
stoneCutter.removeRecipe(<item:create:mossy_granite>);
stoneCutter.removeRecipe(<item:create:overgrown_granite>);

craftingTable.removeRecipe(<item:create:diorite_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:diorite_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:diorite_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:diorite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:diorite_bricks_slab>);
craftingTable.removeRecipe(<item:create:diorite_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_diorite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_diorite_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_diorite_bricks_wall>);
craftingTable.removeRecipe(<item:create:diorite_pillar>);
craftingTable.removeRecipe(<item:create:paved_diorite_stairs>);
craftingTable.removeRecipe(<item:create:paved_diorite_slab>);
craftingTable.removeRecipe(<item:create:paved_diorite_wall>);

stoneCutter.removeRecipe(<item:create:diorite_cobblestone>);
stoneCutter.removeRecipe(<item:create:diorite_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:diorite_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:diorite_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:diorite_bricks>);
stoneCutter.removeRecipe(<item:create:diorite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:diorite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:diorite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_diorite_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_diorite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_diorite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_diorite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:diorite_pillar>);
stoneCutter.removeRecipe(<item:create:paved_diorite>);
stoneCutter.removeRecipe(<item:create:paved_diorite_stairs>);
stoneCutter.removeRecipe(<item:create:paved_diorite_slab>);
stoneCutter.removeRecipe(<item:create:paved_diorite_wall>);
stoneCutter.removeRecipe(<item:create:layered_diorite>);
stoneCutter.removeRecipe(<item:create:mossy_diorite>);
stoneCutter.removeRecipe(<item:create:overgrown_diorite>);

craftingTable.removeRecipe(<item:create:andesite_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:andesite_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:andesite_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:andesite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:andesite_bricks_slab>);
craftingTable.removeRecipe(<item:create:andesite_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_andesite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_andesite_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_andesite_bricks_wall>);
craftingTable.removeRecipe(<item:create:andesite_pillar>);
craftingTable.removeRecipe(<item:create:paved_andesite_stairs>);
craftingTable.removeRecipe(<item:create:paved_andesite_slab>);
craftingTable.removeRecipe(<item:create:paved_andesite_wall>);

stoneCutter.removeRecipe(<item:create:andesite_cobblestone>);
stoneCutter.removeRecipe(<item:create:andesite_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:andesite_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:andesite_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:andesite_bricks>);
stoneCutter.removeRecipe(<item:create:andesite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:andesite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:andesite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_andesite_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_andesite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_andesite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_andesite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:andesite_pillar>);
stoneCutter.removeRecipe(<item:create:paved_andesite>);
stoneCutter.removeRecipe(<item:create:paved_andesite_stairs>);
stoneCutter.removeRecipe(<item:create:paved_andesite_slab>);
stoneCutter.removeRecipe(<item:create:paved_andesite_wall>);
stoneCutter.removeRecipe(<item:create:layered_andesite>);
stoneCutter.removeRecipe(<item:create:mossy_andesite>);
stoneCutter.removeRecipe(<item:create:overgrown_andesite>);

furnace.removeRecipe(<item:create:limestone>);
furnace.addRecipe("limesand_smelting", <item:quark:limestone>, <item:create:limesand>, 0.1, 200);
craftingTable.removeRecipe(<item:create:limestone_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:limestone_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:limestone_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_limestone>);
craftingTable.removeRecipe(<item:create:polished_limestone_stairs>);
craftingTable.removeRecipe(<item:create:polished_limestone_slab>);
craftingTable.removeRecipe(<item:create:polished_limestone_wall>);
craftingTable.removeRecipe(<item:create:limestone_bricks_stairs>);
craftingTable.removeRecipe(<item:create:limestone_bricks_slab>);
craftingTable.removeRecipe(<item:create:limestone_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_limestone_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_limestone_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_limestone_bricks_wall>);
craftingTable.removeRecipe(<item:create:limestone_pillar>);
craftingTable.removeRecipe(<item:create:paved_limestone_stairs>);
craftingTable.removeRecipe(<item:create:paved_limestone_slab>);
craftingTable.removeRecipe(<item:create:paved_limestone_wall>);

stoneCutter.removeRecipe(<item:create:limestone_cobblestone>);
stoneCutter.removeRecipe(<item:create:limestone_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:limestone_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:limestone_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_limestone>);
stoneCutter.removeRecipe(<item:create:polished_limestone_stairs>);
stoneCutter.removeRecipe(<item:create:polished_limestone_slab>);
stoneCutter.removeRecipe(<item:create:polished_limestone_wall>);
stoneCutter.removeRecipe(<item:create:limestone_bricks>);
stoneCutter.removeRecipe(<item:create:limestone_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:limestone_bricks_slab>);
stoneCutter.removeRecipe(<item:create:limestone_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_limestone_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_limestone_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_limestone_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_limestone_bricks_wall>);
stoneCutter.removeRecipe(<item:create:limestone_pillar>);
stoneCutter.removeRecipe(<item:create:paved_limestone>);
stoneCutter.removeRecipe(<item:create:paved_limestone_stairs>);
stoneCutter.removeRecipe(<item:create:paved_limestone_slab>);
stoneCutter.removeRecipe(<item:create:paved_limestone_wall>);
stoneCutter.removeRecipe(<item:create:layered_limestone>);
stoneCutter.removeRecipe(<item:create:chiseled_limestone>);
stoneCutter.removeRecipe(<item:create:mossy_limestone>);
stoneCutter.removeRecipe(<item:create:overgrown_limestone>);

<recipetype:create:splashing>.removeRecipe(<item:create:weathered_limestone>);
craftingTable.removeRecipe(<item:create:weathered_limestone_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:weathered_limestone_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:weathered_limestone_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_weathered_limestone>);
craftingTable.removeRecipe(<item:create:polished_weathered_limestone_stairs>);
craftingTable.removeRecipe(<item:create:polished_weathered_limestone_slab>);
craftingTable.removeRecipe(<item:create:polished_weathered_limestone_wall>);
craftingTable.removeRecipe(<item:create:weathered_limestone_bricks_stairs>);
craftingTable.removeRecipe(<item:create:weathered_limestone_bricks_slab>);
craftingTable.removeRecipe(<item:create:weathered_limestone_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_weathered_limestone_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_weathered_limestone_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_weathered_limestone_bricks_wall>);
craftingTable.removeRecipe(<item:create:weathered_limestone_pillar>);
craftingTable.removeRecipe(<item:create:paved_weathered_limestone_stairs>);
craftingTable.removeRecipe(<item:create:paved_weathered_limestone_slab>);
craftingTable.removeRecipe(<item:create:paved_weathered_limestone_wall>);

stoneCutter.removeRecipe(<item:create:weathered_limestone_cobblestone>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_weathered_limestone>);
stoneCutter.removeRecipe(<item:create:polished_weathered_limestone_stairs>);
stoneCutter.removeRecipe(<item:create:polished_weathered_limestone_slab>);
stoneCutter.removeRecipe(<item:create:polished_weathered_limestone_wall>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_bricks>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_bricks_slab>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_weathered_limestone_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_weathered_limestone_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_weathered_limestone_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_weathered_limestone_bricks_wall>);
stoneCutter.removeRecipe(<item:create:weathered_limestone_pillar>);
stoneCutter.removeRecipe(<item:create:paved_weathered_limestone>);
stoneCutter.removeRecipe(<item:create:paved_weathered_limestone_stairs>);
stoneCutter.removeRecipe(<item:create:paved_weathered_limestone_slab>);
stoneCutter.removeRecipe(<item:create:paved_weathered_limestone_wall>);
stoneCutter.removeRecipe(<item:create:layered_weathered_limestone>);
stoneCutter.removeRecipe(<item:create:chiseled_weathered_limestone>);
stoneCutter.removeRecipe(<item:create:mossy_weathered_limestone>);
stoneCutter.removeRecipe(<item:create:overgrown_weathered_limestone>);

furnace.removeRecipe(<item:create:dolomite>);
craftingTable.removeRecipe(<item:create:dolomite_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:dolomite_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:dolomite_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_dolomite>);
craftingTable.removeRecipe(<item:create:polished_dolomite_stairs>);
craftingTable.removeRecipe(<item:create:polished_dolomite_slab>);
craftingTable.removeRecipe(<item:create:polished_dolomite_wall>);
craftingTable.removeRecipe(<item:create:dolomite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:dolomite_bricks_slab>);
craftingTable.removeRecipe(<item:create:dolomite_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_dolomite_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_dolomite_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_dolomite_bricks_wall>);
craftingTable.removeRecipe(<item:create:dolomite_pillar>);
craftingTable.removeRecipe(<item:create:paved_dolomite_stairs>);
craftingTable.removeRecipe(<item:create:paved_dolomite_slab>);
craftingTable.removeRecipe(<item:create:paved_dolomite_wall>);

stoneCutter.removeRecipe(<item:create:dolomite_cobblestone>);
stoneCutter.removeRecipe(<item:create:dolomite_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:dolomite_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:dolomite_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_dolomite>);
stoneCutter.removeRecipe(<item:create:polished_dolomite_stairs>);
stoneCutter.removeRecipe(<item:create:polished_dolomite_slab>);
stoneCutter.removeRecipe(<item:create:polished_dolomite_wall>);
stoneCutter.removeRecipe(<item:create:dolomite_bricks>);
stoneCutter.removeRecipe(<item:create:dolomite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:dolomite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:dolomite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_dolomite_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_dolomite_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_dolomite_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_dolomite_bricks_wall>);
stoneCutter.removeRecipe(<item:create:dolomite_pillar>);
stoneCutter.removeRecipe(<item:create:paved_dolomite>);
stoneCutter.removeRecipe(<item:create:paved_dolomite_stairs>);
stoneCutter.removeRecipe(<item:create:paved_dolomite_slab>);
stoneCutter.removeRecipe(<item:create:paved_dolomite_wall>);
stoneCutter.removeRecipe(<item:create:layered_dolomite>);
stoneCutter.removeRecipe(<item:create:chiseled_dolomite>);
stoneCutter.removeRecipe(<item:create:mossy_dolomite>);
stoneCutter.removeRecipe(<item:create:overgrown_dolomite>);

furnace.removeRecipe(<item:create:gabbro>);
craftingTable.removeRecipe(<item:create:gabbro_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:gabbro_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:gabbro_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_gabbro>);
craftingTable.removeRecipe(<item:create:polished_gabbro_stairs>);
craftingTable.removeRecipe(<item:create:polished_gabbro_slab>);
craftingTable.removeRecipe(<item:create:polished_gabbro_wall>);
craftingTable.removeRecipe(<item:create:gabbro_bricks_stairs>);
craftingTable.removeRecipe(<item:create:gabbro_bricks_slab>);
craftingTable.removeRecipe(<item:create:gabbro_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_gabbro_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_gabbro_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_gabbro_bricks_wall>);
craftingTable.removeRecipe(<item:create:gabbro_pillar>);
craftingTable.removeRecipe(<item:create:paved_gabbro_stairs>);
craftingTable.removeRecipe(<item:create:paved_gabbro_slab>);
craftingTable.removeRecipe(<item:create:paved_gabbro_wall>);

stoneCutter.removeRecipe(<item:create:gabbro_cobblestone>);
stoneCutter.removeRecipe(<item:create:gabbro_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:gabbro_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:gabbro_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_gabbro>);
stoneCutter.removeRecipe(<item:create:polished_gabbro_stairs>);
stoneCutter.removeRecipe(<item:create:polished_gabbro_slab>);
stoneCutter.removeRecipe(<item:create:polished_gabbro_wall>);
stoneCutter.removeRecipe(<item:create:gabbro_bricks>);
stoneCutter.removeRecipe(<item:create:gabbro_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:gabbro_bricks_slab>);
stoneCutter.removeRecipe(<item:create:gabbro_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_gabbro_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_gabbro_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_gabbro_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_gabbro_bricks_wall>);
stoneCutter.removeRecipe(<item:create:gabbro_pillar>);
stoneCutter.removeRecipe(<item:create:paved_gabbro>);
stoneCutter.removeRecipe(<item:create:paved_gabbro_stairs>);
stoneCutter.removeRecipe(<item:create:paved_gabbro_slab>);
stoneCutter.removeRecipe(<item:create:paved_gabbro_wall>);
stoneCutter.removeRecipe(<item:create:layered_gabbro>);
stoneCutter.removeRecipe(<item:create:chiseled_gabbro>);
stoneCutter.removeRecipe(<item:create:mossy_gabbro>);
stoneCutter.removeRecipe(<item:create:overgrown_gabbro>);

furnace.removeRecipe(<item:create:scoria>);
craftingTable.removeRecipe(<item:create:scoria_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:scoria_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:scoria_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_scoria>);
craftingTable.removeRecipe(<item:create:polished_scoria_stairs>);
craftingTable.removeRecipe(<item:create:polished_scoria_slab>);
craftingTable.removeRecipe(<item:create:polished_scoria_wall>);
craftingTable.removeRecipe(<item:create:scoria_bricks_stairs>);
craftingTable.removeRecipe(<item:create:scoria_bricks_slab>);
craftingTable.removeRecipe(<item:create:scoria_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_scoria_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_scoria_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_scoria_bricks_wall>);
craftingTable.removeRecipe(<item:create:scoria_pillar>);
craftingTable.removeRecipe(<item:create:paved_scoria_stairs>);
craftingTable.removeRecipe(<item:create:paved_scoria_slab>);
craftingTable.removeRecipe(<item:create:paved_scoria_wall>);

stoneCutter.removeRecipe(<item:create:scoria_cobblestone>);
stoneCutter.removeRecipe(<item:create:scoria_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:scoria_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:scoria_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_scoria>);
stoneCutter.removeRecipe(<item:create:polished_scoria_stairs>);
stoneCutter.removeRecipe(<item:create:polished_scoria_slab>);
stoneCutter.removeRecipe(<item:create:polished_scoria_wall>);
stoneCutter.removeRecipe(<item:create:scoria_bricks>);
stoneCutter.removeRecipe(<item:create:scoria_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:scoria_bricks_slab>);
stoneCutter.removeRecipe(<item:create:scoria_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_scoria_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_scoria_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_scoria_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_scoria_bricks_wall>);
stoneCutter.removeRecipe(<item:create:scoria_pillar>);
stoneCutter.removeRecipe(<item:create:paved_scoria>);
stoneCutter.removeRecipe(<item:create:paved_scoria_stairs>);
stoneCutter.removeRecipe(<item:create:paved_scoria_slab>);
stoneCutter.removeRecipe(<item:create:paved_scoria_wall>);
stoneCutter.removeRecipe(<item:create:layered_scoria>);
stoneCutter.removeRecipe(<item:create:chiseled_scoria>);
stoneCutter.removeRecipe(<item:create:mossy_scoria>);
stoneCutter.removeRecipe(<item:create:overgrown_scoria>);

craftingTable.removeRecipe(<item:create:dark_scoria>);
craftingTable.removeRecipe(<item:create:dark_scoria_cobblestone_stairs>);
craftingTable.removeRecipe(<item:create:dark_scoria_cobblestone_slab>);
craftingTable.removeRecipe(<item:create:dark_scoria_cobblestone_wall>);
craftingTable.removeRecipe(<item:create:polished_dark_scoria>);
craftingTable.removeRecipe(<item:create:polished_dark_scoria_stairs>);
craftingTable.removeRecipe(<item:create:polished_dark_scoria_slab>);
craftingTable.removeRecipe(<item:create:polished_dark_scoria_wall>);
craftingTable.removeRecipe(<item:create:dark_scoria_bricks_stairs>);
craftingTable.removeRecipe(<item:create:dark_scoria_bricks_slab>);
craftingTable.removeRecipe(<item:create:dark_scoria_bricks_wall>);
craftingTable.removeRecipe(<item:create:fancy_dark_scoria_bricks_stairs>);
craftingTable.removeRecipe(<item:create:fancy_dark_scoria_bricks_slab>);
craftingTable.removeRecipe(<item:create:fancy_dark_scoria_bricks_wall>);
craftingTable.removeRecipe(<item:create:dark_scoria_pillar>);
craftingTable.removeRecipe(<item:create:paved_dark_scoria_stairs>);
craftingTable.removeRecipe(<item:create:paved_dark_scoria_slab>);
craftingTable.removeRecipe(<item:create:paved_dark_scoria_wall>);

stoneCutter.removeRecipe(<item:create:dark_scoria_cobblestone>);
stoneCutter.removeRecipe(<item:create:dark_scoria_cobblestone_stairs>);
stoneCutter.removeRecipe(<item:create:dark_scoria_cobblestone_slab>);
stoneCutter.removeRecipe(<item:create:dark_scoria_cobblestone_wall>);
stoneCutter.removeRecipe(<item:create:polished_dark_scoria>);
stoneCutter.removeRecipe(<item:create:polished_dark_scoria_stairs>);
stoneCutter.removeRecipe(<item:create:polished_dark_scoria_slab>);
stoneCutter.removeRecipe(<item:create:polished_dark_scoria_wall>);
stoneCutter.removeRecipe(<item:create:dark_scoria_bricks>);
stoneCutter.removeRecipe(<item:create:dark_scoria_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:dark_scoria_bricks_slab>);
stoneCutter.removeRecipe(<item:create:dark_scoria_bricks_wall>);
stoneCutter.removeRecipe(<item:create:fancy_dark_scoria_bricks>);
stoneCutter.removeRecipe(<item:create:fancy_dark_scoria_bricks_stairs>);
stoneCutter.removeRecipe(<item:create:fancy_dark_scoria_bricks_slab>);
stoneCutter.removeRecipe(<item:create:fancy_dark_scoria_bricks_wall>);
stoneCutter.removeRecipe(<item:create:dark_scoria_pillar>);
stoneCutter.removeRecipe(<item:create:paved_dark_scoria>);
stoneCutter.removeRecipe(<item:create:paved_dark_scoria_stairs>);
stoneCutter.removeRecipe(<item:create:paved_dark_scoria_slab>);
stoneCutter.removeRecipe(<item:create:paved_dark_scoria_wall>);
stoneCutter.removeRecipe(<item:create:layered_dark_scoria>);
stoneCutter.removeRecipe(<item:create:chiseled_dark_scoria>);
stoneCutter.removeRecipe(<item:create:mossy_dark_scoria>);
stoneCutter.removeRecipe(<item:create:overgrown_dark_scoria>);

// Overlap Removal ================================================================================
craftingTable.removeRecipe(<item:supplementaries:turn_table>);
craftingTable.removeRecipe(<item:supplementaries:piston_launcher>);
craftingTable.removeRecipe(<item:structuredcrafting:structured_crafter>);
JEI.hideItem(<item:supplementaries:turn_table>);
JEI.hideItem(<item:supplementaries:piston_launcher>);
JEI.hideItem(<item:structuredcrafting:structured_crafter>);
craftingTable.removeRecipe(<item:quark:white_stool>);
craftingTable.addShapeless("white_stool_convert", <item:create:white_seat>, [<item:quark:white_stool>]);
JEI.addInfo(<item:quark:white_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:orange_stool>);
craftingTable.addShapeless("orange_stool_convert", <item:create:orange_seat>, [<item:quark:orange_stool>]);
JEI.addInfo(<item:quark:orange_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:magenta_stool>);
craftingTable.addShapeless("magenta_stool_convert", <item:create:magenta_seat>, [<item:quark:magenta_stool>]);
JEI.addInfo(<item:quark:magenta_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:light_blue_stool>);
craftingTable.addShapeless("light_blue_stool_convert", <item:create:light_blue_seat>, [<item:quark:light_blue_stool>]);
JEI.addInfo(<item:quark:light_blue_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:yellow_stool>);
craftingTable.addShapeless("yellow_stool_convert", <item:create:yellow_seat>, [<item:quark:yellow_stool>]);
JEI.addInfo(<item:quark:yellow_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:lime_stool>);
craftingTable.addShapeless("lime_stool_convert", <item:create:lime_seat>, [<item:quark:lime_stool>]);
JEI.addInfo(<item:quark:lime_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:pink_stool>);
craftingTable.addShapeless("pink_stool_convert", <item:create:pink_seat>, [<item:quark:pink_stool>]);
JEI.addInfo(<item:quark:pink_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:gray_stool>);
craftingTable.addShapeless("gray_stool_convert", <item:create:gray_seat>, [<item:quark:gray_stool>]);
JEI.addInfo(<item:quark:gray_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:light_gray_stool>);
craftingTable.addShapeless("light_gray_stool_convert", <item:create:light_gray_seat>, [<item:quark:light_gray_stool>]);
JEI.addInfo(<item:quark:light_gray_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:cyan_stool>);
craftingTable.addShapeless("cyan_stool_convert", <item:create:cyan_seat>, [<item:quark:cyan_stool>]);
JEI.addInfo(<item:quark:cyan_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:purple_stool>);
craftingTable.addShapeless("purple_stool_convert", <item:create:purple_seat>, [<item:quark:purple_stool>]);
JEI.addInfo(<item:quark:purple_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:blue_stool>);
craftingTable.addShapeless("blue_stool_convert", <item:create:blue_seat>, [<item:quark:blue_stool>]);
JEI.addInfo(<item:quark:blue_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:brown_stool>);
craftingTable.addShapeless("brown_stool_convert", <item:create:brown_seat>, [<item:quark:brown_stool>]);
JEI.addInfo(<item:quark:brown_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:green_stool>);
craftingTable.addShapeless("green_stool_convert", <item:create:green_seat>, [<item:quark:green_stool>]);
JEI.addInfo(<item:quark:green_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:red_stool>);
craftingTable.addShapeless("red_stool_convert", <item:create:red_seat>, [<item:quark:red_stool>]);
JEI.addInfo(<item:quark:red_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:quark:black_stool>);
craftingTable.addShapeless("black_stool_convert", <item:create:black_seat>, [<item:quark:black_stool>]);
JEI.addInfo(<item:quark:black_stool>, ["This item cannot be crafted. If you already have one, it can be crafted into a seat, which works in the same way."]);
craftingTable.removeRecipe(<item:farmersdelight:wheat_dough>);
JEI.hideItem(<item:farmersdelight:wheat_dough>);
furnace.removeByName("farmersdelight:bread_from_smelting");
smoker.removeByName("farmersdelight:bread_from_smoking");

// Tagging ========================================================================================
var tag = <tag:items:crucial:categories/building_blocks>;
tag.add(<item:create:copper_block>);
tag.add(<item:create:copper_shingles>);
tag.add(<item:create:copper_tiles>);
tag.add(<item:create:brass_block>);
tag.add(<item:create:tiled_glass>);
tag.add(<item:create:framed_glass>);
tag.add(<item:create:horizontal_framed_glass>);
tag.add(<item:create:vertical_framed_glass>);
tag.add(<item:create:ornate_iron_window>);
tag.add(<item:create:limestone_cobblestone>);
tag.add(<item:create:scoria_cobblestone>);

tag = <tag:items:crucial:categories/decoration_blocks>;
tag.add(<item:create:tiled_glass_pane>);
tag.add(<item:create:framed_glass_pane>);
tag.add(<item:create:horizontal_framed_glass_pane>);
tag.add(<item:create:vertical_framed_glass_pane>);
tag.add(<item:create:ornate_iron_window_pane>);
tag.add(<item:create:white_seat>);
tag.add(<item:create:orange_seat>);
tag.add(<item:create:magenta_seat>);
tag.add(<item:create:light_blue_seat>);
tag.add(<item:create:yellow_seat>);
tag.add(<item:create:lime_seat>);
tag.add(<item:create:pink_seat>);
tag.add(<item:create:gray_seat>);
tag.add(<item:create:light_gray_seat>);
tag.add(<item:create:cyan_seat>);
tag.add(<item:create:purple_seat>);
tag.add(<item:create:blue_seat>);
tag.add(<item:create:brown_seat>);
tag.add(<item:create:green_seat>);
tag.add(<item:create:red_seat>);
tag.add(<item:create:black_seat>);

tag = <tag:items:crucial:categories/equipment>;
tag.add(<item:create:goggles>);
tag.add(<item:create:wrench>);

tag = <tag:items:crucial:categories/food_items>;
tag.add(<item:create:sweet_roll>);
tag.add(<item:create:chocolate_glazed_berries>);
tag.add(<item:create:builders_tea>);

tag = <tag:items:crucial:categories/useful_items>;
tag.add(<item:create:goggles>);
tag.add(<item:create:super_glue>);
tag.add(<item:create:wrench>);
#snip end
#snip end

#snip end
