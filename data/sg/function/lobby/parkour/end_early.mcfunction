execute if score $Debug var matches 1.. run say sg:lobby/parkour/end_early

scoreboard players reset @s parkourCheckpoint
scoreboard players operation @s respawnState = $Lobby.Default respawnState
title @s actionbar {"text": ""}