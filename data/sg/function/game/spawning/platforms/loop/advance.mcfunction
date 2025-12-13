execute if score $Debug var matches 2.. run say sg:game/spawning/platforms/loop/advance
# @s = armor stand center
#function is executed at @s
$execute positioned ^ ^ ^$(Distance) summon marker run function sg:game/spawning/platforms/loop/data
$tp @s ~ ~ ~ ~$(Angle) ~

scoreboard players add $Count platformVar 1
execute unless score $Count platformVar >= $NumPlayers platformVar at @s run function sg:game/spawning/platforms/loop/advance with storage sg:platforms Platform