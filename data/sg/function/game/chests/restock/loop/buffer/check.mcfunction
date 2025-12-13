execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/buffer/check

#called with storage sg:restock
$execute store success score #Loaded chestRestock if loaded $(BufferPos)

$execute if score #Loaded chestRestock matches 1 run data remove storage sg:restock Buffer[$(MasterBufferIndex)]
$execute if score #Loaded chestRestock matches 1 unless score $ForceloadQueryValue chestRestock matches 1 positioned $(BufferPos) run forceload remove ~ ~
execute if score #Loaded chestRestock matches 1 run function sg:game/chests/restock/loop/prep_chest with storage sg:restock

execute store result storage sg:restock MasterBufferIndex int 1 run scoreboard players remove $MasterBufferIndex chestRestock 1
execute if score $MasterBufferIndex chestRestock matches 0.. run function sg:game/chests/restock/loop/buffer/prep_check with storage sg:restock