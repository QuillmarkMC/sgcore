#called when a player dies, or when they click the teleport item
title @s times 0 40 20
execute unless score @s click matches 1.. run title @s title "\uE019"

function sg:lobby/effects/give

execute unless score @s click matches 1.. run tellraw @a {"translate": "sg.lobby.death_message","with": [{"selector": "@s"}]}

#set inventory state inside respawn state function
execute if score @s respawnState = $Lobby.Default respawnState run function sg:lobby/death/respawn/default/spawn
execute if score @s respawnState = $Lobby.Arena respawnState run function sg:lobby/death/respawn/arena/1
execute if score @s respawnState = $Lobby.Parkour respawnState run function sg:lobby/death/respawn/parkour/1

advancement grant @s only sg:inv_changed
scoreboard players set @s death 0
