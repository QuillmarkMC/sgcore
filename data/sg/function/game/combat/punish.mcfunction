#if a reconnecting player logged out while in combat, kill them and show death message
tag @s add SGMarkedForDeath
tellraw @a [{"text":"[!] ","color":"red","bold": true},{"translate":"sg.game.combat.punish","color": "white","with": [{"selector": "@s"}],"bold": false}]