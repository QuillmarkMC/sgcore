#this function is called every time a player dies and everytime an alive player disconnects
#dont check win condition if game is already over
execute if score $GameOver win matches 1.. run return fail

#get remaining alive player count
execute store result score $CurrentPlayers win if entity @a[tag=SGPlaying,gamemode=!spectator]

#if 0 players left, end game
execute if score $CurrentPlayers win matches ..0 run return run function sg:game/end_game/end/no_winner

#solos win detection
execute if data storage sg:options {Options:{team_mode:"solo"}} if score $CurrentPlayers win matches 1 run function sg:game/end_game/end/winner
#teams win detection
execute if data storage sg:options {Options:{team_mode:"team"}} if score $CurrentPlayers win <= $MaxTeamSize options run function sg:game/end_game/team_check

#update player variables
scoreboard players operation $ExpectedPlayers win = $CurrentPlayers win
