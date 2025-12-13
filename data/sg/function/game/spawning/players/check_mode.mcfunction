execute if score $Debug var matches 1.. run say sg:game/spawning/players/check_mode

scoreboard players set $PlayerCount var 0
#spawn function based on team size
execute if score $EnforcePlayerCap var matches 1 unless score $MaxTeamSize options matches 2.. as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/players/solos/spawn_player
execute if score $EnforcePlayerCap var matches 1 if score $MaxTeamSize options matches 2.. run function sg:game/spawning/players/teams/init
#playercap off
execute if score $EnforcePlayerCap var matches 0 as @a[tag=SGPlaying,sort=random] run function sg:game/spawning/players/no_cap/spawn_player