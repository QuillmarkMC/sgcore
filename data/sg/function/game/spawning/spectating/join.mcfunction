execute if score $Debug var matches 3.. run say sg:game/spawning/spectating/join

# @s = player being put into spectator, either at the beginning of a match or after death
gamemode spectator
execute if entity @s[team=] run team join spectator
#TODO:
spawnpoint @s 1 92 1
execute unless entity @s[tag=SGPlaying] run tp @s @e[type=marker,tag=SGSpectatorSpawnMarker,limit=1]