import mods.jei.JEI as JEI;
import crafttweaker.api.item.IItemStack;
function i(m as IItemStack, s as string) as void {
	JEI.addInfo(m, [s]);	
}

craftingTable.removeRecipe(<item:supplementaries:bomb>);
i(<item:supplementaries:bomb>, "Temporarily disabled, will come back soon!");