advancement revoke @s only sg:lobby/credits/translators
tellraw @s [{"text":"[!] ","color":"dark_green","bold": true},{"translate": "sg.lobby.credits.translation.thanks","color":"green","bold": false}]
tellraw @s {"translate": "sg.lobby.credits.translation.zh_cn","color":"white","bold": false,"italic":false}
tellraw @s {"translate": "sg.lobby.credits.translation.ja_jp","color":"white","bold": false,"italic":false}
tellraw @s {"translate": "sg.lobby.credits.translation.fr_fr","color":"white","bold": false,"italic":false}
tellraw @s {"translate": "sg.lobby.credits.translation.contact","color":"gray","bold": false,"italic":true}
execute at @s run playsound block.note_block.bit ambient @s ~ ~ ~ 1 2
