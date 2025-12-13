function sg:lobby/inventory/default_clear

item replace entity @s hotbar.0 with warped_fungus_on_a_stick[unbreakable={},item_model="minecraft:ender_eye",custom_name={"translate": "sg.lobby.teleporter.name","color": "dark_aqua","italic": false},lore=[{"translate":"sg.lobby.teleporter.lore","color": "gray","italic": false}],tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s hotbar.1 with air
item replace entity @s hotbar.2 with air
item replace entity @s hotbar.3 with air
item replace entity @s hotbar.4 with air
item replace entity @s hotbar.5 with air
item replace entity @s hotbar.6 with air
item replace entity @s hotbar.7 with air
item replace entity @s hotbar.8 with air

item replace entity @s weapon.offhand with air

item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
