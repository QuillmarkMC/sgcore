#update the visual size of the border on the lobby map
#TODO:
execute store result entity @e[type=item_display,tag=SGLobbyMapBorder,limit=1] transformation.scale[0] float .01 run data get storage sg:options Options.border_starting_size
execute store result entity @e[type=item_display,tag=SGLobbyMapBorder,limit=1] transformation.scale[2] float .01 run data get storage sg:options Options.border_starting_size

data merge entity @e[type=item_display,tag=SGLobbyMapBorder,limit=1] {start_interpolation:0,interpolation_duration:3}