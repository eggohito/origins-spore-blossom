#> origins-spore-blossom:internal/tick
#
#   > The main tick function for the `origins-spore-blossom` namespace
#
#@within
#   function origins-spore-blossom:internal/load
#   function origins-spore-blossom:internal/tick


#
#   Kill the Spore Blossom item entity if dropped, and check if the score of the variables/constants have changed
#
kill @e[type = item, nbt = {Item: {tag: {eggohito: {origins-spore-blossom: {item_type: "spore_blossom"}}}}}]


execute unless score $rootMaxHeight o-s-b = #rootMaxHeight.tmp o-s-b run function origins-spore-blossom:internal/calc_vars

execute unless score $rootMaxDistance o-s-b = #rootMaxDistance.tmp o-s-b run function origins-spore-blossom:internal/calc_vars


#
#   Check if spore blossom markers still have their structure
#
execute as @e[tag = o-s-b.marker] at @s run function origins-spore-blossom:marker/tick


#
#   Run the `*:raycast/summon/init` function as and at the tagged player
#
#   - the tag being `o-s-b-entangle_roots.init`
#
scoreboard players enable @a[tag = o-s-b.player] o-s-b.tp_to

execute as @a[tag = !o-s-b.player, predicate = origins-spore-blossom:has_triggers] run function origins-spore-blossom:internal/triggers

execute as @a[tag = o-s-b.entangle_roots.init] at @s run function origins-spore-blossom:raycast/summon/init


#
#   Check if the projectile has made impact to a block or an entity
#
#   - also updates its `Air` NBT constantly by storing the gametime to it, bypassing the 'client interpolation' done for projectiles
#
execute as @e[tag = o-s-b.bulb_projectile] store result entity @s Air short 1 run time query gametime

execute as @e[tag = o-s-b.bulb_projectile.impact_chkr, predicate = origins-spore-blossom:projectile/has_made_impact] at @s run function origins-spore-blossom:projectile/impact


#
#   Schedule-loop this function
#
schedule function origins-spore-blossom:internal/tick 1t