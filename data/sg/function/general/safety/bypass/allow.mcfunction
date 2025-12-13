tag @s add SG.Bypass_Safety
tellraw @s [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.general.safety.bypass.allow",color:"white",bold:false}]
tellraw @s [{"text":"[!] ","color":"dark_red","bold": true},{"translate":"sg.general.safety.bypass.warning1",color:"white",bold:false,with:[{"translate":"sg.general.safety.bypass.warning2","underlined": true,bold:false,"color": "yellow","click_event": {"action":"suggest_command","command": "/function sg:general/safety/bypass/remove"},"hover_event":{"action":"show_text","value":[{"translate":"sg.general.safety.bypass.warning_hover","italic":true,"color":"gray"}]}}]}]
scoreboard players set @s safetyAlert 10
