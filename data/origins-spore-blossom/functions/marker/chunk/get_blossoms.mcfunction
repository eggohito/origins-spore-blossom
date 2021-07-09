#> origins-spore-blossom:marker/chunk/get_blossoms
#
#   > Store how many spore blossoms are in the chunk in a scoreboard
#
#@within function origins-spore-blossom:marker/chunk/**


scoreboard players set #sporeBlossomCount o-s-b 0


summon area_effect_cloud ~ ~ ~ {Tags: ["o-s-b.chunk_entity_tester"]}

execute store result entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[0] double 16 run scoreboard players get #curChunkX o-s-b

execute store result entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[2] double 16 run scoreboard players get #curChunkZ o-s-b


execute at @e[tag = o-s-b.chunk_entity_tester] store result score #sporeBlossomCount o-s-b if entity @e[tag = o-s-b.marker, dx = 15, dy = 256, dz = 15, y = 0]

scoreboard players remove #sporeBlossomCount o-s-b 1