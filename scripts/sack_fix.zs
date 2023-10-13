import crafttweaker.api.item.IItemStack;
import crafttweaker.api.loot.LootManager;
import crafttweaker.api.loot.conditions.LootConditionBuilder;
import crafttweaker.api.loot.modifiers.CommonLootModifiers;
import crafttweaker.api.loot.LootContext;
import crafttweaker.api.tileentity.MCTileEntity;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.IData;
import stdlib.List;


// A lot of this was written by TheSilkMiner(Silk#6031 on Discord), Huge thanks to them.

<block:supplementaries:sack>.addLootModifier(
  "sack_fix",
  (drops, context) => {

    // Grab the tile entity from the context
    val maybeBe = context.tileEntity; 

    // Check that a tile entity does in fact exist, to avoid crashing in case something is weird
    if (maybeBe != null) { 

        // And here we tell the game we are sure the tile entity exists
        val be = maybeBe as MCTileEntity;

        // Grab the block entity's raw NBT data
        val data = be.data; 

        // By using /data in-game, we find out that the name is stored in NBT with the key 'CustomName', so we want to grab that

        // Note that this might return null, as it might or might not have a custom name
        // Grabs the "CustomName" in the block NBT
        val customName = data.getAt("CustomName");

        // Grabs the "Items" in the block NBT, This will be needed later when converting to handheld item format
        val items = data.getAt("Items");

        // If the block entity has a custom name, then we need to apply it to the item
        if (customName != null) { 
        
        // Let's create a new list of drops so that we can manipulate it more easily
        val newDrops = new stdlib.List<IItemStack>();

        // Here we want to find the default drop, so we loop over the original set of drops
        for stack in drops { 

            // If the item is the one we are looking for
            if <item:supplementaries:sack>.matches(stack) { 
            
            // We need to construct the new NBT, so we have to do the entire thing for the sack
            
            val nameData = new MapData();
            nameData.put("Name", customName);

            val itemData = new MapData();

            //If the sack wasn't empty, the script transfers the items.
            if (items != null) {
              itemData.put("Items", items);
            }

            val newData = new MapData();
            newData.put("display", nameData);
            newData.put("BlockEntityTag", itemData);

            

            // And add it to the list
            newDrops.add(stack.withTag(newData));
            }

        // If it's not the item we care, about we add it anyway, without modifications
        else { 
            newDrops.add(stack);
        }
        }
        // Finally, let's tell the game it should use the new drops we made up
        return newDrops; 
        }
    }
    // If the block didn't have a tile entity or it had no custom name, we just return the old drops as they're fine as they are
    return drops; 
  }
);
