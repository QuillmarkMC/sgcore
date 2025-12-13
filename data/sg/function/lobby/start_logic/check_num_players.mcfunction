execute store result score $ReadyNum lobbyVar if entity @a[team=!lobby,team=!spectator]
execute if score $Countdown timers matches 0.. run scoreboard players set $ReadyNum lobbyVar -1
execute if score $ReadyNum lobbyVar matches 1.. run function sg:lobby/start_logic/begin
execute if score $ReadyNum lobbyVar matches 0 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.start.error.no_players","color":"white","bold": false}]
execute if score $ReadyNum lobbyVar matches -1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.start.error.already_in_progress","color":"white","bold": false}]
scoreboard players reset $ReadyNum lobbyVar