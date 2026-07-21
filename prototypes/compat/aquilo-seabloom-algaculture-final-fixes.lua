local khaoslib_capsule = require("__khaoslib__.prototypes.capsule")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")
local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["aquilo-seabloom-algaculture" ] then
  khaoslib_item_subgroup:load {
    type = "item-subgroup",
    name = "aquilo-algaculture",
    group = "bioprocessing",
    order = "p"
  } :commit()

  khaoslib_capsule:load("seaweed"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_capsule:load("seabloom"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_item:load("seawilt"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_capsule:load("seaweed-snack"):set {subgroup = "aquilo-algaculture"} :commit()

  khaoslib_recipe:load("seaweed-blanching"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_recipe:load("seawilt-spoilage"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_recipe:load("seabloom-cultivation"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_recipe:load("nutrients-from-seabloom"):set {subgroup = "aquilo-algaculture"} :commit()
  khaoslib_recipe:load("seaweed-snack"):set {subgroup = "aquilo-algaculture"} :commit()

  if mods["wood-industry"] and settings.startup["wood-industry-resin"].value then
    khaoslib_recipe:load("seabloom-juicing"):set {subgroup = "aquilo-algaculture"} :commit()
    khaoslib_recipe:load("reconstituted-wood-aquilo"):set {subgroup = "aquilo-algaculture"} :commit()
  end
end
