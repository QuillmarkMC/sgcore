#dont show previous page arrow if there is no previous page
execute unless score @s teamGUI.Page matches 0 run item replace entity @s enderchest.20 with phantom_membrane[item_model="lobby:menu/gui/arrow_left",custom_data={TeamSelect:true,Previous:true},custom_name={"translate":"sg.lobby.teams.item.navigation.previous","color": "gray","italic": false,"bold": true}]
execute if score @s teamGUI.Page matches 0 run item replace entity @s enderchest.20 with air
