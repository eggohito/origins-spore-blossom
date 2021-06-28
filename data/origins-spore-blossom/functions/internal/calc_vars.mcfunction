#> origins-spore-blossom:internal/calc_vars
#
#   > Calculate the ticks needed for the spore blossom to fully blossom
#
#@within function origins-spore-blossom:internal/tick


#
#   Calculate rootHeight variables
#
scoreboard players operation #rootHeightY+ o-s-b = $rootMaxHeight o-s-b

scoreboard players operation #rootHeightY- o-s-b = $rootMaxHeight o-s-b

scoreboard players operation #rootHeightY+ o-s-b /= #2 o-s-b

scoreboard players operation #rootHeightY- o-s-b /= #2 o-s-b

scoreboard players operation #rootHeightY- o-s-b *= #-1 o-s-b

scoreboard players operation #rootMaxHeight.tmp o-s-b = $rootMaxHeight o-s-b


#
#   Calculate rootMaxDistance variable
#
scoreboard players operation #rootMaxDistance.chk o-s-b = $rootMaxDistance o-s-b

scoreboard players operation #rootMaxDistance.chk o-s-b *= #10 o-s-b

scoreboard players operation #rootMaxDistance.tmp o-s-b = $rootMaxDistance o-s-b