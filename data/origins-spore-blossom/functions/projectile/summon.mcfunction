#> origins-spore-blossom:projectile/summon
#
#   > Summon the projectile entity
#
#@within function origins-spore-blossom:projectile/setup


execute anchored eyes positioned ^ ^ ^0.5 run summon snowball ~ ~ ~ {Tags: ["o-s-b.bulb_projectile", "o-s-b.bulb_projectile_init"], Item: {id: "minecraft:peony", Count: 1b, tag: {CustomModelData: 1}}, Passengers: [{id: "minecraft:area_effect_cloud", Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["o-s-b.bulb_projectile.impact_chkr"]}]}


#
#   Set the projectile's `Owner` to be the executor's `UUID`
#
data modify entity @e[tag = o-s-b.bulb_projectile_init, limit = 1] Owner set from entity @s UUID