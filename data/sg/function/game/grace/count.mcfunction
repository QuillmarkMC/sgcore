execute if score $Countdown timers = $PvpGrace.Half timers run tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.grace_period.expire_soon",color:"white",bold:false,with:[{score:{name:"$Countdown",objective:"timers"}}]}]
execute if score $Countdown timers = $PvpGrace.Half timers as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75
execute if score $Countdown timers = $PvpGrace.Quarter timers run tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.grace_period.expire_soon",color:"white",bold:false,with:[{score:{name:"$Countdown",objective:"timers"}}]}]
execute if score $Countdown timers = $PvpGrace.Quarter timers as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75

execute unless score $Countdown timers matches ..0 run schedule function sg:game/grace/count 1s
execute if score $Countdown timers matches ..0 run function sg:game/grace/end
scoreboard players remove $Countdown timers 1