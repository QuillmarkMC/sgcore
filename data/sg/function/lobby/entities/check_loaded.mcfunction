#called every tick after a lobby load, check to make sure all chunks with entities are loaded before killing/summoning new ones
scoreboard players set $CheckLoaded var 1

#options board
execute unless loaded 35527 61 35505 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35527 61 35498 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35527 61 35483 run scoreboard players set $CheckLoaded var 0
#map
execute unless loaded 35546 65 35496 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35558 65 35496 run scoreboard players set $CheckLoaded var 0
#pvp arena logo
execute unless loaded 35619 67 35495 run scoreboard players set $CheckLoaded var 0
#pvp arena glass ceiling
execute unless loaded 35596 77 35498 run scoreboard players set $CheckLoaded var 0
#parkour fog
execute unless loaded 35549 53 35543 run scoreboard players set $CheckLoaded var 0
#guapo tank
execute unless loaded 35507 62 35496 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35503 62 35496 run scoreboard players set $CheckLoaded var 0
#credits
execute unless loaded 35609 79 35509 run scoreboard players set $CheckLoaded var 0
execute unless loaded 35609 79 35483 run scoreboard players set $CheckLoaded var 0
#dance floor
execute unless loaded 35601 61 35562 run scoreboard players set $CheckLoaded var 0

execute if score $CheckLoaded var matches 0 run schedule function sg:lobby/entities/check_loaded 1t
execute if score $CheckLoaded var matches 1 run function sg:lobby/entities/summon