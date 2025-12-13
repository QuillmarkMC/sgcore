execute if score $Debug var matches 3.. run say sg:game/chests/restock/loop/recursive/check_loaded

#called with storage sg:restock
#determine if specific coordinates are chunk loaded before trying to summon anything there

#only perform the query on first loop at this index (score is reset in sg:game/chests/restock/loop/chunk)
$execute if score $ForceloadQueryOnce chestRestock matches 0 store success score $ForceloadQueryCheck chestRestock positioned $(xyz) run forceload query ~ ~
scoreboard players set $ForceloadQueryOnce chestRestock 1

$execute store success score #Loaded chestRestock if loaded $(xyz)

$execute unless score #Loaded chestRestock matches 1 positioned $(xyz) run forceload add ~ ~
$execute if score #Loaded chestRestock matches 1 unless score $ForceloadQueryCheck chestRestock matches 1 positioned $(xyz) run forceload remove ~ ~

execute unless score #Loaded chestRestock matches 1 run schedule function sg:game/chests/restock/loop/recursive/get_scheduled_idiot 1t replace
execute if score #Loaded chestRestock matches 1 run function sg:game/chests/restock/loop/chest with storage sg:restock


##NOT CALLED