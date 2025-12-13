tellraw @a [{"text":"[!] ","color":"aqua","bold": true},{"translate":"sg.lobby.start.begin","bold": false,"with": [{"score": {"name": "$LobbyCountdown","objective": "timers"},"color": "white"}],"color": "white"}]
tellraw @a [{"translate":"sg.lobby.start.cancel.prompt","color":"red","bold": true,"click_event": {"action":"run_command","command": "/trigger cancel"},"hover_event":{"action":"show_text","value":[{"translate":"sg.lobby.start.cancel.hover","italic":true,"color":"gray"}]}}]
scoreboard players operation $Countdown timers = $LobbyCountdown timers
execute if score $ReadyNum lobbyVar matches 1 run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.start.warn.min_players","color":"white","bold": false}]
#check for player cap enforce, give warning
execute if score $EnforcePlayerCap var matches 1 if score $ReadyNum lobbyVar >= $MAX_PLAYERS var run tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.lobby.start.warn.max_players","color":"white","bold": false,"with": [{"score": {"name": "$MAX_PLAYERS","objective": "var"}}]}]

function sg:lobby/start_logic/countdown/count

execute as @a run function sg:lobby/options/trigger/reset_tags
scoreboard players reset * value