#PLAYERS RELEASED, GAME BEGINS
#start pvp grace period
function sg:game/grace/start

#TODO:
#VFX
summon lightning_bolt 0 94 0
execute as @a at @s run playsound block.anvil.place ambient @s ~ ~ ~ 0.75

#Unleash the beasts
execute at @e[type=marker,tag=SGSpawnCageMarker] run fill ~1 ~3 ~1 ~-1 ~-2 ~-1 air replace brown_stained_glass
kill @e[type=marker,tag=SGSpawnCageMarker]

#remove saturation, apply short hunger effect to get rid of excess saturation
effect clear @a[tag=SGPlaying] saturation
effect give @a[tag=SGPlaying] hunger 5 100 true

#destroy timer model
kill @e[type=item_display,tag=SGCountdownTimer,limit=1]
scoreboard players set $CountdownTimer.State timers 0

#bossbar
function sg:game/border/state/grace with storage sg:options Options

#schedule chest restock
execute unless data storage sg:options {Options:{chest_restock_mode:"none"}} run function sg:game/chests/restock/schedule with storage sg:options Options