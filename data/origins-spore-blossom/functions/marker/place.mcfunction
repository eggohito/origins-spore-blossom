#> origins-spore-blossom:marker/place
#
#   > Summon a spore blossom
#
#@within function origins-spore-blossom:raycast/place


#
#   Summon a marker entity
#
scoreboard players set #cosmeticRayHit o-s-b 1

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_x_plus, limit = 1] positioned ~1 ~ ~ if predicate origins-spore-blossom:has_structure/pos_check/x run function origins-spore-blossom:marker/place/x_plus

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_x_minus, limit = 1] positioned ~-1 ~ ~ if predicate origins-spore-blossom:has_structure/pos_check/x run function origins-spore-blossom:marker/place/x_minus

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_y_plus, limit = 1] positioned ~ ~1 ~ if predicate origins-spore-blossom:has_structure/pos_check/y run function origins-spore-blossom:marker/place/y_plus

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_y_minus, limit = 1] positioned ~ ~-1 ~ if predicate origins-spore-blossom:has_structure/pos_check/y run function origins-spore-blossom:marker/place/y_minus

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_z_plus, limit = 1] positioned ~ ~ ~1 if predicate origins-spore-blossom:has_structure/pos_check/z run function origins-spore-blossom:marker/place/z_plus

execute if entity @e[tag = o-s-b.raycast_init, tag = mrcd_touch_z_minus, limit = 1] positioned ~ ~ ~-1 if predicate origins-spore-blossom:has_structure/pos_check/z run function origins-spore-blossom:marker/place/z_minus