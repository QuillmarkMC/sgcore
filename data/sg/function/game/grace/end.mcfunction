tellraw @a [{"text":"[!] ","color":"yellow","bold": true},{"translate":"sg.game.pvp_grace.end","bold": false,"color": "white"}]
execute as @a at @s run playsound entity.ender_dragon.growl ambient @s ~ ~ ~ 0.75
execute as @a[tag=SGPlaying] run function sg:game/effects/clear_grace
scoreboard players set $GracePeriodActive var 0