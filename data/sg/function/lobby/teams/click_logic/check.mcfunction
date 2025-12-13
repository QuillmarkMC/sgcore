execute if score $Debug var matches 1.. run say sg:lobby/teams/click_logic/check

execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Previous:true}] run function sg:lobby/teams/click_logic/navigation/previous
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Next:true}] run function sg:lobby/teams/click_logic/navigation/next
execute if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Back:true}] run function sg:lobby/teams/click_logic/navigation/back_to_main

execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{NewTeam:true}] run function sg:lobby/teams/click_logic/create/prompt
execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{CreateTeam:true}] run function sg:lobby/teams/click_logic/create/get_data
execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{JoinTeam:true}] run function sg:lobby/teams/click_logic/join/team/get_data
execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Ready:true}] run function sg:lobby/teams/click_logic/join/ready
execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Spectate:true}] run function sg:lobby/teams/click_logic/join/spectate
execute unless score $Countdown timers matches 0.. if items entity @s player.cursor phantom_membrane[minecraft:custom_data~{Random:true}] run function sg:lobby/teams/click_logic/join/random

execute if score $Countdown timers matches 0.. run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.teams.countdown_in_progress","color":"white","bold": false}]

item replace entity @s player.cursor with air
