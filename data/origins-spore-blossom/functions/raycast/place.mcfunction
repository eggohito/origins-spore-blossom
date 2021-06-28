#> origins-spore-blossom:raycast/place
#
#   > Start raycasting process (planting spore)
#
#@within function origins-spore-blossom:marker/setup


#
#   Summon helper entity
#
execute at @s positioned ^ ^ ^6.0 run summon area_effect_cloud ~ ~ ~ {Tags: ["o-s-b.raycast", "o-s-b.raycast_init", "mrcd_bullet"]}


#
#   Save the speed and direction of the marker entity
#
execute as @e[tag = o-s-b.raycast_init] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000

execute as @e[tag = o-s-b.raycast_init] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000

execute as @e[tag = o-s-b.raycast_init] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000


execute store result score #var0 mrcd_system run data get entity @s Pos[0] 1000

execute store result score #var1 mrcd_system run data get entity @s Pos[1] 1000

execute store result score #var2 mrcd_system run data get entity @s Pos[2] 1000


scoreboard players operation @e[tag = o-s-b.raycast_init, limit = 1] mrcd_x0 -= #var0 mrcd_system

scoreboard players operation @e[tag = o-s-b.raycast_init, limit = 1] mrcd_y0 -= #var1 mrcd_system

scoreboard players operation @e[tag = o-s-b.raycast_init, limit = 1] mrcd_z0 -= #var2 mrcd_system


#
#   Rotate the marker entity to match the caster's rotation, and cast the ray
#
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag = o-s-b.raycast_init, limit = 1] ~ ~ ~ ~ ~

execute as @e[tag = o-s-b.raycast_init] run function mrcd:ray_tick


#
#   Cast a cosmetic ray
#
scoreboard players set #cosmeticRayHit o-s-b 0

scoreboard players set #cosmeticRayDistance o-s-b 0

execute anchored eyes positioned ^ ^ ^ run function origins-spore-blossom:raycast/cosmetic



#
#   Check the face of the hit block
#
execute at @e[tag = o-s-b.raycast_init, tag = mrcd_touch_edge] if block ~ ~ ~ #origins-spore-blossom:plantable_on run function origins-spore-blossom:marker/place

execute if score #cosmeticRayHit o-s-b matches 0 at @e[tag = o-s-b.raycast_init] run particle block minecraft:jungle_leaves ~ ~ ~ 0.3 0.3 0.3 0.0001 16 normal @a

kill @e[tag = o-s-b.raycast_init]