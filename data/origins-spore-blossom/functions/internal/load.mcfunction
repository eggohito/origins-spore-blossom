#> origins-spore-blossom:internal/load
#
#   > The main load function for the `origins-spore-blossom` namespace
#
#@within tag/function load:load


#
#   Display a load message (only visible to players with the `o-s-b.debugger` tag)
#
tellraw @a[tag = o-s-b.debugger] {"text": "[+ Loaded \"Spore Blossom (Origins)\"]", "color": "green"}

execute unless score #load o-s-b = #load o-s-b run tellraw @a {"translate": "[Spore Blossom (Origins)] Please apply the resourcepack to see the custom assets!", "color": "red"}


#
#   Add scoreboard objective(s)
#
scoreboard objectives add o-s-b dummy {"text": "o-s-b (main)"}


scoreboard objectives add o-s-b.t dummy {"text": "o-s-b.t (Blossom Ticks)"}

scoreboard objectives add o-s-b.it dummy {"text": "o-s-b.it (Blossom Interval Ticks)"}


scoreboard objectives add o-s-b.ns dummy {"text": "o-s-b.ns (Network Size)"}

scoreboard objectives add o-s-b.pID dummy {"text": "o-s-b.pID (Player ID)"}

scoreboard objectives add o-s-b.bID dummy {"text": "o-s-b.bID (Blossom ID)"}

scoreboard objectives add o-s-b.nID dummy {"text": "o-s-b.nID (Network ID)"}


scoreboard objectives add o-s-b.placed dummy {"text": "o-s-b.placed (Placed Spore Blossom)"}

scoreboard objectives add o-s-b.dmgb dummy {"text": "o-s-b.dmgb (Damaged Bulb)"}

scoreboard objectives add o-s-b.tp_to trigger {"text": "o-s-b.tp_to (Teleport to)"}


#
#   Set consts/vars
#
execute unless score #load o-s-b = #load o-s-b run function origins-spore-blossom:.conf/default


scoreboard players set #load o-s-b 1

scoreboard players set #-1 o-s-b -1

scoreboard players set #2 o-s-b 2

scoreboard players set #3 o-s-b 3

scoreboard players set #10 o-s-b 10


#
#   Re-initialize tick function
#
schedule function origins-spore-blossom:internal/tick 1t replace