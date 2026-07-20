local khaoslib_capsule = require("__khaoslib__.prototypes.capsule")
local khaoslib_item = require("__khaoslib__.prototypes.item")
local khaoslib_item_group = require("__khaoslib__.prototypes.item-group")
local khaoslib_item_subgroup = require("__khaoslib__.prototypes.item-subgroup")

-- Emulate as if bioprocessing-tab is installed
mods["bioprocessing-tab"] = "1.5.0"

khaoslib_item_group:load {
  type = "item-group",
  name = "bioprocessing",
  order = "cb[bioprocessing]",
} :set_icons {{icon = "__space-age__/graphics/technology/fish-breeding.png", icon_size = 256}}
  :commit()

khaoslib_item_subgroup:load("agriculture-processes"):set {group = "bioprocessing"} :commit()
khaoslib_item_subgroup:load("agriculture-products"):set {group = "bioprocessing"} :commit()
khaoslib_item_subgroup:load("nauvis-agriculture"):set {group = "bioprocessing"} :commit()

khaoslib_item:load("wood"):set {subgroup = "nauvis-agriculture", order = "0[wood]"} :commit()
khaoslib_capsule:load("raw-fish"):set {subgroup = "nauvis-agriculture", order = "b0[raw-fish]"} :commit()
