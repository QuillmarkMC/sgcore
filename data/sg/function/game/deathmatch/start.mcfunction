function sg:general/music/play/deathmatch with storage sg:music Selected
tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.deathmatch.begin","with": [{"score": {"name": "$Timer","objective": "border"}}],"bold": false,"color": "white"}]
