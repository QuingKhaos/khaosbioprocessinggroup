local khaoslib_recipe = require("__khaoslib__.prototypes.recipe")

if mods["cerys-lunaponics"] then
  khaoslib_recipe:load("cerys-crude-lunaponics"):set {subgroup = "astroponic-processes"} :commit()
  khaoslib_recipe:load("cerys-tree-seed-synthesis"):set {subgroup = "astroponic-processes"} :commit()
  khaoslib_recipe:load("cerys-liquid-fertilizer"):set {subgroup = "astroponic-processes"} :commit()
  khaoslib_recipe:load("cerys-lubricant-synthesis"):set {subgroup = "astroponic-processes"} :commit()
end
