#set state to default based on gamemode
execute if data storage sg:options {Options:{team_mode:"solo"}} run scoreboard players set @s teamGUI.State 0
execute if data storage sg:options {Options:{team_mode:"team"}} run scoreboard players set @s teamGUI.State 1
scoreboard players set @s teamGUI.Page 0

function sg:lobby/teams/inventory/update