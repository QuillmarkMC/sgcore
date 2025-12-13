execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
execute if score @s value matches ..0 run scoreboard players set @s value 1
execute if score @s value matches 360001.. run scoreboard players set @s value 360000

execute store result storage sg:options Options.grace_period int 1 run scoreboard players get @s value