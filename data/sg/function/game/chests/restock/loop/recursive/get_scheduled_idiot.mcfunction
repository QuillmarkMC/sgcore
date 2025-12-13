execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/get_scheduled_idiot

#count how many ticks were delayed for forceloading
scoreboard players add $Timer chestRestock 1
schedule function sg:game/chests/restock/loop/recursive/get_scheduled_idiot 1t replace

#prepare to loop buffer and check every chunk if its loaded
execute store result score $MasterBufferIndex chestRestock run data get storage sg:restock Buffer
execute store result storage sg:restock MasterBufferIndex int 1 run scoreboard players remove $MasterBufferIndex chestRestock 1
execute if score $MasterBufferIndex chestRestock matches 0.. run function sg:game/chests/restock/loop/buffer/prep_check with storage sg:restock
