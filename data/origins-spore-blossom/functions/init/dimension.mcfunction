#> origins-spore-blossom:init/dimension
#
#   > Load a normally inaccessible chunk to store a helper entity in
#
#@within
#   advancement origins-spore-blossom:init/dimension
#   function origins-spore-blossom:internal/load


execute store success score #phiChunkAlreadyLoaded o-s-b run forceload query -30000000 1600

execute if score #phiChunkAlreadyLoaded o-s-b matches 0 run forceload add -30000000 1600


#
#   Summon the marker remover entity, and check if the chunk is already populated
#
function origins-spore-blossom:init/dimension/summon_marker

schedule function origins-spore-blossom:init/dimension/marker_check 20t append


#
#   Revoke the advancement
#
advancement revoke @s only origins-spore-blossom:init/dimension