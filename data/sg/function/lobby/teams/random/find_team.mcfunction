execute if score $Debug var matches 2.. run say sg:lobby/teams/random/find_team
# @s = player who selected random
#check every existing team for available space
#if no teams available, create a new team

execute store result score $TeamRandomIndex lobbyVar run data get storage sg:teams Teams
execute store result storage sg:teams random_data.Index int 1 run scoreboard players remove $TeamRandomIndex lobbyVar 1

function sg:lobby/teams/random/loop/get_id with storage sg:teams random_data
#if entity @s is still on team random, then no available teams were found, so new one must be created
execute if entity @s[team=random] run function sg:lobby/teams/random/new/create_team