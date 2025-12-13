tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate": "sg.lobby.options.actions.reset","color": "white","bold": false}]
function sg:lobby/options/reset
execute at @s run playsound entity.warden.death ambient @s ~ ~ ~ 0.75 1.5