local khaoslib_capsule = require("__khaoslib__.prototypes.capsule")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["vulcanus-sulfuric-bacteria" ] then
  khaoslib_item_subgroup:load {
    type = "item-subgroup",
    name = "vulcanus-agriculture",
    group = "bioprocessing",
    order = "k"
  } :commit()

  khaoslib_item:load("sulfuric-bacteria"):set {subgroup = "vulcanus-agriculture"} :commit()

  khaoslib_recipe:load("sulfuric-bacteria-filtering"):set {subgroup = "vulcanus-agriculture"} :commit()
  khaoslib_recipe:load("sulfuric-bacteria-cultivation"):set {subgroup = "vulcanus-agriculture"} :commit()
  khaoslib_recipe:load("sulfuric-bacteria-pruning"):set {subgroup = "vulcanus-agriculture"} :commit()
  khaoslib_recipe:load("sulfuric-bacteria-melting"):set {subgroup = "vulcanus-agriculture"} :commit()

  if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
    khaoslib_recipe:load("reconstituted-wood-vulcanus"):set {subgroup = "vulcanus-agriculture"} :commit()
  end
end
