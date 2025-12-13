#dont show next page arrow if there is no next page
#math logic copied from sg:lobby/teams/click_logic/navigation/next
execute store result score $Num1 math run data get storage sg:teams Teams
execute if score $Num1 math matches 0 run scoreboard players add $Num1 math 1
scoreboard players remove $Num1 math 1
scoreboard players operation $Num1 math /= #14 math

execute if score @s teamGUI.Page < $Num1 math run item replace entity @s enderchest.24 with phantom_membrane[item_model="lobby:menu/gui/arrow_right",custom_data={TeamSelect:true,Next:true},custom_name={"translate":"sg.lobby.teams.item.navigation.next","color": "gray","italic": false,"bold": true}]
execute unless score @s teamGUI.Page < $Num1 math run item replace entity @s enderchest.24 with air
