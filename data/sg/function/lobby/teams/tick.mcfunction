#called every tick by any player in range of team selection

#reset chest state upon opening chest
execute if score @s enderClick matches 1.. run function sg:lobby/teams/inventory/states/reset
execute if score @s dropPhantom matches 1.. run function sg:lobby/teams/inventory/update

execute if items entity @s player.cursor phantom_membrane[custom_data~{TeamSelect:true}] run advancement grant @s only sg:inv_changed
