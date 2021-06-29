#> origins-spore-blossom:marker/dim_check/init
#
#   > Check if the spore blossom is in a specific dimension
#
#@internal


#
#   Get the dimension string
#
function origins-spore-blossom:marker/dimension/get


#
#   Loop a function to check if it's within the `hot_dimensions` psuedo-category
#
data modify storage origins-spore-blossom:internal root.dim_tmp.input_org set from storage origins-spore-blossom:internal root.current_dimension

data modify storage origins-spore-blossom:internal root.dim_tmp.hot_dims set from storage origins-spore-blossom:internal root.hot_dimensions

execute store result score #iterationCount o-s-b run data get storage origins-spore-blossom:internal root.hot_dimensions

execute if score #iterationCount o-s-b matches 1.. run function origins-spore-blossom:marker/dim_check/loop

data remove storage origins-spore-blossom:internal root.dim_tmp