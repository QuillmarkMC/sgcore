tag @s remove SG.Bypass_Safety
tellraw @s [{"text":"[!] ","color":"green","bold": true},{"translate":"sg.general.safety.bypass.revoke",color:"white",bold:false}]
execute at @s run playsound entity.experience_orb.pickup ambient @s
