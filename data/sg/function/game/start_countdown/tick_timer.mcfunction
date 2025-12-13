#rotate big timer every tick
execute if score $CountdownTimer.State timers matches 1 as @e[type=item_display,tag=SGCountdownTimer,limit=1] at @s run rotate @s ~0.875 ~
execute if score $CountdownTimer.State timers matches 2 as @e[type=item_display,tag=SGCountdownTimer,limit=1] at @s run rotate @s ~3.5 ~