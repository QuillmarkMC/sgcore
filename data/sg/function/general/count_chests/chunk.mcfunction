#count all chests (and anvils) within a chunk and add to total
#called with sg:count Chests
$execute store result score $ChestsInThisChunk var run data get storage sg:chests Chunks[$(Index)].Chests
scoreboard players operation $TotalChestCount var += $ChestsInThisChunk var

execute store result storage sg:count Chests.Index int 1 run scoreboard players remove $CountIndex var 1
execute unless score $CountIndex var matches ..-1 run function sg:general/count_chests/chunk with storage sg:count Chests