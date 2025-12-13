#called with entity Interaction custom data
$execute if score $Locked options matches 1 if predicate {"condition": "minecraft:random_chance","chance": $(AdminLocked)} unless entity @s[tag=Admin] run return run function sg:lobby/options/interact/locked

execute at @s run playsound ui.button.click ambient @s ~ ~ ~ 0.25 0.75
$function $(Function)

function sg:lobby/options/display/update_all