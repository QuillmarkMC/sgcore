execute store result bossbar sg:loot max run function sg:general/count_chests/all
execute store result bossbar sg:loot value run scoreboard players set $ProgressBar chestRestock 0
bossbar set sg:loot players @a
bossbar set sg:loot visible true