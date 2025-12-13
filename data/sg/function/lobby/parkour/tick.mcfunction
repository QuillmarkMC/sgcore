execute if score $Debug var matches 4.. run say sg:lobby/parkour/tick

#called every tick as @a from lobby tick function
execute store result storage sg:parkour Index int 1 run scoreboard players get @s parkourCheckpoint
function sg:lobby/parkour/checkpoint/get_index with storage sg:parkour

execute if score @s parkourCheckpoint matches 1.. run function sg:lobby/parkour/timer/update

execute if score @s parkourCheckpoint matches 1.. if predicate sg:lobby/parkour/early_leave run function sg:lobby/parkour/end_early
execute if predicate sg:lobby/parkour/respawn run function sg:lobby/parkour/respawn