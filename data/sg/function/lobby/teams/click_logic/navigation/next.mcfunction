scoreboard players add @s teamGUI.Page 1

#calculate maximum number of pages
#awkward math is to avoid problems with 0-14 team count, first page has 15 possible list lengths where all other page numbers only have 14
#tldr hardcoded exception when 0 teams exist, then hardcoded -1 to make sure division operation doesnt allow for an extra empty page to be visible
execute store result score $Num1 math run data get storage sg:teams Teams
execute if score $Num1 math matches 0 run scoreboard players add $Num1 math 1
scoreboard players remove $Num1 math 1
scoreboard players operation $Num1 math /= #14 math
#scoreboard players add $Num1 math 1

execute if score @s teamGUI.Page > $Num1 math run scoreboard players operation @s teamGUI.Page = $Num1 math