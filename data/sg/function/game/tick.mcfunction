#Death check
execute as @a[tag=SGMarkedForDeath] run function sg:game/combat/marked_for_death
execute as @a[scores={deathDelayTimer=0}] run function sg:game/death/location
execute as @a[scores={deathDelayTimer=1..}] run scoreboard players remove @s deathDelayTimer 1
execute as @a[scores={death=1..}] run function sg:game/death/on_death
#execute as @a[scores={death=1..}] run function sg:game/death/location

#check win condition when players dc
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]
execute unless score $CurrentPlayers win = $ExpectedPlayers win run function sg:game/end_game/check_win

#prevent combat logging
execute as @a[scores={combatTimer=1..}] run scoreboard players remove @s combatTimer 1

#TODO:
#out of bounds
#execute as @a[tag=SGPlaying,gamemode=!spectator] run function sg:game/out_of_bounds/check

#prevent dead players from being respawned
execute as @a[tag=SGDeadPlayer,gamemode=!spectator,tag=!SG.Bypass_Safety] run function sg:general/safety/respawn

#rotate countdown timer
execute if score $CountdownTimer.State timers matches 1.. run function sg:game/start_countdown/tick_timer

#TODO:
#map events

#TODO:
#death barrier
#execute as @a[predicate=sg:game/death_barrier,gamemode=!spectator] run function sg:game/death_barrier/kill