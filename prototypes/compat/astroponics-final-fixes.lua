local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["astroponics"] then
  khaoslib_item_subgroup:load("astroponic-processes"):set {group = "bioprocessing", order = "e"} :commit()

  if settings.startup["astroponics-crude-oil"].value then
    khaoslib_recipe:load("bioslurry-putrefaction"):set {subgroup = "astroponic-processes"} :commit()
  end
end
