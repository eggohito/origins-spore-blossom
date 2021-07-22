#> origins-spore-blossom:marker/kill
#
#   > Kill the marker entity, and do a cleanup
#
#@within function origins-spore-blossom:marker/destroy/finalize


#
#   Remove the coordinates of the chunk the marker is residing in, and do cosmetic stuff
#
kill @s

execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air

function origins-spore-blossom:marker/chunk/get_blossoms

execute if score #sporeBlossomCount o-s-b matches 0 run forceload remove ~ ~


execute align xyz run particle item peony{CustomModelData: 1} ~0.5 ~ ~0.5 0.5 0.5 0.5 0.09 32 normal @a

execute align xyz positioned ~0.5 ~0.5 ~0.5 run playsound minecraft:block.spore_blossom.break block @a ~ ~ ~