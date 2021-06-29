#> origins-spore-blossom:init/dimension/the_nether
#
#   > Load the Phi chunk in The Nether
#
#@within function origins-spore-blossom:internal/load_def_chunks


summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["o-s-b.marker_remover", "o-s-b.load"]}

execute as @e[tag = o-s-b.load, limit = 1] in minecraft:the_nether run function origins-spore-blossom:init/dimension