clear @s
effect clear @s
xp set @s 0 levels
xp set @s 0 points
function sg:general/player/recipes
team leave @s
tag @s add SGInitSpawned
tag @s remove SGResetPlayer
tag @s remove SGPlaying
tag @s remove SGNotSpawned
tag @s remove SGWinner
tag @s remove SGOutOfBounds
tag @s remove SGTeamLead
tag @s remove SGArenaFighter
tag @s remove sgdev.Joined
tag @s remove SGDeadPlayer
tag @s remove SGMarkedForDeath
tag @s remove SGGraceEffects
#tag @s remove Admin
function sg:lobby/options/trigger/reset_tags
scoreboard players reset @s teamID
scoreboard players reset @s openChest
scoreboard players reset @s cancel
scoreboard players reset @s value
scoreboard players operation @s boilingWater = $DamageInterval boilingWater
scoreboard players reset @s safetyAlert
scoreboard players reset @s combatTimer

execute if score $State gameState = $Lobby gameState run function sg:general/player/reset/lobby
execute if score $State gameState = $Game gameState run function sg:general/player/reset/game

execute at @s run spawnpoint @s ~ ~ ~ ~ ~