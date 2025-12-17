#cannot kill player the same tick they join the server
#so instead attempt kill them every tick until it works
gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true