#> origins-spore-blossom:marker/target/init
#
#   > Teleport to a specified blossom marker, and re-enable the trigger
#
#@within advancement origins-spore-blossom:marker/target/init


#
#   Check if the player is in a spore blossom
#
execute store result score #isInBlossom o-s-b if entity @e[type = item_frame, tag = o-s-b.marker_mature, dx = 0]


#
#   Make sure that the value is NOT > $maxNetworkSize or <= 0
#
execute if score #isInBlossom o-s-b matches 1.. if score @s o-s-b.tp_to > $maxNetworkSize o-s-b run scoreboard players operation @s o-s-b.tp_to = $maxNetworkSize o-s-b

execute if score #isInBlossom o-s-b matches 1.. if score @s o-s-b.tp_to matches ..0 run scoreboard players set @s o-s-b.tp_to 1


#
#   Check if there's a spore blossom that has the same ID value as the set score in the objective trigger
#
execute if score #isInBlossom o-s-b matches 1.. run function origins-spore-blossom:marker/target/check


#
#   Re-enable the objective trigger and revoke the advancement
#
scoreboard players set @s o-s-b.tp_to -1

scoreboard players enable @s o-s-b.tp_to

advancement revoke @s only origins-spore-blossom:marker/target/init