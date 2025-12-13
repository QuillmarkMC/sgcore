execute unless score $State gameState = $Lobby gameState run return run advancement revoke @s only sg:inv_changed
execute if score $Debug var matches 3.. run say sg:general/players/inventory/update

execute if items entity @s player.cursor phantom_membrane[custom_data~{TeamSelect:true}] run function sg:lobby/teams/click_logic/check
function sg:lobby/teams/inventory/update
execute if score @s inventoryState = $Lobby.Default inventoryState run function sg:lobby/inventory/reset
execute if score @s inventoryState = $Lobby.Arena inventoryState run function sg:lobby/inventory/arena

advancement revoke @s only sg:inv_changed