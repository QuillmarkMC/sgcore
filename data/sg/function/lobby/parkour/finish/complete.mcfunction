execute if score $Debug var matches 1.. run say sg:lobby/parkour/finish/complete

execute at @s run playsound ui.toast.challenge_complete ambient @s ~ ~ ~ 1 1
scoreboard players reset @s parkourCheckpoint
scoreboard players operation @s respawnState = $Lobby.Default respawnState

summon firework_rocket 35551.5 90.0 35565.5 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[3754400]},{shape:"small_ball",has_trail:true,colors:[16299558]}]}}}}
summon firework_rocket 35547.5 90.0 35565.5 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[3754400]},{shape:"small_ball",has_trail:true,colors:[16299558]}]}}}}

#formatting prep for timer display logic
scoreboard players operation #Num1 parkourTimer = @s parkourTimer
scoreboard players operation #Num2 parkourTimer = @s parkourTimer
scoreboard players operation #Num3 parkourTimer = @s parkourTimer
scoreboard players operation #Num1 parkourTimer /= #20 math
scoreboard players operation #Num2 parkourTimer /= #20 math
scoreboard players operation #Num1 parkourTimer /= #60 math
scoreboard players operation #Num2 parkourTimer %= #60 math
scoreboard players operation #Num3 parkourTimer %= #20 math
scoreboard players operation #Num3 parkourTimer /= #2 math

execute store result storage sg:parkour message.Num1 int 1 run scoreboard players get #Num1 parkourTimer
execute store result storage sg:parkour message.Num2 int 1 run scoreboard players get #Num2 parkourTimer
execute store result storage sg:parkour message.Num3 int 1 run scoreboard players get #Num3 parkourTimer
function sg:lobby/parkour/finish/message with storage sg:parkour message