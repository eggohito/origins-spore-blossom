#> origins-spore-blossom:marker/chunk/delete/current/end
#
#   > End the process
#
#@within function origins-spore-blossom:marker/chunk/delete/current


#
#   Kill the spore blossom marker entity
#
execute if block ~ ~ ~ structure_void run setblock ~ ~ ~ air

forceload remove ~ ~

kill @s


#
#   Remove the selected index from the array
#
data remove storage origins-spore-blossom:internal root.process.saved_chunks[{delete: 1b}]


#
#   Copy the contents of a temporary array to the main array
#
data modify storage origins-spore-blossom:internal root.saved_chunks set from storage origins-spore-blossom:internal root.process.saved_chunks