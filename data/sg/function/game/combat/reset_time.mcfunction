#called by a player when they are attacked by another player
#used to prevent combat logging
advancement revoke @s only sg:attacked
execute if score $State gameState = $Game gameState run scoreboard players operation @s combatTimer = $CombatCooldown combatTimer