#> origins-spore-blossom:marker/dim_check/loop
#
#   > Check if the input string matches one of the set 'hot dimension' strings
#
#@within
#   function origins-spore-blossom:marker/dim_check/init
#   function origins-spore-blossom:marker/dim_check/loop


#
#   Set up variables before checking
#
scoreboard players set #notHotDimension o-s-b 1

scoreboard players remove #iterationCount o-s-b 1


#
#   Compare the input string to the last string in the `root.dim_tmp.hot_dims` array
#
data modify storage origins-spore-blossom:internal root.dim_tmp.input_dup set from storage origins-spore-blossom:internal root.dim_tmp.input_org

execute store success score #notHotDimension o-s-b run data modify storage origins-spore-blossom:internal root.dim_tmp.input_dup set from storage origins-spore-blossom:internal root.dim_tmp.hot_dims[-1]


data remove storage origins-spore-blossom:internal root.dim_tmp.hot_dims[-1]


#
#   Call `*:/marker/check_dim/end` function if the string matches, otherwise, loop the function until there's no more string to compare from
#
execute if score #notHotDimension o-s-b matches 0 run function origins-spore-blossom:marker/dim_check/end

execute if score #notHotDimension o-s-b matches 1 if score #iterationCount o-s-b matches 1.. run function origins-spore-blossom:marker/dim_check/loop