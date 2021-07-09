#> origins-spore-blossom:marker/tick
#
#   > The tick function for the `o-s-b.marker` entity
#
#@within function origins-spore-blossom:internal/tick


#
#   Increase the spore blossom's game tick
#
scoreboard players add @s o-s-b.t 1

scoreboard players operation @s o-s-b.it = @s o-s-b.t

scoreboard players operation @s o-s-b.it %= $effectInterval o-s-b

scoreboard players operation @s o-s-b.t %= $fullyGrownTicks o-s-b


#
#   Check if the spore blossom marker has a valid structure
#
execute if entity @s[tag = o-s-b.marker_x_minus, predicate = !origins-spore-blossom:has_structure/x_minus] run function origins-spore-blossom:marker/destroy/kill

execute if entity @s[tag = o-s-b.marker_x_plus, predicate = !origins-spore-blossom:has_structure/x_plus] run function origins-spore-blossom:marker/destroy/kill

execute if entity @s[tag = o-s-b.marker_y_minus, predicate = !origins-spore-blossom:has_structure/y_minus] run function origins-spore-blossom:marker/destroy/kill

execute if entity @s[tag = o-s-b.marker_y_plus, predicate = !origins-spore-blossom:has_structure/y_plus] run function origins-spore-blossom:marker/destroy/kill

execute if entity @s[tag = o-s-b.marker_z_minus, predicate = !origins-spore-blossom:has_structure/z_minus] run function origins-spore-blossom:marker/destroy/kill

execute if entity @s[tag = o-s-b.marker_z_plus, predicate = !origins-spore-blossom:has_structure/z_plus] run function origins-spore-blossom:marker/destroy/kill


#
#   Check if the spore blossom should grow upon having a specific set tick value
#
execute if score @s[tag = o-s-b.marker_immature] o-s-b.t matches 0 run function origins-spore-blossom:marker/grow


#
#   Apply the regeneration status effects to nearby players after a certain interval
#
execute if score @s[tag = o-s-b.marker_mature] o-s-b.it matches 0 run function origins-spore-blossom:marker/apply_effects