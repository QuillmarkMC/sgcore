execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/chunk

#called with storage sg:restock
$data modify storage sg:restock xyz set from storage sg:chests Chunks[$(MasterChunkIndex)].Pos
function sg:game/chests/restock/loop/initial/check_loaded with storage sg:restock
