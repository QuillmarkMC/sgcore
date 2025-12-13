execute if score $Debug var matches 2.. run say sg:game/spawning/players/teams/identify_team

scoreboard players operation $MatchTeamID teamID = @s teamID
execute as @a[tag=SGNotSpawned,sort=random] if score @s teamID = $MatchTeamID teamID run function sg:game/spawning/players/teams/spawn_player

#recursive call until all teams have spawned
execute as @a[tag=SGPlaying,tag=SGNotSpawned,sort=random,limit=1] run function sg:game/spawning/players/teams/identify_team