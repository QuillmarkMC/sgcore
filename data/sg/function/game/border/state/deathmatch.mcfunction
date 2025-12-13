scoreboard players set $Timer border 120
execute store result bossbar sg:border max run scoreboard players get $Timer border
bossbar set sg:border visible true
scoreboard players operation $State border = $Deathmatch border

function sg:game/deathmatch/start
