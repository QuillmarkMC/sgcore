execute if score $Debug var matches 3.. run say sg:lobby/teams/random/loop/get_id

#called with sg:teams random_data
$data modify storage sg:teams random_data.ID set from storage sg:teams Teams[$(Index)].id
$data modify storage sg:teams random_data.Name set from storage sg:teams Teams[$(Index)].name
function sg:lobby/teams/random/loop/check_team with storage sg:teams random_data