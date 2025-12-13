#called with sg:teams find_leader_team_data
# -1 = team has leader, 0.. = team has no leader and should be disbanded
$execute unless entity @a[tag=SGTeamLead,scores={teamID=$(ID)},limit=1] run scoreboard players set $TeamLeaveID lobbyVar $(ID)
execute if score $TeamLeaveID lobbyVar matches 0.. run function sg:lobby/teams/reset/single/begin
$execute if score $TeamLeaveID lobbyVar matches 0.. as @a[scores={teamID=$(ID)}] run function sg:lobby/teams/reset/single/notice/leader_leave
scoreboard players set $TeamLeaveID lobbyVar -1