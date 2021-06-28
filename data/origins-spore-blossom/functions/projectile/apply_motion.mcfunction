#> origins-spore-blossom:projectile/apply_motion
#
#   > Apply the saved values to the projectile entity
#
#@within function origins-spore-blossom:projectile/setup


execute store result entity @s Motion[0] double 0.001 run scoreboard players get #projectileX o-s-b
execute store result entity @s Motion[1] double 0.001 run scoreboard players get #projectileY o-s-b
execute store result entity @s Motion[2] double 0.001 run scoreboard players get #projectileZ o-s-b


#
#   Remove the init tag
#
tag @s remove o-s-b.bulb_projectile_init