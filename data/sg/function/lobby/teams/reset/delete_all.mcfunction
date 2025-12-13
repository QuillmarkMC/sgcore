data remove storage sg:teams Teams

#loop through teamIDs and delete teams
execute store result storage sg:teams delete_index int 1 run scoreboard players get $Next teamID
execute if score $Next teamID matches 1.. run function sg:lobby/teams/reset/loop with storage sg:teams

scoreboard players reset * teamID
scoreboard players set $Next teamID 0
tag @a remove SGTeamLead