#> origins-spore-blossom:id/reset_pair
#
#   > Reset the player and its spore blossom marker's ID
#
#@within function origins-spore-blossom:id/reset_check


#
#   Reset the player and the blossom marker's IDs
#
scoreboard players reset @s o-s-b.bID


#
#   Create a new unique ID for the player, and import the value to the blossom marker
#
scoreboard players operation @s o-s-b.bID = @a[tag = self, limit = 1] o-s-b.pID