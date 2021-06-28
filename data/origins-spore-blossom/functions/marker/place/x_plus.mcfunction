#> origins-spore-blossom:marker/place/x_plus
#
#   Summon a marker entity (X+)
#
#@within function origins-spore-blossom:marker/place


setblock ~ ~ ~ structure_void

summon item_frame ~ ~ ~ {Tags: ["o-s-b.marker", "o-s-b.marker_init", "o-s-b.marker_immature", "o-s-b.marker_x_plus"], Item: {id: "minecraft:peony", Count: 1b, tag: {CustomModelData: 1}}, Invisible: 1b, Facing: 5b, Fixed: 1b}


function origins-spore-blossom:marker/place/finalize