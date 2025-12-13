execute if score $Debug var matches 3.. run say sg:lobby/teams/random/loop/join_team

#this function preps join_data storage before running the normal join function
data modify storage sg:teams join_data.ID set from storage sg:teams random_data.ID
data modify storage sg:teams join_data.Name set from storage sg:teams random_data.Name
function sg:lobby/teams/click_logic/join/team/get_data