#dont enable dev mode unless in lobby state
execute unless score $State gameState = $Lobby gameState run return run function sg:admin/dev/unavailable

scoreboard players operation $ReturnState gameState = $State gameState
scoreboard players operation $State gameState = $Dev gameState

worldborder set 9999999