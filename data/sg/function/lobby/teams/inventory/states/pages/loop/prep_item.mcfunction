#called with sg:teams Teams[$(index)]

$data modify storage sg:teams page_data.ID set value $(id)
$data modify storage sg:teams page_data.Name set value $(name)
$data modify storage sg:teams page_data.Color set value $(color)
$execute store result storage sg:teams page_data.CurrentSize int 1 if entity @a[team=$(id)]
function sg:lobby/teams/inventory/states/pages/loop/set_chest_slot

function sg:lobby/teams/inventory/states/pages/loop/item with storage sg:teams page_data