scoreboard players reset @s cancel
execute if score $Locked options matches 1 unless entity @s[tag=Admin] run return run function sg:lobby/options/interact/locked
function sg:lobby/start_logic/interrupt/cancel