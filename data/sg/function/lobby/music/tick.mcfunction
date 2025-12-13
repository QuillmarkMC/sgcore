scoreboard players remove @s lobbyMusic 1
execute if score @s lobbyMusic matches ..0 unless score $Countdown timers matches 0.. run function sg:lobby/music/loop