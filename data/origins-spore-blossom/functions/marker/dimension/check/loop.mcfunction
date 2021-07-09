#> origins-spore-blossom:marker/dimension/check/loop
#
#   > Check if the input string matches one of the set 'hot dimension' strings
#
#@within
#   function origins-spore-blossom:marker/dimension/check
#   function origins-spore-blossom:marker/dimension/check/loop


#
#   Compare the input string to the last string in the `root.dim_tmp.hot_dims` array
#
data modify storage origins-spore-blossom:internal root.dimension_check.current_dimension set from storage origins-spore-blossom:internal root.process.current_dimension

execute store success score #notInvalidDimension o-s-b run data modify storage origins-spore-blossom:internal root.dimension_check.current_dimension set from storage origins-spore-blossom:internal root.dimension_check.invalid_dimensions[-1]


data remove storage origins-spore-blossom:internal root.dimension_check.invalid_dimensions[-1]


#
#   Call `*:/marker/check_dim/end` function if the string matches, otherwise, loop the function until there's no more string to compare from
#
scoreboard players remove #dimensionCount o-s-b 1

execute if score #notInvalidDimension o-s-b matches 1 if score #dimensionCount o-s-b matches 1.. run function origins-spore-blossom:marker/dimension/check/loop