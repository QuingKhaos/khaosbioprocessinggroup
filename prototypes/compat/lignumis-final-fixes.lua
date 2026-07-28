local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")

if mods["lignumis"] then
  khaoslib_item_subgroup:load("lignumis-bioprocessing"):set {group = "bioprocessing"} :commit()
end
