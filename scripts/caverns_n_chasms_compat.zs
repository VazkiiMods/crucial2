#snip modnotloaded caverns_and_chasms
import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;

function c(m as IItemStack, s as string) as void {
	JEI.addInfo(m, [s]);	
}

println("Chaverns & Chasms detected. Loading C&C Compat!");

// INTEGRATION ======================

var blaze_powder = <item:minecraft:blaze_powder>;
var chest = <tag:items:forge:chests/wooden>;
var crate = <item:quark:crate>;
var emerald = <item:minecraft:emerald>;
var ender_eye = <item:minecraft:ender_eye>;
var ender_pearl = <item:minecraft:ender_pearl>;
var honeycomb = <item:minecraft:honeycomb>;
var planks = <tag:items:minecraft:planks>;
var prismarine_crystals = <item:minecraft:prismarine_crystals>;
var silver = <tag:items:forge:ingots/silver>;
var sugilite = <item:caverns_and_chasms:sugilite>;

# Remove Overlapping Content
craftingTable.removeRecipe(<item:caverns_and_chasms:golden_bars>);
craftingTable.removeRecipe(<item:caverns_and_chasms:golden_lantern>);

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
tag.add(<item:caverns_and_chasms:rocky_dirt>);
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