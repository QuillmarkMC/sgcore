data modify storage sg:options Options set from storage sg:options Defaults
execute store result score $MaxTeamSize options run data get storage sg:options Options.max_team_size
function sg:lobby/options/actions/border_starting_size/update_display

execute unless score $Locked options matches 1.. run scoreboard players set $Locked options 0