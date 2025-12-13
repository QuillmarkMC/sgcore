#automatically called when dev datapack is no longer detected
scoreboard players set $DevLoaded var -1
tellraw @a [{"text":"[!] ","color":"gold","bold": true},{"translate":"sg.admin.dev.uninstall",color:"white",bold:false}]

scoreboard objectives remove sgdev.var
scoreboard objectives remove sgdev.chestVar
scoreboard objectives remove sgdev.math
scoreboard objectives remove sgdev.array
scoreboard objectives remove sgdev.stats
scoreboard objectives remove sgdev.eggs
scoreboard objectives remove sgdev.toggle_chest_place
scoreboard objectives remove sgdev.chest_place
scoreboard objectives remove sgdev.demo
scoreboard objectives remove sgdev.glow
scoreboard objectives remove sgdev.spawn_chance
scoreboard objectives remove sgdev.common
scoreboard objectives remove sgdev.uncommon
scoreboard objectives remove sgdev.rare
scoreboard objectives remove sgdev.epic
scoreboard objectives remove sgdev.cornucopia
scoreboard objectives remove sgdev.loot

team remove common
team remove uncommon
team remove rare
team remove epic
team remove legendary
team remove cornucopia
team remove anvil

tag @a add SGResetPlayer