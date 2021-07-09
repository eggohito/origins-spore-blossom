#> origins-spore-blossom:init/dimension/summon_marker
#
#   > Summon a marker entity that will remove the spore blossoms later
#
#@within function origins-spore-blossom:init/dimension


#
#   Get the dimension string
#
execute positioned ~ ~-100000 ~ run summon piglin_brute

execute positioned ~ ~-100000 ~ run data modify storage origins-spore-blossom:internal root.init_dimension.current_dimension set from entity @e[type = piglin_brute, limit = 1, distance = 0] Brain.memories."minecraft:home".value.dimension


#
#   Summon the marker remover entity, set its dimension data, and its gametime data
#
summon armor_stand ~ 100000 ~ {Marker: 1b, Invisible: 1b, Tags: ["o-s-b.marker_remover", "o-s-b.marker_remover_init"], ArmorItems: [{}, {}, {}, {id: "minecraft:command_block", Count: 1b, tag: {eggohito: {origins-spore-blossom: {dimension: "null"}}}}]}

data modify entity @e[tag = o-s-b.marker_remover_init, limit = 1] ArmorItems[-1].tag.eggohito.origins-spore-blossom.dimension set from storage origins-spore-blossom:internal root.init_dimension.current_dimension

execute store result score @e[tag = o-s-b.marker_remover_init] o-s-b.gt run time query gametime


#
#   Remove the init tag from the marker remover entity, and do a storage clean up
#
tag @e remove o-s-b.marker_remover_init

data remove storage origins-spore-blossom:internal root.init_dimension