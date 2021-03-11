var cask = <item:atmospheric:yucca_cask>;
var roast_cask = <item:atmospheric:roasted_yucca_cask>;
var yucca = <item:atmospheric:yucca_fruit>;
var roast = <item:atmospheric:roasted_yucca_fruit>;

craftingTable.addShapeless("bogl_pls1", cask, [yucca, yucca, yucca, yucca, yucca, yucca, yucca, yucca, yucca]);
craftingTable.addShapeless("bogl_pls2", roast_cask, [roast, roast, roast, roast, roast, roast, roast, roast, roast]);
craftingTable.addShapeless("bogl_pls3", yucca * 9, [cask]);
craftingTable.addShapeless("bogl_pls4", roast * 9, [roast_cask]);