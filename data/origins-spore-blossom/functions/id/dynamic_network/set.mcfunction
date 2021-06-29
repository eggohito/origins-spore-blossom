#> origins-spore-blossom:id/dynamic_network/set
#
#   > Set the blossom's Network ID
#
#@within function origins-spore-blossom:marker/place/finalize


tag @e remove o-s-b.network_ID_check

tag @s add o-s-b.network_ID_check

function origins-spore-blossom:id/dynamic_network/loop


tag @s add o-s-b.network_ID_set

execute at @s run function origins-spore-blossom:marker/dim_check/init