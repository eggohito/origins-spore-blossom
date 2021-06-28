#> origins-spore-blossom:projectile/impact
#
#   > Do stuff if the projectile has made impact to a block or entity
#
#@within function origins-spore-blossom:internal/tick


#
#   Summon firework rocket and kill the marker entity
#
summon firework_rocket ~ ~ ~ {FireworksItem: {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Flight: 0b, Explosions: [{Type: 0b, Colors: [I; 14289871, 14198794, 15447800], FadeColors: [I; 3552822, 5592405, 0]}]}}}, Silent: 1b}

summon firework_rocket ~ ~ ~ {FireworksItem: {id: "minecraft:firework_rocket", Count: 1b, tag: {Fireworks: {Flight: 0b, Explosions: [{Type: 0b, Colors: [I; 14289871, 14198794, 15447800], FadeColors: [I; 3552822, 5592405, 0]}]}}}, Silent: 1b}

kill @s