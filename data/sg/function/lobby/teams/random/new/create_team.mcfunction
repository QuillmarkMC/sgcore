execute if score $Debug var matches 3.. run say sg:lobby/teams/random/new/create_team

#choose a team color before passing logic to regular team creation function
execute store result storage sg:teams random_data.ColorIndex int 1 run random value 0..15
function sg:lobby/teams/random/new/pick_color with storage sg:teams random_data
function sg:lobby/teams/click_logic/create/get_data