execute if score $Debug var matches 2.. run say sg:lobby/teams/leave/disband

execute as @a if score @s[tag=!SGTeamLead] teamID = $TeamLeaveID lobbyVar run function sg:lobby/teams/reset/single/notice/leader_leave
tag @s remove SGTeamLead
function sg:lobby/teams/reset/single/begin
