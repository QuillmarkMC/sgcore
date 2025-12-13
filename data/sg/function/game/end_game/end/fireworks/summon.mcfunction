summon firework_rocket ~ ~2.25 ~ {LifeTime:15,Tags:["SGTempFirework"],FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_twinkle:true,has_trail:true,colors:[3754400]},{shape:"small_ball",has_trail:true,colors:[16299558]}]}}}}
#set owner to prevent self harm
#data modify entity @e[type=firework_rocket,tag=SGTempFirework,limit=1] Owner set from entity @s UUID
tag @e[type=firework_rocket,tag=SGTempFirework,limit=1] remove SGTempFirework
