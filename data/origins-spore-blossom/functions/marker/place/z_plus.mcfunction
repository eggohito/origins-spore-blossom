#> origins-spore-blossom:marker/place/z_plus
#
#   Summon a marker entity (Z+)
#
#@within function origins-spore-blossom:marker/place


setblock ~ ~ ~ structure_void

summon item_frame ~ ~ ~ {Silent: 1b, Tags: ["o-s-b.marker", "o-s-b.marker_init", "o-s-b.marker_immature", "o-s-b.marker_z_plus"], Item: {id: "minecraft:peony", Count: 1b, tag: {CustomModelData: 1}}, Invulnerable: 1b, Invisible: 1b, Facing: 3b, Fixed: 1b}


function origins-spore-blossom:marker/place/finalize