execute if score $Debug var matches 2.. run say sg:game/spawning/platforms/loop/data
# @s = platform position marker

data merge entity @s {Tags:["PlayerSpawnPlatform","SGSpawnMarker"]}
execute at @s run place template sg:player/spawn_platform ~-1 ~ ~-1

#make sure marker is block aligned
execute at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~