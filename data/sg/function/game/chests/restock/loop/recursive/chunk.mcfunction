execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/chunk

#separated the recursive logic into new function so it could be handled over multiple ticks
#get current buffer size
execute store result score $CurrentBufferSize chestRestock run data get storage sg:restock Buffer

#check if there are any more chunks in the list
#if chunks are empty, check if buffer is also empty before finishing
#if chunks are not empty, check if buffer is full before checking next chunk
execute if score $CurrentBufferSize chestRestock < $MAX_LOOT_BUFFER var store result storage sg:restock MasterChunkIndex int 1 run scoreboard players remove $MasterChunkIndex chestRestock 1
execute if score $MasterChunkIndex chestRestock matches ..-1 if score $CurrentBufferSize chestRestock matches ..0 if score $InProgress chestRestock matches 1 run function sg:game/chests/restock/loop/finish
execute unless score $MasterChunkIndex chestRestock matches ..-1 if score $CurrentBufferSize chestRestock < $MAX_LOOT_BUFFER var run function sg:game/chests/restock/loop/chunk with storage sg:restock
