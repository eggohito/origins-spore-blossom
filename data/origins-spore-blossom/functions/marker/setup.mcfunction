#> origins-spore-blossom:marker/setup
#
#   > Check the network size of the player before summoning a new spore blossom
#
#@user


function origins-spore-blossom:marker/dimension/check


execute if score #notInvalidDimension o-s-b matches 0 run title @s actionbar {"text": "Cannot place spore blossoms in this dimension!", "color": "red"}

execute if score #notInvalidDimension o-s-b matches 1 if score @s o-s-b.ns >= $maxNetworkSize o-s-b run title @s actionbar {"text": "You have exceeded the max network size", "color": "red"}

execute if score #notInvalidDimension o-s-b matches 1 if score @s o-s-b.ns < $maxNetworkSize o-s-b run function origins-spore-blossom:raycast/place