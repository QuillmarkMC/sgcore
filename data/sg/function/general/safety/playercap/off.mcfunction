scoreboard players set $EnforcePlayerCap var 0
tellraw @s [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.general.safety.playercap.off",color:"white",bold:false}]
tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.general.safety.playercap.warning1",color:"white",bold:false,with:[{"score":{name:"$MAX_PLAYERS",objective:"var"}},{"translate":"sg.general.safety.playercap.warning2","underlined": true,bold:false,"color": "yellow","click_event": {"action":"suggest_command","command": "/function sg:general/safety/playercap/on"},"hover_event":{"action":"show_text","value":[{"translate":"sg.general.safety.bypass.warning_hover","italic":true,"color":"gray"}]}}]}]
scoreboard players set @s safetyAlert 10
