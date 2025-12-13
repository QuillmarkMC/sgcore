execute if score $Debug var matches 2.. run say sg:lobby/teams/reset/single/begin

# $TeamLeaveID lobbyVar must be set before calling this function, it is the ID of the team that should be deleted
execute store result score $TeamDisbandIndex lobbyVar run data get storage sg:teams Teams
execute store result storage sg:teams disband_data.Index int 1 run scoreboard players remove $TeamDisbandIndex lobbyVar 1

function sg:lobby/teams/reset/single/loop with storage sg:teams disband_data