tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.end.time","color": "white","bold": false}]

title @a times 5 120 20
#alive players
title @a[gamemode=!spectator,tag=SGPlaying] subtitle [{"translate": "sg.game.title.subtitle","color": "white"},{"text":"?","color": "red"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
#dead players
execute as @a[gamemode=spectator,tag=SGPlaying] run title @s subtitle [{"translate": "sg.game.title.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=!SGPlaying] subtitle ""
title @a title {"color":"red","translate":"sg.game.title.lose"}

execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.5

effect give @a[gamemode=!spectator] resistance infinite 10 true
function sg:game/deathmatch/events/reset

scoreboard players set $GameOver win 1
scoreboard players set $Timer border -1
schedule function sg:game/end_game/end/transition 160t