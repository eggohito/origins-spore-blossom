#> origins-spore-blossom:marker/destroy/kill
#
#   > Kill the marker (and deal damage to the player who owns the spore blossom)
#
#@within
#   function origins-spore-blossom:marker/tick
#   function origins-spore-blossom:kill_all


#
#   Add a tag to indicate 'self'
#
tag @s add self


#
#   Import currently selected entity's ID to a fake player, and check if any player has the same ID value
#
scoreboard players operation #currentBlossomID o-s-b = @s o-s-b.bID

execute as @a if score @s o-s-b.pID = #currentBlossomID o-s-b run function origins-spore-blossom:marker/destroy/finalize


#
#   Remove the tag that indicates 'self'
#
tag @s remove self