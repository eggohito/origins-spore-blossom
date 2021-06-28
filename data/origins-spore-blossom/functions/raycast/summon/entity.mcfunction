#> origins-spore-blossom:raycast/summon/entity
#
#   > Summon the fang entity
#
#@within function origins-spore-blossom:raycast/summon/process


#
#   Reset the variable that's responsible for counting how many iterations has it been
#
scoreboard players set #root.curInterval o-s-b 0


#
#   Summon the fang entity, and set its `Owner` NBT as the executor's `UUID`
#
execute if score $altRootsSound o-s-b matches 1.. run summon evoker_fangs ~ ~ ~ {Tags: ["o-s-b.chomper", "o-s-b.chomper_init", "o-s-b.chomper_play_sound"], Silent: 1b}

execute if score $altRootsSound o-s-b matches ..0 run summon evoker_fangs ~ ~ ~ {Tags: ["o-s-b.chomper", "o-s-b.chomper_init"], Silent: 0b}

data modify entity @e[tag = o-s-b.chomper_init, limit = 1] Owner set from entity @s UUID

tag @e remove o-s-b.chomper_init