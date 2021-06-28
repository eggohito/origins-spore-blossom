#> origins-spore-blossom:id/reset_check
#
#   > Check for pairs to synchronize the ID reset
#
#@within function origins-spore-blossom:re-apply_id


#
#   Add a tag to the player to indicate 'self'
#
tag @s add self


#
#   Set the value of `#current` to match the current player's ID
#
scoreboard players operation #current o-s-b.pID = @s o-s-b.pID


#
#   Find the marker(s) that has the same ID value as `#current`
#
scoreboard players reset @s o-s-b.pID

function origins-spore-blossom:id/init

execute as @e[tag = o-s-b.marker] if score @s o-s-b.bID = #current o-s-b.pID run function origins-spore-blossom:id/reset_pair




#
#   Remove the 'self' tag afterwards
#
tag @s remove self