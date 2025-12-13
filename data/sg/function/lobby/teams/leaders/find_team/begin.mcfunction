execute if score $Debug var matches 2.. run say sg:lobby/teams/leaders/find_team/begin

execute store result score $FindLeaderTeamIndex lobbyVar run data get storage sg:teams Teams
execute store result storage sg:teams find_leader_team_data.Index int 1 run scoreboard players remove $FindLeaderTeamIndex lobbyVar 1

scoreboard players set $TeamLeaveID lobbyVar -1
function sg:lobby/teams/leaders/find_team/loop with storage sg:teams find_leader_team_data

execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update