execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/buffer/add

#called with storage sg:restock
#if the initial chunk load check fails, add the chunk index and forceload query to the storage buffer so it can be checked again every tick
$data modify storage sg:restock Buffer append value {ChunkIndex:$(MasterChunkIndex)}
$data modify storage sg:restock Buffer[$(BufferIndex)].ChunkPos set from storage sg:restock xyz
$execute store result storage sg:restock Buffer[$(BufferIndex)].ForceloadQuery int 1 positioned $(xyz) run forceload query ~ ~
$execute positioned $(xyz) run forceload add ~ ~

function sg:game/chests/restock/loop/recursive/chunk
