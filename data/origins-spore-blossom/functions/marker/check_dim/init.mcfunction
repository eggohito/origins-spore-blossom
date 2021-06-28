#> origins-spore-blossom:marker/check_dim/init
#
#   > Get the dimension string from a piglin brute, and process the get string
#
#@internal


#
#   Summon a piglin brute positioned somewhere usually inaccessible
#
#   - its `Brain.memories."minecraft:home".value.dimension` NBT stores the dimension it's currently in
#
execute positioned ~ ~-100000 ~ run summon piglin_brute


#
#   Get the value of the `Brain.memories."minecraft:home".value.dimension` NBT of the summoned piglin brute
#
execute positioned ~ ~-100000 ~ run data modify storage origins-spore-blossom:internal root.dim_tmp.input_org set from entity @e[type = piglin_brute, limit = 1, distance = 0] Brain.memories."minecraft:home".value.dimension


#
#   Loop a function to check if it's within the `hot_dimensions` psuedo-category
#
data modify storage origins-spore-blossom:internal root.dim_tmp.hot_dims set from storage origins-spore-blossom:internal root.hot_dimensions

execute store result score #iterationCount o-s-b run data get storage origins-spore-blossom:internal root.hot_dimensions

execute if score #iterationCount o-s-b matches 1.. run function origins-spore-blossom:marker/check_dim/loop

data remove storage origins-spore-blossom:internal root.dim_tmp