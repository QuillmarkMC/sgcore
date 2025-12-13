execute if score $Debug var matches 3.. run say sg:lobby/teams/inventory/update

execute if score @s teamGUI.State matches 0 run function sg:lobby/teams/inventory/states/solos
execute if score @s teamGUI.State matches 1 run function sg:lobby/teams/inventory/states/teams
execute if score @s teamGUI.State matches 2 run function sg:lobby/teams/inventory/states/new_team

scoreboard players reset @s dropPhantom
scoreboard players reset @s enderClick