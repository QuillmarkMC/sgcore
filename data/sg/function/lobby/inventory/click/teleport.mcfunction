function sg:lobby/death/on_death
execute at @s run playsound entity.enderman.teleport ambient @s ~ ~ ~ 1 1

scoreboard players reset @s click