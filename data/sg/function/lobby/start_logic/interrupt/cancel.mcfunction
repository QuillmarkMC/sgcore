scoreboard players set $Countdown timers -1
scoreboard players reset * cancel
schedule clear sg:lobby/start_logic/countdown/count
tellraw @a {"translate":"sg.lobby.start.cancel.success","color":"white","with": [{"selector": "@s"}]}