#> origins-spore-blossom:marker/chunk/save/end
#
#   > Save the current chunk coordinates
#
#@within
#   function origins-spore-blossom:marker/chunk/save
#   function origins-spore-blossom:marker/chunk/save/loop


#
#   Add a new array to the array
#
data modify storage origins-spore-blossom:internal root.saved_chunks append value {dimension: "null", coordinates: [0, 0]}


#
#   Save the current chunk coordinates into the new array in the array
#
execute store result storage origins-spore-blossom:internal root.saved_chunks[-1].coordinates[0] int 1 run scoreboard players get #curChunkX o-s-b

execute store result storage origins-spore-blossom:internal root.saved_chunks[-1].coordinates[1] int 1 run scoreboard players get #curChunkZ o-s-b

data modify storage origins-spore-blossom:internal root.saved_chunks[-1].dimension set from storage origins-spore-blossom:internal root.current_dimension


# data modify block -30000000 0 1603 Text1 set value '{"translate": "%1$s, %2$s; %3$s", "with": [{"score": {"name": "#curChunkX", "objective": "o-s-b"}}, {"score": {"name": "#curChunkZ", "objective": "o-s-b"}}, {"nbt": "root.current_dimension", "storage": "origins-spore-blossom:internal"}]}'


# summon minecraft:area_effect_cloud ~ ~0.5 ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["test_init", "test"], CustomNameVisible: 1b}

# data modify entity @e[tag = test_init, limit = 1] CustomName set from block -30000000 0 1603 Text1

# tag @e remove test_init