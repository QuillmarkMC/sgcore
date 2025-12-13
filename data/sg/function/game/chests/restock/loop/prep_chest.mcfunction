execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/prep_chest

#called with storage sg:restock
#copy all chest data within a specific chunk into storage
$execute store result score $ChestIndex chestRestock run data get storage sg:chests Chunks[$(ChunkIndex)].Chests
execute store result storage sg:restock ChestIndex int 1 run scoreboard players remove $ChestIndex chestRestock 1
function sg:game/chests/restock/loop/chest with storage sg:restock
