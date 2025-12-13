scoreboard players operation $State gameState = $ReturnState gameState
scoreboard players reset $ReturnState gameState

advancement revoke @a only sg:inv_changed

execute if score $State gameState = $Lobby gameState run function sg:lobby/load