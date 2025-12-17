#make sure dev mode is actually enabled before allowing it to be disabled
execute unless score $State gameState = $Dev gameState run return run function sg:admin/dev/unavailable

scoreboard players operation $State gameState = $ReturnState gameState
scoreboard players reset $ReturnState gameState

advancement revoke @a only sg:inv_changed

execute if score $State gameState = $Lobby gameState run function sg:lobby/load