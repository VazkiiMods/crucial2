var _string = <item:minecraft:string>;
var air = <item:minecraft:air>;
var alex_drops = <tag:items:crucial:alex_drops>;
var animal_dictionary = <item:alexsmobs:animal_dictionary>;
var aspen_sapling = <item:atmospheric:aspen_sapling>;
var banana = <item:neapolitan:banana>;
var banana_bunch = <item:neapolitan:banana_bunch>;
var birch_sapling = <item:minecraft:birch_sapling>;
var blaze_powder = <item:minecraft:blaze_powder>;
var bone_block = <item:minecraft:bone_block>;
var boof_block = <item:endergetic:boof_block>; 
var booflo_hide = <item:endergetic:booflo_hide>;
var book = <item:minecraft:book>;
var brick = <tag:items:forge:ingots/brick>;
var candelabra = <item:supplementaries:candelabra>;
var candles = <tag:items:buzzier_bees:candles>;
var canvas = <item:farmersdelight:canvas>;
var charcoal = <item:minecraft:charcoal>;
var charcoal_block = <item:architects_palette:charcoal_block>;
var chiseled_coal_ore_bricks = <item:architects_palette:chiseled_coal_ore_bricks>;
var chiseled_diamond_ore_bricks = <item:architects_palette:chiseled_diamond_ore_bricks>;
var chiseled_emerald_ore_bricks = <item:architects_palette:chiseled_emerald_ore_bricks>;
var chiseled_gold_ore_bricks = <item:architects_palette:chiseled_gold_ore_bricks>;
var chiseled_iron_ore_bricks = <item:architects_palette:chiseled_iron_ore_bricks>;
var chiseled_lapis_ore_bricks = <item:architects_palette:chiseled_lapis_ore_bricks>;
var chiseled_redstone_ore_bricks = <item:architects_palette:chiseled_redstone_ore_bricks>;
var chiseled_stone_bricks = <item:minecraft:chiseled_stone_bricks>;
var clay = <item:minecraft:clay>;
var clay_ball = <item:minecraft:clay_ball>;
var coal = <item:minecraft:coal>;
var cod = <item:minecraft:cod>;
var cod_log = <item:architects_palette:cod_log>;
var crafter = <item:structuredcrafting:structured_crafter>;
var crafting_table = <item:minecraft:crafting_table>;
var diamond = <tag:items:forge:gems/diamond>;
var emerald = <tag:items:forge:gems/emerald>;
var ender_eye = <item:minecraft:ender_eye>;
var ender_pearl = <item:minecraft:ender_pearl>;
var glass_item_frame = <item:quark:glass_item_frame>;
var globe = <item:supplementaries:globe>;
var globe_pattern = <item:minecraft:globe_banner_pattern>;
var glowing_glass_item_frame = <item:quark:glowing_glass_item_frame>;
var glowing_ink_sac = <item:upgrade_aquatic:glowing_ink_sac>;
var gold_ingot = <tag:items:forge:ingots/gold>;
var grimwood_sapling = <item:atmospheric:grimwood_sapling>;
var honeycomb = <item:minecraft:honeycomb>;
var ice_bricks = <item:environmental:ice_bricks>;
var iron_ingot = <tag:items:forge:ingots/iron>;
var koi = <item:environmental:koi>;
var koi_barrel = <item:fish_in_planks:koi_barrel>;
var kousa_sapling = <item:atmospheric:kousa_sapling>;
var lantern = <item:minecraft:lantern>;
var lapis = <tag:items:forge:gems/lapis>;
var leather = <item:minecraft:leather>;
var logs = <tag:items:minecraft:logs>;
var mimicream = <item:alexsmobs:mimicream>;
var nether_star = <item:minecraft:nether_star>;
var nether_wart = <item:minecraft:nether_wart>;
var oak_sapling = <item:minecraft:oak_sapling>;
var ochre_kelp = <item:upgrade_aquatic:ochre_kelp>;
var organic_compost = <item:farmersdelight:organic_compost>;
var packed_ice = <item:minecraft:packed_ice>;
var paper = <item:minecraft:paper>;
var paraglider = <item:paraglider:paraglider>;
var pipe = <item:quark:pipe>;
var piston = <item:minecraft:piston>;
var piston_launcher = <item:supplementaries:piston_launcher>;
var planter = <item:supplementaries:planter>;
var polar_kelp = <item:upgrade_aquatic:polar_kelp>;
var polished_packed_ice = <item:architects_palette:polished_packed_ice>;
var potato = <item:minecraft:potato>;
var prismarine_crystals = <item:minecraft:prismarine_crystals>;
var raw_gold = <item:iron_and_gold:raw_gold>;
var raw_iron = <item:iron_and_gold:raw_iron>;
var redstone = <tag:items:forge:dusts/redstone>;
var sack = <item:supplementaries:sack>;
var salmon = <item:minecraft:salmon>;
var salmon_log = <item:architects_palette:salmon_log>;
var soul_lantern = <item:minecraft:soul_lantern>;
var spruce_sapling = <item:minecraft:spruce_sapling>;
var spyglass = <item:farsight_spyglasses:spyglass>;
var thorny_kelp = <item:upgrade_aquatic:thorny_kelp>;
var tongue_kelp = <item:upgrade_aquatic:tongue_kelp>;
var wicks = <tag:items:buzzier_bees:candle_wick>;
var yak_hair = <item:environmental:yak_hair>;

// Remove specific recipes
craftingTable.removeByName("minecraft:lead");
craftingTable.removeByName("minecraft:painting");
craftingTable.removeByName("minecraft:scaffolding");
craftingTable.removeByName("alexsmobs:sopa_de_macaco");
craftingTable.removeByName("farmersdelight:rope");

// Koi in Barrel missing recipe from the mod
craftingTable.addShaped("koi_barrel_fix", 
		koi_barrel,  
		[[koi, koi, koi],
		 [koi, koi, koi],
		 [koi, koi, koi]]);

// Eye of Ender Needs Four Elements
#snip modloaded caverns_and_chasms
craftingTable.removeRecipe(ender_eye);
craftingTable.addShapeless("cool_ender_eye", 
		ender_eye, 
		[ender_pearl, blaze_powder, prismarine_crystals, emerald, honeycomb]);
#snip end

// Post-end Structured Crafter
craftingTable.removeRecipe(crafter);
craftingTable.addShaped("post_end_crafter", 
		crafter,  
		[[piston, pipe, piston],
		 [booflo_hide, crafting_table, booflo_hide],
		 [piston, pipe, piston]]);

// Canvas for Sack
craftingTable.removeRecipe(sack);
craftingTable.addShaped("canvas_sack", 
		sack, 
		[[wicks, canvas, wicks],
		 [canvas, air, canvas],
		 [canvas, canvas, canvas]]);

// Planter with Organic Soil
craftingTable.removeRecipe(planter);
craftingTable.addShaped("organic_planter", 
		planter, 
		[[brick, air, brick],
		 [brick, organic_compost, brick],
		 [brick, brick, brick]]);

// Boof Spring Launcher
craftingTable.removeRecipe(piston_launcher);
craftingTable.addShaped("boof_launcher", 
		piston_launcher, 
		[[iron_ingot, piston, iron_ingot],
		 [iron_ingot, boof_block, iron_ingot],
		 [iron_ingot, iron_ingot, iron_ingot]]);

// Atmospheric Trees Recipes
craftingTable.addShapeless("kousa", kousa_sapling, [mimicream, oak_sapling]);
craftingTable.addShapeless("aspen", aspen_sapling, [mimicream, birch_sapling]);
craftingTable.addShapeless("grimwood", grimwood_sapling, [mimicream, spruce_sapling]);

// Glowing Glass Item Frame
craftingTable.removeRecipe(glowing_glass_item_frame);
craftingTable.addShapeless("glowink_to_frame", glowing_glass_item_frame, [glass_item_frame, glowing_ink_sac]);

// Banana
craftingTable.addShapeless("banana_but_not_a_pain", banana * 2, [banana_bunch]);

// Make kelp types accessible
villagerTrades.addWanderingTrade(1, 5, ochre_kelp, 12, 0);
villagerTrades.addWanderingTrade(1, 5, polar_kelp, 12, 0);
villagerTrades.addWanderingTrade(1, 5, thorny_kelp, 12, 0);
villagerTrades.addWanderingTrade(1, 5, tongue_kelp, 12, 0);
craftingTable.addShapeless("ochre_mimic", ochre_kelp, [mimicream, polar_kelp]);
craftingTable.addShapeless("polar_mimic", polar_kelp, [mimicream, thorny_kelp]);
craftingTable.addShapeless("thorny_mimic", thorny_kelp, [mimicream, tongue_kelp]);
craftingTable.addShapeless("tongue_mimic", tongue_kelp, [mimicream, ochre_kelp]);

// Any item for Animal Dictionary
craftingTable.removeRecipe(animal_dictionary);
craftingTable.addShapeless("animal_dictionary_any", 
		animal_dictionary, 
		[book, alex_drops]);

// Clay Reversion
craftingTable.addShapeless("clay_reversion", 
		clay_ball * 4, 
		[clay]);

// Globe to Globe Pattern
craftingTable.addShapeless("globe_pattern", 
		globe_pattern, 
		[paper, globe]);

// lol
craftingTable.addShapeless("tater", 
		<item:skinnedlanterns:tiny_potato_lantern_block>,
		[lantern, potato, nether_star, clay_ball]);

craftingTable.addShapeless("tater_soul", 
		<item:skinnedlanterns:tiny_potato_soul_lantern_block>,
		[soul_lantern, potato, nether_star, clay_ball]);

// Candelabra Candles
craftingTable.removeRecipe(candelabra);
craftingTable.addShaped("candelabra_candles", 
		candelabra, 
		[[candles, candles, candles],
		 [gold_ingot, gold_ingot, gold_ingot],
		 [air, gold_ingot, air]]);

// Recycle Paraglider
craftingTable.addShapeless("recycle_paraglider", canvas * 4, [paraglider]);

// Spyglass
craftingTable.removeRecipe(spyglass);
craftingTable.addShaped("spyglass_crystals", 
		spyglass, 
		[[air, gold_ingot, prismarine_crystals],
		 [gold_ingot, prismarine_crystals, gold_ingot],
		 [leather, gold_ingot, air]]);

// Better recipes for Chiseled Ore Bricks
stoneCutter.removeRecipe(chiseled_coal_ore_bricks);
stoneCutter.removeRecipe(chiseled_lapis_ore_bricks);
stoneCutter.removeRecipe(chiseled_redstone_ore_bricks);
stoneCutter.removeRecipe(chiseled_iron_ore_bricks);
stoneCutter.removeRecipe(chiseled_gold_ore_bricks);
stoneCutter.removeRecipe(chiseled_emerald_ore_bricks);
stoneCutter.removeRecipe(chiseled_diamond_ore_bricks);

craftingTable.addShapeless("coal_bricks", chiseled_coal_ore_bricks, [chiseled_stone_bricks, coal]);
craftingTable.addShapeless("lapis_bricks", chiseled_lapis_ore_bricks, [chiseled_stone_bricks, lapis]);
craftingTable.addShapeless("redstone_bricks", chiseled_redstone_ore_bricks, [chiseled_stone_bricks, redstone]);
craftingTable.addShapeless("iron_bricks", chiseled_iron_ore_bricks, [chiseled_stone_bricks, raw_iron]);
craftingTable.addShapeless("gold_bricks", chiseled_gold_ore_bricks, [chiseled_stone_bricks, raw_gold]);
craftingTable.addShapeless("emerald_bricks", chiseled_emerald_ore_bricks, [chiseled_stone_bricks, emerald]);
craftingTable.addShapeless("diamond_bricks", chiseled_diamond_ore_bricks, [chiseled_stone_bricks, diamond]);

// Packed Ice Bricks
craftingTable.removeRecipe(ice_bricks);
craftingTable.addShaped("packed_ice_bricks", 
		ice_bricks * 4, 
		[[polished_packed_ice, polished_packed_ice],
		 [polished_packed_ice, polished_packed_ice]]);

// Charcoal Block -> Charred Log
craftingTable.removeRecipe(charcoal_block);
craftingTable.addShaped("charred_log", 
		charcoal_block, 
		[[charcoal], [logs], [charcoal]]);

// Salmon and Cod Cuts
craftingTable.addShaped("salmon_cut", 
		salmon_log * 4, 
		[[salmon, salmon, salmon], 
		[salmon, bone_block, salmon], 
		[salmon, salmon, salmon]]);

craftingTable.addShaped("cod_cut", // crl
		cod_log * 4, 
		[[cod, cod, cod], 
		[cod, bone_block, cod], 
		[cod, cod, cod]]);