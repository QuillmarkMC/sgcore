scoreboard players set $Countdown timers -1

schedule clear sg:game/load
schedule clear sg:lobby/start_logic/countdown/count
schedule clear sg:lobby/entities/check_loaded
function sg:lobby/arena/uninit
execute as @a run function sg:general/music/stop/lobby with storage sg:music Selected