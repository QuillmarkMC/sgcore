execute if entity @s[tag=SGEdit.max_team_size] run function sg:lobby/options/actions/max_team_size/trigger
execute if entity @s[tag=SGEdit.border_delay] run function sg:lobby/options/actions/border_delay/trigger
execute if entity @s[tag=SGEdit.border_shrink_time] run function sg:lobby/options/actions/border_shrink_time/trigger
execute if entity @s[tag=SGEdit.border_starting_size] run function sg:lobby/options/actions/border_starting_size/trigger
execute if entity @s[tag=SGEdit.grace_period] run function sg:lobby/options/actions/grace_period/trigger
execute if entity @s[tag=SGEdit.chest_restock_time] run function sg:lobby/options/actions/chest_restock_time/trigger

function sg:lobby/options/trigger/reset_tags
scoreboard players reset @s value
function sg:lobby/options/display/update_all
