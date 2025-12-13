#identify all players on the winning team
scoreboard players operation $Temp teamID = @a[tag=SGPlaying,gamemode=!spectator,limit=1] teamID
execute as @a if score @s teamID = $Temp teamID run tag @s add SGWinner

#tag winners to get VIP lobby access, persists through resets
tag @a[tag=SGWinner] add SGVictoryRoyale

tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.congrats","color": "white","bold": false,"with": [{"selector": "@a[tag=SGWinner]"}]}]

title @a times 5 120 20
#winners
title @a[tag=SGWinner] subtitle [{"translate": "sg.game.title.subtitle","color": "white"},{"text":"1","color": "gold"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=SGWinner] title {"color":"#F3DD4F","translate":"sg.game.title.win","bold": true}
#not winners
execute as @a[tag=!SGWinner,tag=SGPlaying] run title @s subtitle [{"translate": "sg.game.title.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @a[tag=!SGPlaying] subtitle ""
title @a[tag=!SGWinner] title {"color":"red","translate":"sg.game.title.lose"}

scoreboard players operation $FireworkFanfare win = $TotalFireworks var
function sg:game/end_game/end/fireworks/schedule
execute as @a at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1.5

effect give @a[tag=SGWinner] resistance infinite 10 true
function sg:game/deathmatch/events/reset

scoreboard players set $GameOver win 1
schedule function sg:game/end_game/end/transition 160t
schedule clear sg:game/border/update
