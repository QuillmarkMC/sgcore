#called with sg:options Options
#border delay based on lobby settings
execute store result score $Timer border run data get storage sg:options Options.border_delay
execute store result bossbar sg:border max run scoreboard players get $Timer border
bossbar set sg:border visible true
scoreboard players operation $State border = $Grace border
function sg:game/border/update
$schedule function sg:game/border/state/prep_shrink $(border_delay)s
