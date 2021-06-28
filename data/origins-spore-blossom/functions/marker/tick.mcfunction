#> origins-spore-blossom:marker/tick
#
#   > The tick function for the `o-s-b.marker` entity
#
#@within function origins-spore-blossom:internal/tick


#
#   Increase the spore blossom's game tick
#
scoreboard players add @s o-s-b.bt 1

scoreboard players operation @s o-s-b.bts = @s o-s-b.bt

scoreboard players operation @s o-s-b.bts %= $healInterval o-s-b

scoreboard players operation @s o-s-b.bt %= $fullyGrownTicks o-s-b


#
#   Check if the spore blossom marker has a valid structure
#
execute if entity @s[tag = o-s-b.marker_x_minus, predicate = !origins-spore-blossom:has_structure/x_minus] run function origins-spore-blossom:marker/no_base/kill

execute if entity @s[tag = o-s-b.marker_x_plus, predicate = !origins-spore-blossom:has_structure/x_plus] run function origins-spore-blossom:marker/no_base/kill

execute if entity @s[tag = o-s-b.marker_y_minus, predicate = !origins-spore-blossom:has_structure/y_minus] run function origins-spore-blossom:marker/no_base/kill

execute if entity @s[tag = o-s-b.marker_y_plus, predicate = !origins-spore-blossom:has_structure/y_plus] run function origins-spore-blossom:marker/no_base/kill

execute if entity @s[tag = o-s-b.marker_z_minus, predicate = !origins-spore-blossom:has_structure/z_minus] run function origins-spore-blossom:marker/no_base/kill

execute if entity @s[tag = o-s-b.marker_z_plus, predicate = !origins-spore-blossom:has_structure/z_plus] run function origins-spore-blossom:marker/no_base/kill


#
#   Check if the spore blossom's life tick surpasses it's set limit
#
# execute if score @s[tag = o-s-b.marker_mature] o-s-b.bt >= $maxLifeTicks o-s-b run function origins-spore-blossom:marker/has_base/kill


#
#   Check if the spore blossom should grow upon having a specific set tick value
#
execute if score @s[tag = o-s-b.marker_immature] o-s-b.bt matches 0 run function origins-spore-blossom:marker/grow


#
#   Apply the regeneration status effects to nearby players after a certain interval
#
execute if score @s[tag = o-s-b.marker_mature] o-s-b.bts matches 0 run function origins-spore-blossom:marker/regen