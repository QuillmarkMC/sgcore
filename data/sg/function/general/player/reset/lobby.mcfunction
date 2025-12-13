tp @s 35531.5 60.0 35496.5 90.0 0.0
function sg:lobby/effects/give
function sg:lobby/music/loop
scoreboard players reset @s enderClick
scoreboard players set @s parkourCheckpoint 0
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
scoreboard players operation @s respawnState = $Lobby.Default respawnState
advancement grant @s only sg:inv_changed
gamemode adventure
team join lobby
attribute @s entity_interaction_range base set 5.5