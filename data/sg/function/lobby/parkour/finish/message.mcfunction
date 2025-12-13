#called with sg:parkour message
$execute if score #Num2 parkourTimer matches 10.. run data modify storage sg:parkour message.output set value "$(Num1):$(Num2).$(Num3)"
$execute if score #Num2 parkourTimer matches ..9 run data modify storage sg:parkour message.output set value "$(Num1):0$(Num2).$(Num3)"

tellraw @a [{"text":"[!] ","color":"dark_blue","bold": true},{"translate":"sg.lobby.parkour.complete","color": "white","bold": false,"with": [{"selector": "@s"},{"storage": "sg:parkour","nbt": "message.output","color": "green"}]}]
