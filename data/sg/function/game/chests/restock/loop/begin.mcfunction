execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/begin

execute if score $Debug var matches 1.. run tellraw @a[tag=Admin] [{"text":"[!] ","color":"gold","bold": true},{"translate":"sg.admin.chest.restock.begin","bold": false,"color": "white"}]
scoreboard players set $InProgress chestRestock 1
scoreboard players set $Timer chestRestock 0
execute if score $Restocking chestRestock matches 1 run scoreboard players set $CornucopiaLootState chestRestock 1

#get number of chunks, use it as index to loop through chunk array and get all chests per chunk
execute store result score $MasterChunkIndex chestRestock run data get storage sg:chests Chunks
execute if score $Restocking chestRestock matches 0 run function sg:game/chests/bossbar/show
execute if score $Restocking chestRestock matches 0 run function sg:general/music/play/loot/loop with storage sg:music Selected

execute store result storage sg:restock MasterChunkIndex int 1 run scoreboard players remove $MasterChunkIndex chestRestock 1
execute unless score $MasterChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/chunk with storage sg:restock
execute if score $MasterChunkIndex chestRestock matches ..-1 run function sg:game/chests/restock/loop/finish
schedule function sg:game/chests/restock/loop/recursive/get_scheduled_idiot 1t replace
