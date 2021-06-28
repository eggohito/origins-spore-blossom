#> origins-spore-blossom:projectile/setup
#
#   > Shoot-face a projectile from the player
#
#@private


#
#   Add a tag to the executor
#
tag @s add o-s-b.bulb_projectile.owner


#
#   Projectile set-up
#
function origins-spore-blossom:projectile/get_coords

function origins-spore-blossom:projectile/summon

execute as @e[tag = o-s-b.bulb_projectile_init] run function origins-spore-blossom:projectile/apply_motion


#
#   Remove the tag from the executor
#
tag @s remove o-s-b.bulb_projectile.owner