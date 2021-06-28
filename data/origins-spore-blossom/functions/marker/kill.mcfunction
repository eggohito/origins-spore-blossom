#> origins-spore-blossom:marker/kill
#
#   > Kill the marker entity, and do a cleanup
#
#@within
#   * origins-spore-blossom:marker/no_base/finalize
#   * origins-spore-blossom:marker/has_base/finalize


execute align xyz run particle item peony{CustomModelData: 1} ~0.5 ~ ~0.5 0.5 0.5 0.5 0.09 32 normal @a

execute align xyz run playsound minecraft:block.wool.break master @a ~0.5 ~0.5 ~0.5 1

execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air

kill @e[tag = o-s-b.self, tag = o-s-b.marker]