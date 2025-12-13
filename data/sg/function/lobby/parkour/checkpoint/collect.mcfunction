execute if score $Debug var matches 1.. run say sg:lobby/parkour/checkpoint/collect

scoreboard players add @s parkourCheckpoint 1

execute if score @s parkourCheckpoint matches ..1 run function sg:lobby/parkour/start
execute if score @s parkourCheckpoint matches 2..6 at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 1
execute if score @s parkourCheckpoint matches 2..6 run tellraw @s [{"text":"[!] ","color":"dark_blue","bold": true},{"translate":"sg.lobby.parkour.checkpoint","color": "white","bold": false}]
execute if score @s parkourCheckpoint matches 7.. run function sg:lobby/parkour/finish/complete
