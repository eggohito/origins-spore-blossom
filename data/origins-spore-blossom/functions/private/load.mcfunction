#> origins-spore-blossom:private/load
#
#   > The main load function for the `origins-spore-blossom` namespace
#
#@within tag/function load:post_load


#   Add scoreboard objectives
scoreboard objectives add o-s-b.main dummy


#   Set semantic version
scoreboard players set origins-spore-blossom load.status 100

data modify storage origins-spore-blossom: root.version set value "1.0.0"


#   Display a load message
execute unless score #loaded o-s-b.main = #loaded o-s-b.main run tellraw @a {"translate": "[+ Loaded \"Spore Blossom (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "origins-spore-blossom:", "nbt": "root.version"}]}

execute unless score #loaded o-s-b.main = #loaded o-s-b.main run tellraw @a {"translate": "[Spore Blossom (Origins)] Please apply the resourcepack to see the custom assets!", "color": "red"}

execute if score #loaded o-s-b.main = #loaded o-s-b.main run tellraw @a[tag = origins-spore-blossom.debugger] {"translate": "[+ Reloaded \"Spore Blossom (Origins)\" @ v%s]", "color": "green", "with": [{"storage": "origins-spore-blossom:", "nbt": "root.version"}]}

scoreboard players set #loaded o-s-b.main 1


#   Re-initialize tick function
schedule function origins-spore-blossom:private/tick 1t replace