tellraw @a[predicate=!sg:lobby/team_size_reset_detect] [{"text":"[!] ","color":"blue","bold": true},{"translate": "sg.lobby.teams.disband.size_changed","color": "white","bold": false}]
execute as @a[predicate=!sg:lobby/team_size_reset_detect] run function sg:lobby/teams/leave/return_to_default
function sg:lobby/teams/reset/delete_all