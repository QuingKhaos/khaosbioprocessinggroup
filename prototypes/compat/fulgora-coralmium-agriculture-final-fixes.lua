local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["fulgora-coralmium-agriculture" ] then
  khaoslib_item_subgroup:load {
    type = "item-subgroup",
    name = "fulgora-agriculture",
    group = "bioprocessing",
    order = "l"
  } :commit()

  khaoslib_item:load("inert-coralmium-seed"):set {subgroup = "fulgora-agriculture"} :commit()
  khaoslib_item:load("charged-coralmium-seed"):set {subgroup = "fulgora-agriculture"} :commit()
  khaoslib_item:load("coralmium"):set {subgroup = "fulgora-agriculture"} :commit()

  khaoslib_recipe:load("coralmium-seed-repolarization"):set {subgroup = "fulgora-agriculture"} :commit()
  khaoslib_recipe:load("inert-coralmium-seed-recycling"):set {subgroup = "fulgora-agriculture"} :commit()
  khaoslib_recipe:load("coralmium-recycling"):set {subgroup = "fulgora-agriculture"} :commit()
  khaoslib_recipe:load("synthetic-wood"):set {subgroup = "fulgora-agriculture"} :commit()
end
