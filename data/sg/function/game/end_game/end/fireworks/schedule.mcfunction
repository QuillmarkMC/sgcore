scoreboard players remove $FireworkFanfare win 1
execute as @a[tag=SGWinner] at @s run function sg:game/end_game/end/fireworks/summon
execute if score $FireworkFanfare win matches 1.. run schedule function sg:game/end_game/end/fireworks/schedule 1s