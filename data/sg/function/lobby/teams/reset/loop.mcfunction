#called with sg:teams
$team remove $(delete_index)

execute store result storage sg:teams delete_index int 1 run scoreboard players remove $Next teamID 1
execute if score $Next teamID matches 1.. run function sg:lobby/teams/reset/loop with storage sg:teams