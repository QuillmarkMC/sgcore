execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/buffer/prep_check

#called with storage sg:restock
$data modify storage sg:restock ChunkIndex set from storage sg:restock Buffer[$(MasterBufferIndex)].ChunkIndex
$data modify storage sg:restock BufferPos set from storage sg:restock Buffer[$(MasterBufferIndex)].ChunkPos
$execute store result score $ForceloadQueryValue chestRestock run data get storage sg:restock Buffer[$(MasterBufferIndex)].ForceloadQuery
function sg:game/chests/restock/loop/buffer/check with storage sg:restock