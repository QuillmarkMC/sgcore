#unloads the currently loaded state, called in each state's main load function
execute if score $State gameState = $Lobby gameState run function sg:lobby/unload
execute if score $State gameState = $Game gameState run function sg:game/unload