#loader contenttweaker

#snip modnotloaded caverns_and_chasms

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.item.ItemBuilder;

new BlockBuilder(<blockmaterial:iron>)
    .withHardnessAndResistance(5.0f, 6.0f)
    .withHarvestLevel(1)
    .withHarvestTool(<tooltype:pickaxe>)
    .withItemGroup(<itemgroup:building_blocks>)
    .build("raw_silver_block");

new ItemBuilder()
    .withItemGroup(<itemgroup:misc>)
    .build("raw_silver");

#snip end
