gamemode adventure
tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{translate:"sg.general.safety.survival1",color:"white",bold:false,with:[{translate:"sg.general.safety.survival2",color:"yellow",underlined:true,bold:false,click_event:{action:"suggest_command",command:"/function sg:general/safety/bypass/allow"},hover_event:{action:"show_text",value:{"translate":"sg.general.safety.bypass.warning_hover",italic:true,color:gray}}}]}]
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
