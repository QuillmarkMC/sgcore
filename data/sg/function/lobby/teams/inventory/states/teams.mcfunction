item replace entity @s enderchest.0 with phantom_membrane[item_model="lobby:menu/gui/team_select_1",custom_data={TeamSelect:true},tooltip_display={hide_tooltip:true}]
#item replace entity @s enderchest.1 with air
#item replace entity @s enderchest.2 with air
#item replace entity @s enderchest.3 with air
#item replace entity @s enderchest.4 with air
#item replace entity @s enderchest.5 with air
#item replace entity @s enderchest.6 with air
#item replace entity @s enderchest.7 with air
item replace entity @s enderchest.8 with air
item replace entity @s enderchest.9 with air
#item replace entity @s enderchest.10 with air
#item replace entity @s enderchest.11 with air
#item replace entity @s enderchest.12 with air
#item replace entity @s enderchest.13 with air
#item replace entity @s enderchest.14 with air
#item replace entity @s enderchest.15 with air
#item replace entity @s enderchest.16 with air
item replace entity @s enderchest.17 with air
item replace entity @s enderchest.18 with air
item replace entity @s enderchest.19 with air
function sg:lobby/teams/inventory/states/arrows/previous
item replace entity @s enderchest.21 with phantom_membrane[item_model="lobby:menu/gui/random",custom_data={TeamSelect:true,Random:true},lore=[{"translate": "sg.lobby.teams.item.random.lore","color": "gray","italic": true}],custom_name={"translate":"sg.lobby.teams.item.random.name","color": "light_purple","italic": false,"bold": true}]
item replace entity @s enderchest.22 with phantom_membrane[item_model="lobby:menu/gui/plus",custom_data={TeamSelect:true,NewTeam:true},lore=[{"translate": "sg.lobby.teams.item.new.lore","color": "gray","italic": true}],custom_name={"translate":"sg.lobby.teams.item.new.name","color": "green","italic": false,"bold": true}]
item replace entity @s enderchest.23 with phantom_membrane[item_model="lobby:menu/gui/spectate",custom_data={TeamSelect:true,Spectate:true},lore=[{"translate": "sg.lobby.teams.item.spectator.lore","color": "gray","italic": true}],custom_name={"translate":"sg.lobby.teams.item.spectator.name","color": "gray","italic": false,"bold": true}]
function sg:lobby/teams/inventory/states/arrows/next
item replace entity @s enderchest.25 with air
item replace entity @s enderchest.26 with air

function sg:lobby/teams/inventory/states/pages/begin
