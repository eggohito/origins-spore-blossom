#> origins-spore-blossom:kill_all
#
#   > Kill all the spore blossom markers that belongs to the player that runs this function
#
#@user


#
#   Import currently selected entity's ID to a fake player, and check if any entities has the same ID value
#
tag @s add o-s-b.exception

scoreboard players operation #currentPlayerID o-s-b = @s o-s-b.pID

execute as @e[tag = o-s-b.marker] at @s if score @s o-s-b.bID = #currentPlayerID o-s-b run function origins-spore-blossom:marker/destroy/kill

tag @s remove o-s-b.exception