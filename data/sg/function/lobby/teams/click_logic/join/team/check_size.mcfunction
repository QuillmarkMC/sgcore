#prevent player from joining a full team or a team they are already on
#called with sg:teams join_data

$execute store result score #TempTeam teamID if entity @a[team=$(ID)]
$scoreboard players set #TempNum teamID $(ID)
#no join
execute if score @s teamID = #TempNum teamID run return run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.teams.already_on_team","color":"white","bold": false}]
execute if score #TempTeam teamID >= $MaxTeamSize options run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.teams.full","color":"white","bold": false}]
#yes join
execute unless score #TempTeam teamID >= $MaxTeamSize options run function sg:lobby/teams/click_logic/join/team/allow with storage sg:teams join_data