#called with sg:teams find_leader_team_data
$execute store result storage sg:teams find_leader_team_data.ID int 1 run data get storage sg:teams Teams[$(Index)].id
function sg:lobby/teams/leaders/find_team/check_id with storage sg:teams find_leader_team_data

execute store result storage sg:teams find_leader_team_data.Index int 1 run scoreboard players remove $FindLeaderTeamIndex lobbyVar 1
execute unless score $FindLeaderTeamIndex lobbyVar matches ..-1 run function sg:lobby/teams/leaders/find_team/loop with storage sg:teams find_leader_team_data