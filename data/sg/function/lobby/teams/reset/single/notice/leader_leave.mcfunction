tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"sg.lobby.teams.disband.leader_leave","color":"white","bold": false}]
execute at @s run playsound block.respawn_anchor.deplete ambient @s ~ ~ ~ 1 2

function sg:lobby/teams/leave/return_to_default