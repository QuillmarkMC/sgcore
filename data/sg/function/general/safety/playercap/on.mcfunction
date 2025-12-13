scoreboard players set $EnforcePlayerCap var 1
tellraw @s [{"text":"[!] ","color":"green","bold": true},{"translate":"sg.general.safety.playercap.on",color:"white",bold:false,with:[{"score":{name:"$MAX_PLAYERS",objective:"var"}}]}]
execute at @s run playsound entity.experience_orb.pickup ambient @s
