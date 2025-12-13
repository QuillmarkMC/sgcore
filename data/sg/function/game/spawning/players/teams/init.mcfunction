#tag players and first spawn position
tag @a[tag=SGPlaying] add SGNotSpawned
tag @e[type=marker,tag=PlayerSpawnPlatform,limit=1,sort=random] add NextPlayerSpawnPosition

execute as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/players/teams/identify_team