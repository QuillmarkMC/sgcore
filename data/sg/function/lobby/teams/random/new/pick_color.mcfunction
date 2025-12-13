#returns a random color for the new team
$data modify storage sg:teams new_data.Color set from storage sg:teams random_data.Colors[$(ColorIndex)]
$data modify storage sg:teams new_data.Prefix set from storage sg:teams random_data.Icons[$(ColorIndex)]