#loader contenttweaker

#snip modnotloaded create
#snip modnotloaded createtweaker

import mods.contenttweaker.block.BlockBuilder;
import mods.contenttweaker.item.ItemBuilder;

new BlockBuilder(<blockmaterial:iron>)
    .withHardnessAndResistance(5.0f, 6.0f)
    .withHarvestLevel(1)
    .withHarvestTool(<tooltype:pickaxe>)
    .withItemGroup(<itemgroup:building_blocks>)
    .build("raw_copper_block");

new ItemBuilder()
    .withItemGroup(<itemgroup:misc>)
    .build("raw_copper");

#snip end
#snip end
