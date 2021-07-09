#> origins-spore-blossom:marker/apply_effects
#
#   > Apply the regeneration effect to nearby mobs
#
#@within function origins-spore-blossom:marker/tick


execute align xyz positioned ~0.5 ~0.5 ~0.5 run particle dust 0 1 0.2 0.8 ~ ~ ~ 4 4 4 0.0001 128 normal @a

effect give @a[distance = ..8] minecraft:regeneration 5 0 false