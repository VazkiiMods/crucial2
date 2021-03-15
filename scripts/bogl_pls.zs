var cask = <item:atmospheric:yucca_cask>;
var roast_cask = <item:atmospheric:roasted_yucca_cask>;
var yucca = <item:atmospheric:yucca_fruit>;
var roast = <item:atmospheric:roasted_yucca_fruit>;

craftingTable.addShapeless("bogl_pls1", cask, [yucca, yucca, yucca, yucca, yucca, yucca, yucca, yucca, yucca]);
craftingTable.addShapeless("bogl_pls2", roast_cask, [roast, roast, roast, roast, roast, roast, roast, roast, roast]);
craftingTable.addShapeless("bogl_pls3", yucca * 9, [cask]);
craftingTable.addShapeless("bogl_pls4", roast * 9, [roast_cask]);

craftingTable.addShaped("bogl_pls5", <item:environmental:willow_post>, [[<item:environmental:willow_wood>],[<item:environmental:willow_wood>], [<item:environmental:willow_wood>]]);
craftingTable.addShaped("bogl_pls6", <item:environmental:stripped_willow_post>, [[<item:environmental:stripped_willow_wood>],[<item:environmental:stripped_willow_wood>], [<item:environmental:stripped_willow_wood>]]);
craftingTable.addShaped("bogl_pls7", <item:environmental:cherry_post>, [[<item:environmental:cherry_wood>],[<item:environmental:cherry_wood>], [<item:environmental:cherry_wood>]]);
craftingTable.addShaped("bogl_pls8", <item:environmental:stripped_cherry_post>, [[<item:environmental:stripped_cherry_wood>],[<item:environmental:stripped_cherry_wood>], [<item:environmental:stripped_cherry_wood>]]);
craftingTable.addShaped("bogl_pls9", <item:environmental:wisteria_post>, [[<item:environmental:wisteria_wood>],[<item:environmental:wisteria_wood>], [<item:environmental:wisteria_wood>]]);
craftingTable.addShaped("bogl_pls10", <item:environmental:stripped_wisteria_post>, [[<item:environmental:stripped_wisteria_wood>],[<item:environmental:stripped_wisteria_wood>], [<item:environmental:stripped_wisteria_wood>]]);

