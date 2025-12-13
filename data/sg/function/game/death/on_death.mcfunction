execute store result score $RemainingPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
scoreboard players operation @s playerPosition = $RemainingPlayers win

title @s times 5 60 20
title @s subtitle [{"translate": "sg.game.title.subtitle","color": "white"},{"score":{"name":"@s","objective":"playerPosition"},"color": "green"},{"text": "/","color": "#70D470"},{"score":{"name":"$TotalPlayers","objective":"win"},"color": "#70D470"}]
title @s title {"color":"dark_red","translate":"sg.game.title.death"}

scoreboard players reset @s combatTimer
tag @s add SGDeadPlayer
tag @s remove SGMarkedForDeath

function sg:game/spawning/spectating/join
scoreboard players set @s deathDelayTimer 1
function sg:game/end_game/check_win
scoreboard players set @s death 0