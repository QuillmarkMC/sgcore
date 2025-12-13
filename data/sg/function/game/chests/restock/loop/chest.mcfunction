execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/chest

#called with storage sg:restock
#$(ChunkIndex) is the chunk array index that is currently being counted
#$(ChestIndex) is the chest array index within the above chunk that is currently being counted

$data modify storage sg:restock xyz set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].xyz
$data modify storage sg:restock Quality set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Quality
$data modify storage sg:restock SpawnChance set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].SpawnChance
$data modify storage sg:restock Facing set from storage sg:chests Chunks[$(ChunkIndex)].Chests[$(ChestIndex)].Facing
#place chest blocks on first stock of game, only restock existing chests all future restocks
execute unless score $Restocking chestRestock matches 1 run function sg:game/chests/restock/loop/actions/place_chest with storage sg:restock
execute if score $Restocking chestRestock matches 1 run function sg:game/chests/restock/loop/actions/set_loot_table with storage sg:restock

#recursive call, count all chests within chunk
execute store result storage sg:restock ChestIndex int 1 run scoreboard players remove $ChestIndex chestRestock 1
execute if score $ChestIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/recursive/chunk
execute unless score $ChestIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/chest with storage sg:restock
#execute if score $ChestIndex chestRestock matches ..-1 unless score $MasterChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/recursive/chunk