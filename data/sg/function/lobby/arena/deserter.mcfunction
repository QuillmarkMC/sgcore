tag @s remove SGArenaFighter
#scoreboard players reset @s go_to_sleep
scoreboard players operation @s inventoryState = $Lobby.Default inventoryState
scoreboard players operation @s respawnState = $Lobby.Default respawnState
advancement grant @s only sg:inv_changed
function sg:lobby/effects/give
attribute @s entity_interaction_range base set 5.5