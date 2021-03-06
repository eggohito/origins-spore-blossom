#> origins-spore-blossom:marker/destroy/finalize
#
#   > Damage the player, and kill the marker
#
#@within function origins-spore-blossom:marker/destroy/kill


#
#   Set the score of the player in the `o-s-b.dmgb` objective to 1
#
scoreboard players remove @s o-s-b.ns 1

scoreboard players set @s[tag = !o-s-b.exception] o-s-b.dmgb 1


execute as @e[tag = self, tag = o-s-b.marker] run function origins-spore-blossom:marker/kill