execute if score $Debug var matches 4.. run say sg:lobby/teams/inventory/states/pages/loop/check_data_exists
#called with sg:teams page_data

$execute store success score #Success teamGUI.Page if data storage sg:teams Teams[$(TeamIndex)]
$execute if score #Success teamGUI.Page matches 1 run function sg:lobby/teams/inventory/states/pages/loop/prep_item with storage sg:teams Teams[$(TeamIndex)]
execute if score #Success teamGUI.Page matches 0 run function sg:lobby/teams/inventory/states/pages/loop/prep_empty

scoreboard players add $LoopIndex teamGUI.Page 1
execute store result storage sg:teams page_data.TeamIndex int 1 run scoreboard players add $TeamIndex teamGUI.Page 1

execute if score $LoopIndex teamGUI.Page matches ..13 run function sg:lobby/teams/inventory/states/pages/loop/check_data_exists with storage sg:teams page_data