#during limited restock modes, check if a given chest should be restocked
#called with sg:restock
$data modify storage sg:restock compare set value "$(Quality)"
execute store result score $CancelThisChest chestRestock run data modify storage sg:restock compare set value "cornucopia"
