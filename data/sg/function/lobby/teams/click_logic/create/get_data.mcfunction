item replace block 35522 67 35502 container.0 from entity @s player.cursor
data modify storage sg:teams new_data.Color set from block 35522 67 35502 Items[0].components.minecraft:custom_data.Color
data modify storage sg:teams new_data.Prefix set from block 35522 67 35502 Items[0].components.minecraft:custom_data.Prefix

item replace block 35522 67 35502 container.0 with air
loot insert 35522 67 35502 loot sg:lobby/player_head
data modify storage sg:teams new_data.Name set from block 35522 67 35502 Items[0].components.minecraft:profile.name

execute store result storage sg:teams new_data.ID int 1 run scoreboard players add $Next teamID 1

function sg:lobby/teams/click_logic/create/new with storage sg:teams new_data