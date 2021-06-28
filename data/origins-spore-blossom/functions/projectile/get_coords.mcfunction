#> origins-spore-blossom:projectile/get_coords
#
#   > Shoot-face a projectile from the player's eyes
#
#@within function origins-spore-blossom:projectile/setup


#
#   Get the coordinates of the player and a helper entity for calculation
#
execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags: ["o-s-b.bulb_projectile.helper"]}

execute store result score #projectileX o-s-b run data get entity @e[type = area_effect_cloud, tag = o-s-b.bulb_projectile.helper, limit = 1] Pos[0] 2000
execute store result score #projectileY o-s-b run data get entity @e[type = area_effect_cloud, tag = o-s-b.bulb_projectile.helper, limit = 1] Pos[1] 2000
execute store result score #projectileZ o-s-b run data get entity @e[type = area_effect_cloud, tag = o-s-b.bulb_projectile.helper, limit = 1] Pos[2] 2000

execute store result score #playerX o-s-b run data get entity @s Pos[0] 2000
execute store result score #playerY o-s-b run data get entity @s Pos[1] 2000
execute store result score #playerZ o-s-b run data get entity @s Pos[2] 2000


#
#   Calculate the saved values
#
scoreboard players operation #projectileX o-s-b -= #playerX o-s-b
scoreboard players operation #projectileY o-s-b -= #playerY o-s-b
scoreboard players operation #projectileZ o-s-b -= #playerZ o-s-b


#
#   Kill the helper entity
#
kill @e[tag = o-s-b.bulb_projectile.helper]