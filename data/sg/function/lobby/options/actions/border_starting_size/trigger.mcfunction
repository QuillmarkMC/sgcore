execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
execute if score @s value matches ..49 run scoreboard players set @s value 50
execute if score @s value matches 501.. run scoreboard players set @s value 500

execute store result storage sg:options Options.border_starting_size int 1 run scoreboard players get @s value
function sg:lobby/options/actions/border_starting_size/update_display