scoreboard players remove $Countdown timers 1
execute if score $Countdown timers matches 1..5 run tellraw @a [{"score":{"name":"$Countdown","objective":"timers"},"color": "white"},{"text": "...","color": "white"}]
scoreboard players operation #Temp timers = $Countdown timers
scoreboard players operation #Temp timers %= #2 math
execute if score #Temp timers matches 1 unless score $Countdown timers matches 0..1 as @a at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 0.6
execute if score #Temp timers matches 0 unless score $Countdown timers matches 0..1 as @a at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 0.5
execute if score $Countdown timers matches 1 as @a at @s run playsound block.note_block.hat ambient @s ~ ~ ~ 1 0.8

execute if score $Countdown timers matches 1.. run schedule function sg:lobby/start_logic/countdown/count 1s replace
execute if score $Countdown timers matches 0 run function sg:lobby/start_logic/countdown/end