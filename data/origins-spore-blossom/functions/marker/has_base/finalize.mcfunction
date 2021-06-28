#> origins-spore-blossom:marker/has_base/finalize
#
#   > Decrease the player's score in the `o-s-b.ns` objective by 1;
#
#   - and remove the residual structure voids
#
#@within function origins-spore-blossom:marker/has_base/kill


#
#   Decrease the score of the player in the `o-s-b.ns` objective
#
#   - Only happens to the player that has matching ID as the spore blossom marker
#
scoreboard players remove @s o-s-b.ns 1


function origins-spore-blossom:marker/kill