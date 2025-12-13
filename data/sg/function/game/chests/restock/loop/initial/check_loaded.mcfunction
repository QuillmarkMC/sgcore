execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/initial/check_loaded

#called with storage sg:restock
#the first check to determine if a chunk is loaded. if successful, bypass the buffer and generate loot instantly
data modify storage sg:restock ChunkIndex set from storage sg:restock MasterChunkIndex
$execute store success score #Loaded chestRestock if loaded $(xyz)
execute if score #Loaded chestRestock matches 1 run return run function sg:game/chests/restock/loop/prep_chest with storage sg:restock
execute if score #Loaded chestRestock matches 0 run function sg:game/chests/restock/loop/buffer/prep_add
