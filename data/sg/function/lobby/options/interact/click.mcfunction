execute unless score $State gameState = $Lobby gameState run return run advancement revoke @s only sg:lobby/click_option

execute store result storage sg:options Interaction.Time long 1 run time query gametime
data modify storage sg:options Interaction.UUID set from entity @s UUID
function sg:lobby/options/interact/find with storage sg:options Interaction
advancement revoke @s only sg:lobby/click_option