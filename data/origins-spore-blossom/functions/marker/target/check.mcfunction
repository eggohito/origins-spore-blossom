#> origins-spore-blossom:marker/target/check
#
#   > Check if there's a spore blossom that matches the value
#
#@within
#   function origins-spore-blossom:marker/target/init
#   function origins-spore-blossom:marker/target/check


#
#   Add a tag to indicate 'self'
#
tag @s add self


#
#   Import the scores of the player onto temporary score holders
#
scoreboard players set #tpSucceed o-s-b 0

scoreboard players operation #currentBlossomID o-s-b = @s o-s-b.pID

scoreboard players operation #currentNetworkID o-s-b = @s o-s-b.tp_to


#
#   Set a temporary boolean to indicate that there's a nearby spore blossom with the same blossom ID as the player, and the same Network ID as the set value in the trigger objective
#
execute as @e[type = item_frame, tag = o-s-b.marker_mature, distance = ..64] at @s if score @s o-s-b.nID = #currentNetworkID o-s-b if score @s o-s-b.bID = #currentBlossomID o-s-b unless entity @a[tag = self, limit = 1, dx =0] run function origins-spore-blossom:marker/target/set


#
#   Display messages if either the system cannot find the specified spore blossom, or if the player is already at the specified spore blossom
#
execute if score #tpSucceed o-s-b matches 0 run title @s actionbar {"text": "Cannot find specified spore blossom!", "color": "red"}

execute as @e[type = item_frame, tag = o-s-b.marker_mature, distance = ..64] at @s if score @s o-s-b.nID = #currentNetworkID o-s-b if score @s o-s-b.bID = #currentBlossomID o-s-b if entity @a[tag = self, limit = 1, dx = 0] run title @a[tag = self, limit = 1] actionbar {"text": "You're already at the specified spore blossom!", "color": "red"}


#
#   Teleport the player to the specified spore blossom marker
#
execute as @e[type = item_frame, tag = o-s-b.marker_mature, tag = o-s-b.tp_to.target] at @s run function origins-spore-blossom:marker/target/end


#
#   Remove the tag that indicates 'self', and the tag to indicate the target to teleport to
#
tag @s remove self

tag @e remove o-s-b.tp_to.target