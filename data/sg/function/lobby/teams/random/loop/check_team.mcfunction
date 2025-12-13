execute if score $Debug var matches 3.. run say sg:lobby/teams/random/loop/check_team

#called with sg:teams random_data
#if
$execute store result score #TempTeam teamID if entity @a[team=$(ID)]
execute if score #TempTeam teamID < $MaxTeamSize options run return run function sg:lobby/teams/random/loop/join_team with storage sg:teams random_data

#else
execute store result storage sg:teams random_data.Index int 1 run scoreboard players remove $TeamRandomIndex lobbyVar 1
execute unless score $TeamRandomIndex lobbyVar matches ..-1 run function sg:lobby/teams/random/loop/get_id with storage sg:teams random_data
