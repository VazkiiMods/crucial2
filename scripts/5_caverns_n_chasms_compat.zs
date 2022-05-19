#snip modnotloaded caverns_and_chasms
import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function c(m as IItemStack, s as string) as void {
	JEI.addInfo(m, [s]);	
}

println("Chaverns & Chasms detected. Loading C&C Compat!");

// INTEGRATION ======================

var blaze_powder = <item:minecraft:blaze_powder>;
var cc_cobblebrick = <item:caverns_and_chasms:cobblestone_bricks>;
var cc_dirtbrick = <item:caverns_and_chasms:dirt_bricks>;
var cc_mossycobblebrick = <item:caverns_and_chasms:mossy_cobblestone_bricks>;
var chest = <tag:items:forge:chests/wooden>;
var cobble = <item:minecraft:cobblestone>;
var crate = <item:quark:crate>;
var dirt = <item:minecraft:dirt>;
var emerald = <item:minecraft:emerald>;
var ender_eye = <item:minecraft:ender_eye>;
var ender_pearl = <item:minecraft:ender_pearl>;
var honeycomb = <item:minecraft:honeycomb>;
var planks = <tag:items:minecraft:planks>;
var prismarine_crystals = <item:minecraft:prismarine_crystals>;
var silver = <tag:items:forge:ingots/silver>;
var sugilite = <item:caverns_and_chasms:sugilite>;
var quark_cobblebrick = <item:quark:cobblestone_bricks>;
var quark_dirtbrick = <item:quark:dirt_bricks>;
var quark_mossycobblebrick = <item:quark:mossy_cobblestone_bricks>;

# Remove Overlapping Content
craftingTable.removeRecipe(<item:caverns_and_chasms:golden_bars>);
craftingTable.removeRecipe(<item:caverns_and_chasms:golden_lantern>);

# Edit Overlapping Content
craftingTable.removeRecipe(cc_cobblebrick);
craftingTable.addShaped("cc_cobblebrick_compat", 
		cc_cobblebrick * 4,  
		[[quark_cobblebrick, quark_cobblebrick],
		 [quark_cobblebrick, quark_cobblebrick]]);
craftingTable.removeRecipe(quark_dirtbrick);
craftingTable.addShaped("quark_dirtbrick_compat", 
		quark_dirtbrick * 4,  
		[[dirt, dirt],
		 [dirt, dirt]]);
craftingTable.removeRecipe(cc_dirtbrick);
craftingTable.addShaped("cc_dirtbrick_compat", 
		cc_dirtbrick * 4,  
		[[quark_dirtbrick, quark_dirtbrick],
		 [quark_dirtbrick, quark_dirtbrick]]);
craftingTable.removeByName("caverns_and_chasms:cobblestone/mossy_cobblestone_bricks/mossy_cobblestone_bricks");
craftingTable.addShaped("cc_mossycobblebrick_compat", 
		cc_mossycobblebrick * 4,  
		[[quark_mossycobblebrick, quark_mossycobblebrick],
		 [quark_mossycobblebrick, quark_mossycobblebrick]]);

# Change Deco. Blocks Rocky Dirt to be like C&C Rocky Dirt
craftingTable.removeRecipe(<item:caverns_and_chasms:rocky_dirt>);
craftingTable.removeByName("decorative_blocks:dirt_from_rocky_dirt");
craftingTable.removeByName("decorative_blocks:rocky_dirt");
craftingTable.addShaped("rockier_dirt",
		<item:decorative_blocks:rocky_dirt> * 4,
		[[dirt, cobble],
		 [cobble, dirt]]);

# Crate uses Silver
craftingTable.removeRecipe(crate);
craftingTable.addShaped("silver_crate", 
		crate,  
		[[silver, planks, silver],
		 [planks, chest, planks],
		 [silver, planks, silver]]);

# Ender Eye has EVEN MORE STUFF
craftingTable.removeRecipe(ender_eye);
craftingTable.addShapeless("cool_ender_eye", 
		ender_eye, 
		[ender_pearl, blaze_powder, prismarine_crystals, emerald, honeycomb, sugilite]);


// 1.17 Raw Ores =============

craftingTable.addShaped("raw_silver_compact", <item:contenttweaker:raw_silver_block>, [[<item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>], [<item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>], [<item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>, <item:contenttweaker:raw_silver>]]);
craftingTable.addShapeless("raw_silver_uncompact", <item:contenttweaker:raw_silver> * 9, [<item:contenttweaker:raw_silver_block>]);
JEI.addInfo(<item:contenttweaker:raw_silver>, ["Drops from Silver Ore when mined without Silk Touch. Using Fortune increases the amount dropped."]);

furnace.addRecipe("raw_silver_smelting", <item:caverns_and_chasms:silver_ingot>, <item:contenttweaker:raw_silver>, 0.1, 200);
blastFurnace.addRecipe("raw_silver_blasting", <item:caverns_and_chasms:silver_ingot>, <item:contenttweaker:raw_silver>, 0.1, 100);

// TAGS ======================

var tag = <tag:items:crucial:categories/building_blocks>;
tag.add(<item:caverns_and_chasms:silver_block>);
tag.add(<item:caverns_and_chasms:necromium_block>);
tag.add(<item:caverns_and_chasms:rotten_flesh_block>);
tag.add(<item:caverns_and_chasms:sugilite_block>);
tag.add(<item:caverns_and_chasms:sugilite_bricks>);
tag.add(<item:caverns_and_chasms:sugilite_pillar>);
tag.add(<item:caverns_and_chasms:sugilite_lamp>);
tag.add(<item:caverns_and_chasms:lapis_bricks>);
tag.add(<item:caverns_and_chasms:lapis_pillar>);
tag.add(<item:caverns_and_chasms:lapis_lamp>);
tag.add(<item:caverns_and_chasms:dirt_bricks>);
tag.add(<item:caverns_and_chasms:dirt_tiles>);
tag.add(<item:caverns_and_chasms:cobblestone_tiles>);
tag.add(<item:caverns_and_chasms:mossy_cobblestone_tiles>);

tag = <tag:items:crucial:categories/decoration_blocks>;
tag.add(<item:caverns_and_chasms:silver_bars>);
tag.add(<item:caverns_and_chasms:cursed_lantern>);
tag.add(<item:caverns_and_chasms:cursed_torch>);

tag = <tag:items:crucial:categories/light_sources>;
tag.add(<item:caverns_and_chasms:lapis_lamp>);
tag.add(<item:caverns_and_chasms:sugilite_lamp>);
tag.add(<item:caverns_and_chasms:cursed_lantern>);
tag.add(<item:caverns_and_chasms:cursed_torch>);

tag = <tag:items:crucial:categories/equipment>;
tag.add(<item:caverns_and_chasms:silver_sword>);
tag.add(<item:caverns_and_chasms:silver_hoe>);
tag.add(<item:caverns_and_chasms:silver_axe>);
tag.add(<item:caverns_and_chasms:silver_pickaxe>);
tag.add(<item:caverns_and_chasms:silver_shovel>);
tag.add(<item:caverns_and_chasms:necromium_sword>);
tag.add(<item:caverns_and_chasms:necromium_hoe>);
tag.add(<item:caverns_and_chasms:necromium_axe>);
tag.add(<item:caverns_and_chasms:necromium_pickaxe>);
tag.add(<item:caverns_and_chasms:necromium_shovel>);
tag.add(<item:caverns_and_chasms:silver_helmet>);
tag.add(<item:caverns_and_chasms:silver_chestplate>);
tag.add(<item:caverns_and_chasms:silver_leggings>);
tag.add(<item:caverns_and_chasms:silver_boots>);
tag.add(<item:caverns_and_chasms:necromium_helmet>);
tag.add(<item:caverns_and_chasms:necromium_chestplate>);
tag.add(<item:caverns_and_chasms:necromium_leggings>);
tag.add(<item:caverns_and_chasms:necromium_boots>);

tag = <tag:items:crucial:categories/armor>;
tag.add(<item:caverns_and_chasms:silver_helmet>);
tag.add(<item:caverns_and_chasms:silver_chestplate>);
tag.add(<item:caverns_and_chasms:silver_leggings>);
tag.add(<item:caverns_and_chasms:silver_boots>);
tag.add(<item:caverns_and_chasms:necromium_helmet>);
tag.add(<item:caverns_and_chasms:necromium_chestplate>);
tag.add(<item:caverns_and_chasms:necromium_leggings>);
tag.add(<item:caverns_and_chasms:necromium_boots>);

tag = <tag:items:crucial:categories/technical_blocks>;
tag.add(<item:caverns_and_chasms:spiked_rail>);

tag = <tag:items:crucial:categories/useful_items>;
tag.add(<item:caverns_and_chasms:ore_detector>);
tag.add(<item:caverns_and_chasms:golden_bucket>);

tag = <tag:items:quark:vertical_slab>;
tag.add(<item:caverns_and_chasms:sugilite_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:lapis_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:dirt_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:dirt_tile_vertical_slab>);
tag.add(<item:caverns_and_chasms:cobblestone_tile_vertical_slab>);
tag.add(<item:caverns_and_chasms:mossy_cobblestone_tile_vertical_slab>);

tag = <tag:items:crucial:categories/variant_blocks>;
tag.add(<item:caverns_and_chasms:sugilite_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:lapis_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:dirt_brick_vertical_slab>);
tag.add(<item:caverns_and_chasms:dirt_tile_vertical_slab>);
tag.add(<item:caverns_and_chasms:cobblestone_tile_vertical_slab>);
tag.add(<item:caverns_and_chasms:mossy_cobblestone_tile_vertical_slab>);

var btag = <tag:blocks:quark:vertical_slab>;
btag.add(<block:caverns_and_chasms:sugilite_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:lapis_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:dirt_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:dirt_tile_vertical_slab>);
btag.add(<block:caverns_and_chasms:cobblestone_tile_vertical_slab>);
btag.add(<block:caverns_and_chasms:mossy_cobblestone_tile_vertical_slab>);

btag = <tag:blocks:windowlogging:windowable>;
btag.add(<block:caverns_and_chasms:sugilite_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:lapis_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:dirt_brick_vertical_slab>);
btag.add(<block:caverns_and_chasms:dirt_tile_vertical_slab>);
btag.add(<block:caverns_and_chasms:cobblestone_tile_vertical_slab>);
btag.add(<block:caverns_and_chasms:mossy_cobblestone_tile_vertical_slab>);

// JEI DOCUMENTATION ======================

var s = "Silver Ore replaces Gold Ore in cold biomes, like taigas, mountains, and tundras.";
c(<item:caverns_and_chasms:silver_ingot>, s);
c(<item:caverns_and_chasms:silver_ore>, s);

s = "Silver Tools apply Affliction when hitting an undead mob. The mob takes damage when the effect expires.";
c(<item:caverns_and_chasms:silver_sword>, s);
c(<item:caverns_and_chasms:silver_hoe>, s);
c(<item:caverns_and_chasms:silver_axe>, s);
c(<item:caverns_and_chasms:silver_pickaxe>, s);
c(<item:caverns_and_chasms:silver_shovel>, s);

s = "Silver Armor applies Affliction when an undead mob hits the wearer. The mob takes damage when the effect expires.";
c(<item:caverns_and_chasms:silver_helmet>, s);
c(<item:caverns_and_chasms:silver_chestplate>, s);
c(<item:caverns_and_chasms:silver_leggings>, s);
c(<item:caverns_and_chasms:silver_boots>, s);

s = "Necromium Tools provide slowness to any enemies they hit.";
c(<item:caverns_and_chasms:necromium_sword>, s);
c(<item:caverns_and_chasms:necromium_hoe>, s);
c(<item:caverns_and_chasms:necromium_axe>, s);
c(<item:caverns_and_chasms:necromium_pickaxe>, s);
c(<item:caverns_and_chasms:necromium_shovel>, s);

s = "Necromium Armor has no knockback resistance or armor toughness but gives weakness to nearby mobs when hit, allowing for crowd control.";
c(<item:caverns_and_chasms:necromium_helmet>, s);
c(<item:caverns_and_chasms:necromium_chestplate>, s);
c(<item:caverns_and_chasms:necromium_leggings>, s);
c(<item:caverns_and_chasms:necromium_boots>, s);

c(<item:caverns_and_chasms:sugilite>, "Can be found under Jungle and Desert biomes. Can be used for building blocks or to make a potion that sends you back to where you drank it when it ends.");
c(<item:caverns_and_chasms:rotten_flesh_block>, "If set on fire, emits green Cursed Fire, which only harms undead.");
c(<item:caverns_and_chasms:golden_bucket>, "Can hold up to 3 blocks of liquid.");
c(<item:caverns_and_chasms:spiked_rail>, "Damages any mobs on minecarts that go through it.");
c(<item:caverns_and_chasms:ore_detector>, "Glows when there's ore within a few blocks of the holder. Can be enchanted with Treasure enchantments to react only to gems or metals.");

#snip end
