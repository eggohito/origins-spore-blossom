#> origins-spore-blossom:internal/uuid_rand
#
#   > Generate a random number using UUIDs
#
#@within function origins-spore-blossom:raycast/summon/**


summon area_effect_cloud 0 0 0 {Tags: ["o-s-b.uuid_rand"]}

execute store result score #uuidRand.out o-s-b run data get entity @e[type = area_effect_cloud, tag = o-s-b.uuid_rand, limit = 1] UUID[0] 1

scoreboard players operation #uuidRand.out o-s-b %= #uuidRand.range o-s-b

kill @e[type = area_effect_cloud, tag = o-s-b.uuid_rand]