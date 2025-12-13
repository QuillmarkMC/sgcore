#this function will return the total number of chests + anvils on the map
scoreboard players set $TotalChestCount var 0
execute store result score $CountIndex var run data get storage sg:chests Chunks
execute store result storage sg:count Chests.Index int 1 run scoreboard players remove $CountIndex var 1
function sg:general/count_chests/chunk with storage sg:count Chests

return run scoreboard players get $TotalChestCount var