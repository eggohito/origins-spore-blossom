#> origins-spore-blossom:marker/setup
#
#   > Check the network size of the player before summoning a new spore blossom
#
#@user


execute if score @s o-s-b.ns >= $maxNetworkSize o-s-b run title @s actionbar {"text": "You have exceeded the max network size", "color": "red"}

execute if score @s o-s-b.ns < $maxNetworkSize o-s-b run function origins-spore-blossom:raycast/place