#> origins-spore-blossom:marker/place/z_minus
#
#   Summon a marker entity (Z-)
#
#@within function origins-spore-blossom:marker/place


setblock ~ ~ ~ structure_void

summon item_frame ~ ~ ~ {Tags: ["o-s-b.marker", "o-s-b.marker_init", "o-s-b.marker_immature", "o-s-b.marker_z_minus"], Item: {id: "minecraft:peony", Count: 1b, tag: {CustomModelData: 1}}, Invisible: 1b, Facing: 2b, Fixed: 1b}


function origins-spore-blossom:marker/place/finalize