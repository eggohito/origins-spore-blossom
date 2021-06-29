#> origins-spore-blossom:init/dimension
#
#   > Load a normally inaccessible chunk to store a helper entity in
#
#@within
#   advancement origins-spore-blossom:init/dimension
#   function origins-spore-blossom:init/dimension/**


forceload add -30000000 1600

tag @s[tag = o-s-b.marker_remover] remove o-s-b.load

execute at @s[tag = o-s-b.marker_remover] positioned -30000000 0 1600 unless entity @e[tag = o-s-b.marker_remover, distance = ..0.3] run tp @s[tag = o-s-b.marker_remover] -30000000 0 1600


advancement revoke @s only origins-spore-blossom:init/dimension