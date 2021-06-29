#> origins-spore-blossom:marker/chunk/delete/relative/end
#
#   > End the process
#
#@within function origins-spore-blossom:marker/chunk/delete


#
#   Remove the selected index from the array
#
data remove storage origins-spore-blossom:internal root.check.saved_chunks[{selected: 1b}]


#
#   Copy the contents of a temporary array to the main array
#
data modify storage origins-spore-blossom:internal root.saved_chunks set from storage origins-spore-blossom:internal root.check.saved_chunks