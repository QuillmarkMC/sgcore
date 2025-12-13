#called with sg:parkour
$execute positioned $(Pos) positioned ~-1.5 ~ ~-1.5 if entity @s[dx=2,dy=1,dz=2] run function sg:lobby/parkour/checkpoint/collect
$execute positioned $(Pos) run particle glow ~ ~ ~ 0.1 0.1 0.1 1 1 force @s