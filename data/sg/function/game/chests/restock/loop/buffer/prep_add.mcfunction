execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/buffer/prep_add

#if the initial chunk load check fails, add the chunk index to the storage buffer so it can be checked again every tick
execute store result storage sg:restock BufferIndex int 1 run data get storage sg:restock Buffer
function sg:game/chests/restock/loop/buffer/add with storage sg:restock
