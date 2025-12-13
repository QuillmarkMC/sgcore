execute if score $Debug var matches 1.. run say sg:lobby/parkour/start

execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
tellraw @s [{"text":"[!] ","color":"dark_blue","bold": true},{"translate":"sg.lobby.parkour.start","color": "white","bold": false}]
scoreboard players reset @s parkourTimer
scoreboard players operation @s respawnState = $Lobby.Parkour respawnState