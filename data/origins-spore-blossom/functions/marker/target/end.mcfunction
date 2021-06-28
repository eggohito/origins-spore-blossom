#> origins-spore-blossom:marker/target/end
#
#   > Teleport to the spore blossom
#
#@within function origins-spore-blossom:marker/target/check


#
#   Teleport the player
#
execute if entity @s[tag = o-s-b.marker_x_minus] run tp @e[tag = self, limit = 1] ~-2 ~ ~

execute if entity @s[tag = o-s-b.marker_x_plus] run tp @e[tag = self, limit = 1] ~2 ~ ~

execute if entity @s[tag = o-s-b.marker_y_minus] run tp @e[tag = self, limit = 1] ~ ~-2 ~

execute if entity @s[tag = o-s-b.marker_y_plus] run tp @e[tag = self, limit = 1] ~ ~ ~

execute if entity @s[tag = o-s-b.marker_z_minus] run tp @e[tag = self, limit = 1] ~ ~ ~-2

execute if entity @s[tag = o-s-b.marker_z_plus] run tp @e[tag = self, limit = 1] ~ ~ ~2