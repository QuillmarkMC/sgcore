execute store result score $CurrentTeamLeads lobbyVar if entity @a[tag=SGTeamLead]
execute if score $CurrentTeamLeads lobbyVar < $ExpectedTeamLeads lobbyVar run function sg:lobby/teams/leaders/find_team/begin

scoreboard players operation $ExpectedTeamLeads lobbyVar = $CurrentTeamLeads lobbyVar