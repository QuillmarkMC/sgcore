#check if its time to start the next deathmatch event
execute if score $Timer border matches 46..90 run function sg:game/deathmatch/events/poison_1
execute if score $Timer border matches 1..45 run function sg:game/deathmatch/events/poison_2