#> origins-spore-blossom:raycast/cosmetic
#
#   > Cast a particle ray
#
#@within function origins-spore-blossom:raycast/**


scoreboard players add #cosmeticRayDistance o-s-b 1

particle dust 0.016 0.427 0 0.4 ~ ~ ~ 0 0 0 0.001 1 normal @a

execute if score #cosmeticRayHit o-s-b matches 0 unless score #cosmeticRayDistance o-s-b matches 60.. positioned ^ ^ ^0.1 run function origins-spore-blossom:raycast/cosmetic