#called every tick after a game load, check to make sure all chunks with map events are loaded before resetting
scoreboard players set $CheckLoaded var 1

#TODO:

execute if score $CheckLoaded var matches 0 run schedule function sg:game/map_events/check_loaded 1t
execute if score $CheckLoaded var matches 1 run function sg:game/map_events/reset_all