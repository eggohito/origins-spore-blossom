#> origins-spore-blossom:marker/dimension/check
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
data modify storage origins-spore-blossom:internal root.dimension_check.invalid_dimensions set from storage origins-spore-blossom:internal root.invalid_dimensions

execute store result score #dimensionCount o-s-b run data get storage origins-spore-blossom:internal root.dimension_check.invalid_dimensions

execute if score #dimensionCount o-s-b matches 1.. run function origins-spore-blossom:marker/dimension/check/loop