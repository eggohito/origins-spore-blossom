#> origins-spore-blossom:marker/chunk/get_blossoms
#
#   > Store how many spore blossoms are in the chunk in a scoreboard
#
#@within function origins-spore-blossom:marker/kill


#
#   Summon the helper entity
#
summon area_effect_cloud ~ ~ ~ {Tags: ["o-s-b.chunk_entity_tester"]}


#
#   Re-position the helper entity to the corner of the chunk
#
execute store result entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[0] double 16 run data get entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[0] 0.0625

execute store result entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[2] double 16 run data get entity @e[tag = o-s-b.chunk_entity_tester, limit = 1] Pos[2] 0.0625


#
#   Get the count of the spore blossoms in the chunk
#
execute at @e[tag = o-s-b.chunk_entity_tester] store result score #sporeBlossomCount o-s-b if entity @e[tag = o-s-b.marker, dx = 15, dy = 256, dz = 15, y = 0]

tellraw @s[type = player, tag = o-s-b.debugger] {"translate": "Found %s spore blossom marker(s)!", "color": "gray", "with": [{"score": {"name": "#sporeBlossomCount", "objective": "o-s-b"}}]}