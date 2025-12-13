#check a reconnecting player if they are in this game session
scoreboard players set @s leave 0
execute if score $State gameState = $Game gameState if score @s matchID = $Global matchID if score @s combatTimer matches 1.. if data storage sg:options {Options:{anticheat:1}} run function sg:game/combat/punish
execute if score $State gameState = $Game gameState if score @s matchID = $Global matchID if score $GracePeriodActive var matches 0 if entity @s[tag=SGGraceEffects] run function sg:game/effects/clear_grace

execute unless score @s matchID = $Global matchID run tag @s add SGResetPlayer
execute unless score $State gameState = $Game gameState run tag @s add SGResetPlayer
