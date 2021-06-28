#> origins-spore-blossom:marker/target/set
#
#   > Set the target spore blossom to teleport to
#
#@within function origins-spore-blossom:marker/target/check


#
#   Set a temporary variable's value to 1
#
scoreboard players set #tpSucceed o-s-b 1


#
#   Add a tag to indicate the target entity to teleport to
#
tag @s add o-s-b.tp_to.target