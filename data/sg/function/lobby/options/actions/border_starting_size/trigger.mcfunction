execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
#TODO:
execute if score @s value matches ..69 run scoreboard players set @s value 70
execute if score @s value matches 1001.. run scoreboard players set @s value 1000

execute store result storage sg:options Options.border_starting_size int 1 run scoreboard players get @s value
function sg:lobby/options/actions/border_starting_size/update_display