bossbar add sg:border ""
bossbar set sg:border style progress

#bossbar display states
scoreboard players set $Grace border 1
scoreboard players set $Shrink border 2
scoreboard players set $Deathmatch border 3

#loot generation progress
bossbar add sg:loot ""
bossbar set sg:loot name [{"translate": "sg.game.bossbar.chest_loot","color": "gray"}]
bossbar set sg:loot style progress
bossbar set sg:loot color green