#unload previous state
function sg:general/change_state

#set gamestate
scoreboard players operation $State gameState = $Lobby gameState

function sg:game/border/set_lobby

scoreboard players set $Countdown timers -1
scoreboard players set $ExpectedTeamLeads lobbyVar 0
scoreboard players set $CurrentTeamLeads lobbyVar 0

gamerule fallDamage false
gamerule showDeathMessages false
gamerule naturalRegeneration true
gamerule keepInventory true
difficulty easy

#resummon entities when all chunks are loaded
function sg:lobby/entities/load

function sg:lobby/arena/init
function sg:lobby/death/respawn/init
function sg:lobby/parkour/checkpoint/data

function sg:lobby/teams/reset/delete_all
function sg:lobby/teams/random/init
execute unless block 35522 67 35502 chest run setblock 35522 67 35502 chest[facing=west]
