# @s = player who was automatically assigned to spectators due to player cap
tellraw @s [{"text":"[!] ","color":"gray","bold": true},{"translate":"sg.game.spectator.overflow","bold": false,"color": "white"}]

tag @s remove SGPlaying
tag @s remove SGNotSpawned
team join spectator
scoreboard players reset @s teamID
function sg:game/spawning/spectating/join