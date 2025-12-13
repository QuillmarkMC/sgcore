execute if score $Locked options matches 1 run data modify entity @e[type=text_display,tag=SGLobbyOptions.lock,limit=1] text set value {"translate": "sg.lobby.options.display.lock.value.unlock"}
execute if score $Locked options matches 0 run data modify entity @e[type=text_display,tag=SGLobbyOptions.lock,limit=1] text set value {"translate": "sg.lobby.options.display.lock.value.lock"}
