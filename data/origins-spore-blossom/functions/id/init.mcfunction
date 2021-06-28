#> origins-spore-blossom:id/init
#
#   > The reward function for the `origins-spore-blossom:internal/init` advancement
#
#@within
#   advancement origins-spore-blossom:id/init
#   function origins-spore-blossom:id/reset_check

#
#   Execute as all players that doesn't have an ID, add 1 score to the `#players` score holder, then import the value of the `#players` score holder to the player
#
execute as @a unless score @s o-s-b.pID = @s o-s-b.pID run scoreboard players add #players o-s-b.pID 1

scoreboard players operation @s o-s-b.pID = #players o-s-b.pID


scoreboard players enable @s o-s-b.tp_to

scoreboard players set @s o-s-b.bulb 0

scoreboard players set @s o-s-b.ns 0