#stop current music, then switch selected music before starting again
execute as @a run function sg:general/music/stop/lobby with storage sg:music Selected

data modify storage sg:options Options.soundtrack set value 0

data modify storage sg:music Selected set from storage sg:music Soundtracks[0]
execute store result score $Length lobbyMusic run data get storage sg:music Selected.lobby_length

execute as @a run function sg:lobby/music/loop