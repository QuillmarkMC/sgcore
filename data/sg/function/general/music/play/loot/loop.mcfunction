#called with sg:music Selected
#loop background music during loot generation at the beginning of a match
$execute as @a at @s run playsound sg:music.$(name).loot record @s ~ ~ ~ 1 1
$schedule function sg:general/music/play/loot/schedule $(loot_length)t