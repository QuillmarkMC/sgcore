execute if score $Debug var matches 2.. run say sg:game/chests/restock/loop/actions/set_loot_table
$execute if score $Debug var matches 1.. unless loaded $(xyz) run tellraw @a[tag=Admin] [{"text":"[!] ","color":"gold","bold": true},{"translate":"sg.admin.chest.error.set_loot_failed","bold": false,"color": "white","with": [{"text": "$(xyz)"}]}]

#called with storage sg:restock
scoreboard players set $CancelThisChest chestRestock 0
#if chest restock is set to cornucopia only, check if the current chest is cornucopia quality before restocking it
execute if score $Restocking chestRestock matches 1 if data storage sg:options {Options:{chest_restock_mode:"cornucopia"}} run function sg:game/chests/restock/loop/actions/check_restock_mode with storage sg:restock
execute if score $CancelThisChest chestRestock matches 1 run return fail

$data merge block $(xyz) {Items:[],LootTable:""}
$data modify block $(xyz) LootTable set value "sg:chests/base/$(Quality)"
