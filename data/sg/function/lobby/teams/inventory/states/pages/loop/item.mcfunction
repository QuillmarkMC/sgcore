#called with sg:teams page_data

$item replace entity @s enderchest.$(Slot) with phantom_membrane
$item modify entity @s enderchest.$(Slot) [{\
    "function":"set_name",\
    "entity":"this",\
    "name":[\
        {"translate":"sg.lobby.teams.item.team.name","color":"$(Color)","italic":false,"bold":true,with:[{text:"$(Name)"}]}\
    ]\
},\
{\
    "function":set_lore,\
    "entity":"this",\
    "lore":[\
        [{"translate":"sg.lobby.teams.item.team.lore","color":"dark_gray","italic":true}],\
        [{"translate":"sg.lobby.teams.item.team.lore.current_players","color":"#ed771c","italic":false},{"text":"$(CurrentSize)","color":"gray","italic":false}],\
        [{"translate":"sg.lobby.teams.item.team.lore.max_players","color":"#ed771c","italic":false},{"score":{"name":"$MaxTeamSize","objective":"options"},"color":"gray","italic":false}],\
        [{"text":""}],\
        [{"selector":"@a[team=$(ID)]","color":"white","italic":false}]\
    ],\
    "mode":"replace_all"\
},\
{\
    "function":"set_components",\
    "components":{"item_model":"lobby:menu/teams/$(Color)"}\
},\
{\
    "function":"set_custom_data",\
    "tag":{\
        "JoinTeam":true,\
        "TeamSelect":true,\
        "id":$(ID),\
        "name":$(Name)\
    }\
}]
