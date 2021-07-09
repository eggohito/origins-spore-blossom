#> origins-spore-blossom:.conf/default
#
#   > Set the default configuration for the `origins-spore-blossom` namespace
#
#@within function origins-spore-blossom:internal/load
#declare storage origins-spore-blossom:internal


scoreboard players set $fullyGrownTicks o-s-b 200

scoreboard players set $effectInterval o-s-b 200

scoreboard players set $maxNetworkSize o-s-b 4

scoreboard players set $rootAltSound o-s-b 1

scoreboard players set $rootInterval o-s-b 10

scoreboard players set $rootMaxDistance o-s-b 4

scoreboard players set $rootMaxHeight o-s-b 8


data modify storage origins-spore-blossom:internal root.invalid_dimensions set value ["minecraft:the_nether", "minecraft:the_end"]