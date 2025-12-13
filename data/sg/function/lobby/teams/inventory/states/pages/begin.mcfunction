execute if score $Debug var matches 3.. run say sg:lobby/teams/inventory/states/pages/begin

#formula = (Max teams per page)*(Current selected page) + (loop index) = TEAM LIST INDEX
scoreboard players operation $TeamIndex teamGUI.Page = #14 math
scoreboard players operation $TeamIndex teamGUI.Page *= @s teamGUI.Page

scoreboard players set $LoopIndex teamGUI.Page 0
#execute store result storage sg:teams page_data.LoopIndex int 1 run scoreboard players set $LoopIndex teamGUI.Page 0
execute store result storage sg:teams page_data.TeamIndex int 1 run scoreboard players get $TeamIndex teamGUI.Page
function sg:lobby/teams/inventory/states/pages/loop/check_data_exists with storage sg:teams page_data