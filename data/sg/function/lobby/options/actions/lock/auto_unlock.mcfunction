tellraw @a [{"text":"[!] ","color":"blue","bold": true},{"translate": "sg.lobby.options.actions.lock.auto_unlock","color": "white","bold": false}]
execute as @a at @s run playsound entity.iron_golem.death ambient @s ~ ~ ~ 1 1.5

scoreboard players set $Locked options 0
function sg:lobby/options/display/individual/lock