bossbar set sg:border color blue
execute store result bossbar sg:border value run scoreboard players get $Timer border
scoreboard players operation #Num1 border = $Timer border
scoreboard players operation #Num2 border = $Timer border
scoreboard players operation #Num1 border /= #60 math
scoreboard players operation #Num2 border %= #60 math
execute if score #Num2 border matches 10.. run bossbar set sg:border name [{"translate":"sg.game.bossbar.grace","color":"#999999"},{"score":{"name":"#Num1","objective":"border"},"color":"white"},{"text": ":","color": "white"},{"score":{"name":"#Num2","objective":"border"},"color":"white"}]
execute if score #Num2 border matches ..9 run bossbar set sg:border name [{"translate":"sg.game.bossbar.grace","color":"#999999"},{"score":{"name":"#Num1","objective":"border"},"color":"white"},{"text": ":0","color": "white"},{"score":{"name":"#Num2","objective":"border"},"color":"white"}]
