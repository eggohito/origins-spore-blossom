#> origins-spore-blossom:raycast/summon/init
#
#   > Cast a ray that would summon 'roots'
#
#@user


#
#   Set up raycast components, and cast the ray
#
function origins-spore-blossom:raycast/summon/reset
execute rotated 0 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated 180 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated 90 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated -90 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated 45 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated -45 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated 135 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process

function origins-spore-blossom:raycast/summon/reset
execute rotated -135 0 anchored feet positioned ^ ^ ^ run function origins-spore-blossom:raycast/summon/process



execute at @e[tag = o-s-b.chomper_play_sound] run playsound minecraft:entity.zombie.break_wooden_door master @a ~ ~ ~ 0.2 0.5

tag @e remove o-s-b.chomper_play_sound

tag @s remove o-s-b.entangle_roots.init