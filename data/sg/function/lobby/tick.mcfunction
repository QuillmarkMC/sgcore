#tick team selection chest for nearby players
execute as @a[predicate=sg:lobby/team_select] run function sg:lobby/teams/tick

#check if a team lead disconnected, disband their team if true
function sg:lobby/teams/leaders/tick

#check if a player left the arena without dying
execute as @a[tag=SGArenaFighter,predicate=!sg:lobby/arena/deserter] unless score @s death matches 1.. run function sg:lobby/arena/deserter

#check if player entered arena
execute as @a[tag=!SGArenaFighter,predicate=sg:lobby/arena/enter,gamemode=!spectator] run function sg:lobby/arena/enter

#respawn dead players (place anytime after arena entrance check)
execute as @e[type=player,scores={death=1..}] run function sg:lobby/death/on_death

#tick parkour logic per player
execute as @a run function sg:lobby/parkour/tick

#timer for music looping
execute as @a run function sg:lobby/music/tick

#MC-251555 lol
execute as @a[predicate=sg:lobby/team_select] if items entity @s weapon.offhand * run advancement grant @s only sg:inv_changed

#click detection
execute as @a[scores={click=1..}] run function sg:lobby/inventory/click/teleport

#unlock settings if no admins online
execute if score $Locked options matches 1 unless entity @a[tag=Admin] run function sg:lobby/options/actions/lock/auto_unlock

#cancel start countdown trigger
execute as @a[scores={cancel=1..}] run function sg:lobby/start_logic/interrupt/check_permission
execute if score $Countdown timers matches 1.. run scoreboard players enable @a cancel

#options edit value trigger
execute as @a[scores={value=-2147483648..2147483647}] unless score @s value matches 0 run function sg:lobby/options/trigger/value

#puff the fish
execute as @e[type=pufferfish,tag=SGGuapo,limit=1] run data merge entity @s {PuffState:2}

kill @e[type=item]