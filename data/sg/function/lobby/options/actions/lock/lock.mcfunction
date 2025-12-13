tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate": "sg.lobby.options.actions.lock.lock","color": "white","bold": false}]
execute at @s run playsound entity.iron_golem.repair ambient @s ~ ~ ~ 1 1.1

scoreboard players set $Locked options 1
tag @s add Admin