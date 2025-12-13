#check every tick if players are standing in marked out of bounds locations
scoreboard players set $CheckPlayer oob 0
execute store success score $CheckPlayer oob if entity @s[predicate=sg:game/out_of_bounds/all]

execute if score $CheckPlayer oob matches 1 if entity @s[tag=!SGOutOfBounds] run function sg:game/out_of_bounds/start_player
execute if score $CheckPlayer oob matches 0 if entity @s[tag=SGOutOfBounds] run function sg:game/out_of_bounds/end_player

execute if entity @s[tag=SGOutOfBounds] run function sg:game/out_of_bounds/timer