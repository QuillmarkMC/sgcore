execute if score $Debug var matches 2.. run say sg:game/spawning/players/teams/spawn_player

# @s = current player getting spawned
execute if score $PlayerCount var >= $MAX_PLAYERS var run return run function sg:game/spawning/players/overflow

scoreboard players add $PlayerCount var 1
#teleport current player to spawn position
execute at @e[type=marker,tag=NextPlayerSpawnPosition,limit=1] run tp @s ~ ~1.5 ~ facing entity @e[type=armor_stand,tag=PlatformCenter,limit=1]
execute at @s summon marker run tag @s add SGSpawnCageMarker
kill @e[type=marker,tag=NextPlayerSpawnPosition,limit=1]
tag @s remove SGNotSpawned

#prepare the next player's spawn position
execute at @s run tag @e[type=marker,tag=PlayerSpawnPlatform,limit=1,sort=nearest] add NextPlayerSpawnPosition