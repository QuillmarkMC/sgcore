execute unless predicate sg:lobby/default_team_detect run function sg:lobby/teams/leave/individual

team join random @s
tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"sg.lobby.teams.random","color":"white","bold": false}]