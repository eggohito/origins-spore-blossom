#> origins-spore-blossom:id/dynamic_network/loop
#
#   > Loop this function until the blossom marker has a unique ID
#
#@within
#   function origins-spore-blossom:id/dynamic_network/set
#   function origins-spore-blossom:id/dynamic_network/loop


scoreboard players add @s o-s-b.nID 1


tag @e remove o-s-b.network_ID_check_loop

execute as @e[tag = o-s-b.network_ID_set] if score @s o-s-b.nID = @e[tag = o-s-b.network_ID_check, limit = 1] o-s-b.nID run tag @e[tag = o-s-b.network_ID_check, limit = 1] add o-s-b.network_ID_check_loop

execute as @s[tag = o-s-b.network_ID_check_loop] run function origins-spore-blossom:id/dynamic_network/loop