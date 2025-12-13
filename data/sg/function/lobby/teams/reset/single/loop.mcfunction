execute if score $Debug var matches 3.. run say sg:lobby/teams/reset/single/loop
#called with with sg:teams disband_data

execute store result storage sg:teams disband_data.ID int 1 run scoreboard players get $TeamLeaveID lobbyVar
# 0 = team found, 1 = team not found
$execute store success score #MatchFoundInverted lobbyVar run data modify storage sg:teams disband_data.ID set from storage sg:teams Teams[$(Index)].id
execute if score #MatchFoundInverted lobbyVar matches 0 run return run function sg:lobby/teams/reset/single/remove with storage sg:teams disband_data

#if team not found
execute store result storage sg:teams disband_data.Index int 1 run scoreboard players remove $TeamDisbandIndex lobbyVar 1
execute unless score $TeamDisbandIndex lobbyVar matches ..-1 run function sg:lobby/teams/reset/single/loop with storage sg:teams disband_data