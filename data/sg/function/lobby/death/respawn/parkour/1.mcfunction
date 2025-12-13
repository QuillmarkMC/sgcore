scoreboard players operation $RespawnIndex lobbyVar = @s parkourCheckpoint
execute unless score $RespawnIndex lobbyVar matches 0 run scoreboard players remove $RespawnIndex lobbyVar 1
execute store result storage sg:lobby_spawns index int 1 run scoreboard players get $RespawnIndex lobbyVar
function sg:lobby/death/respawn/parkour/2 with storage sg:lobby_spawns

execute if score $RespawnIndex lobbyVar matches 0 run function sg:lobby/parkour/end_early