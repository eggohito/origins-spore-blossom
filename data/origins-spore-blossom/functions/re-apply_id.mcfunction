#> origins-spore-blossom:re-apply_id
#
#   > Re-applies the ID to all the currently online players
#
#@user


#
#   Call the `origins-spore-blossom:internal/init` function as all players
#
scoreboard players reset #players o-s-b.pID

execute as @a run function origins-spore-blossom:id/reset_check