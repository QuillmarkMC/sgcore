execute at @s run playsound entity.experience_orb.pickup ambient @s ~ ~ ~ 1 1
execute if score @s value matches ..0 run scoreboard players set @s value 1
#compare new team size value against old value, change team mode if necessary
execute if score @s value < $MaxTeamSize options run function sg:lobby/options/actions/max_team_size/reduce_team_size
execute if score @s value > $MaxTeamSize options if score $MaxTeamSize options matches 1 run function sg:lobby/options/actions/max_team_size/clear_ready_team

execute store result storage sg:options Options.max_team_size int 1 run scoreboard players operation $MaxTeamSize options = @s value
execute if score $MaxTeamSize options matches 1 run data modify storage sg:options Options.team_mode set value "solo"
execute unless score $MaxTeamSize options matches 1 run data modify storage sg:options Options.team_mode set value "team"

execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/inventory/update