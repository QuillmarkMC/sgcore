#called with sg:teams join_data
execute unless predicate sg:lobby/default_team_detect run function sg:lobby/teams/leave/individual

$team join $(ID) @s
$scoreboard players set @s teamID $(ID)
$tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"sg.lobby.teams.join","color":"white","bold": false,"with": [{"text": "$(Name)"}]}]
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update