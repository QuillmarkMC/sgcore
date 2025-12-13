execute if score $Countdown timers matches 0.. run return fail
tellraw @s [{"text":"[!] ","color":"blue","bold": true},{"translate":"sg.lobby.options.actions.edit","color": "white","bold": false,"with": [{"translate": "sg.lobby.options.actions.edit.command","color":"yellow","underlined":true,"click_event": {"action":"suggest_command","command": "/trigger value set "},"hover_event":{"action":"show_text","value":[{"translate":"sg.lobby.options.actions.hover_prompt","italic":true,"color":"gray","bold": false}]}}]}]
scoreboard players enable @s value
tag @s add SGEdit.max_team_size
execute at @s run playsound block.note_block.pling ambient @s ~ ~ ~ 1 1
