#> origins-spore-blossom:marker/grow
#
#   > Change the model and state of the spore blossom
#
#@within function origins-spore-blossom:marker/tick


#
#   Remove `*_immature` tag, and add `*_mature` tag
#
tag @s remove o-s-b.marker_immature

tag @s add o-s-b.marker_mature


#
#   Change the model of the spore blossom marker
#
data modify entity @s Item.tag.CustomModelData set value 2