#pause all ticking if dev enabled
execute if score $State gameState = $Dev gameState run return fail

#handle leavers
execute as @a[scores={leave=1..}] run function sg:general/player/check_dc

#handle player resets
execute as @a[tag=!SGInitSpawned] run tag @s add SGResetPlayer
execute as @a[tag=SGResetPlayer] run function sg:general/player/reset/general

#update dev datapack state
execute if score $DevLoaded var matches 0 run function sg:admin/dev/uninstall
execute if score $DevLoaded var matches 1.. run scoreboard players remove $DevLoaded var 1

#tick game state
execute if score $State gameState = $Lobby gameState run function sg:lobby/tick
execute if score $State gameState = $Game gameState run function sg:game/tick

#survival mode safety check
execute as @a[gamemode=survival,tag=!SG.Bypass_Safety] run function sg:general/safety/survival

#safety warning sound
execute as @a[scores={safetyAlert=1..}] run function sg:general/safety/alert