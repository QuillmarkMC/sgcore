tag @s add SGArenaFighter
#enable go_to_sleep
scoreboard players operation @s inventoryState = $Lobby.Arena inventoryState
scoreboard players operation @s respawnState = $Lobby.Arena respawnState
advancement grant @s only sg:inv_changed
execute at @s run playsound minecraft:item.goat_horn.sound.0 ambient @a[predicate=sg:lobby/arena/large] ~ ~ ~ 10
function sg:lobby/effects/clear
attribute @s entity_interaction_range base reset