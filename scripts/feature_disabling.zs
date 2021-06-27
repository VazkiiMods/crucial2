// note: these arrays are shortcuts for removing CRAFTING TABLE recipes
// use the normal way to remove other kinds of recipe
var removeByItem = [
  <item:environmental:apple_pie>,

  <item:inspirations:bookshelf>,
  <item:inspirations:ancient_bookshelf>,
  <item:inspirations:white_enlightened_bush>,
  <item:inspirations:red_enlightened_bush>,
  <item:inspirations:green_enlightened_bush>,
  <item:inspirations:blue_enlightened_bush>,
  
  <item:inspirations:brown_mulch>,
  <item:inspirations:red_mulch>,
  <item:inspirations:black_mulch>,
  <item:inspirations:blue_mulch>,

  <item:inspirations:rock_path>,
  <item:inspirations:tile_path>,
  <item:inspirations:brick_path>,

  <item:inspirations:rope>,
  <item:inspirations:vine>,

  <item:inspirations:torch_lever>,
  <item:inspirations:redstone_book>,

  <item:inspirations:pipe>,
  <item:inspirations:lock>,
  <item:inspirations:key>,

  <item:inspirations:barometer>,
  <item:inspirations:photometer>,

  <item:alexsmobs:fish_oil>,
  <item:alexsmobs:poison_bottle>,
  <item:alexsmobs:komodo_spit_bottle>,
  <item:alexsmobs:centipede_leggings>,

  <item:waystones:warp_stone>,

  <item:decorative_winter:festive_chain>,
  <item:decorative_winter:frosty_wand>,
  <item:decorative_winter:wreath>,
];

var removeByRecipe = [
  "minecraft:yellow_dye_from_sunflower",

  "charm:extra_recipes/trident",
  "charm:extra_recipes/soul_torch",
  "charm:extra_recipes/green_dye",
  "charm:extra_recipes/cyan_dye",
  "charm:extra_recipes/gilded_blackstone",

];

// used for skinned lanterns and deco blocks because typing them out is pain
var removeByRegex = [
  "skinnedlanterns:.*bee.*lantern_block",
  "skinnedlanterns:.*blinky.*lantern_block",
  "skinnedlanterns:.*clyde.*lantern_block",
  "skinnedlanterns:.*creeper.*lantern_block",
  "skinnedlanterns:.*ghost.*lantern_block",
  "skinnedlanterns:.*guardian.*lantern_block",
  "skinnedlanterns:.*honey.*lantern_block",
  "skinnedlanterns:.*inky.*lantern_block",
  "skinnedlanterns:.*jack_o_lantern.*lantern_block",
  "skinnedlanterns:.*ornament.*lantern_block",
  "skinnedlanterns:.*pacman.*lantern_block",
  "skinnedlanterns:.*pinky.*lantern_block",
  "skinnedlanterns:.*present.*lantern_block",
  "skinnedlanterns:.*pufferfish.*lantern_block",
  "skinnedlanterns:.*slime.*lantern_block",
  "skinnedlanterns:.*snowman.*lantern_block",
  "skinnedlanterns:.*zombie.*lantern_block",

  "paraglider",

  "decorative_blocks.*beam",
  "decorative_blocks.*palisade",
  "decorative_blocks.*seat",
  "decorative_blocks.*support",

  "decorative_winter:.*thin_branch",

  "waystones",

  "buzzier_bees:.*scented_candle"
];

for i in removeByItem {
  craftingTable.removeRecipe(i);
}

for i in removeByRecipe {
  craftingTable.removeByName(i);
}

for i in removeByRegex {
  craftingTable.removeByRegex(i);
}

stoneCutter.removeRecipe(<item:inspirations:plain_mulch>);
stoneCutter.removeRecipe(<item:inspirations:rock_path>);
stoneCutter.removeRecipe(<item:inspirations:round_path>);
stoneCutter.removeRecipe(<item:inspirations:tile_path>);
stoneCutter.removeRecipe(<item:inspirations:brick_path>);

campfire.removeRecipe(<item:farmersdelight:fried_egg>);
furnace.removeRecipe(<item:farmersdelight:fried_egg>);
smoker.removeRecipe(<item:farmersdelight:fried_egg>);

villagerTrades.removeWanderingTrade(2, <item:alexsmobs:banana_peel>);
villagerTrades.removeWanderingTrade(1, <item:environmental:rice>);
villagerTrades.removeEmeraldForItemsTrade(<profession:minecraft:farmer>, 1, <item:environmental:rice>);
villagerTrades.removeItemsForEmeraldsTrade(<profession:minecraft:farmer>, 1, <item:environmental:rice>);