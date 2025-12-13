scoreboard players add @s parkourTimer 1

scoreboard players operation #Num1 parkourTimer = @s parkourTimer
scoreboard players operation #Num2 parkourTimer = @s parkourTimer
scoreboard players operation #Num3 parkourTimer = @s parkourTimer
scoreboard players operation #Num1 parkourTimer /= #20 math
scoreboard players operation #Num2 parkourTimer /= #20 math
scoreboard players operation #Num1 parkourTimer /= #60 math
scoreboard players operation #Num2 parkourTimer %= #60 math
scoreboard players operation #Num3 parkourTimer %= #20 math
scoreboard players operation #Num3 parkourTimer /= #2 math
execute if score #Num2 parkourTimer matches 10.. run title @s actionbar [{"score":{"name":"#Num1","objective":"parkourTimer"},"color":"green"},{"text": ":","color": "green"},{"score":{"name":"#Num2","objective":"parkourTimer"},"color":"green"},{"text": ".","color": "green"},{"score":{"name":"#Num3","objective":"parkourTimer"},"color":"green"}]
execute if score #Num2 parkourTimer matches ..9 run title @s actionbar [{"score":{"name":"#Num1","objective":"parkourTimer"},"color":"green"},{"text": ":0","color": "green"},{"score":{"name":"#Num2","objective":"parkourTimer"},"color":"green"},{"text": ".","color": "green"},{"score":{"name":"#Num3","objective":"parkourTimer"},"color":"green"}]
