execute if score $Debug var matches 2.. run say sg:lobby/teams/leave/individual

#check if @s was team leader, if yes then disband team
execute if entity @s[tag=SGTeamLead] run function sg:lobby/teams/leave/disband

function sg:lobby/teams/leave/return_to_default