tag @s add Win
advancement grant @s[scores={mg18=1..},tag=Win] only mk:achieve_all mg18
advancement grant @s[scores={mg18=1..},tag=Win] only mk:unlock_all mg18
tellraw @a[scores={mg18=1..},tag=!PG,tag=Drop1] ["",{"selector":"@a[scores={mg18=1..},tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg18=1..},tag=PG] ["",{"selector":"@a[scores={mg18=1..},tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg18=1..}] ["",{"selector":"@s","color":"yellow","bold":true},{"text":" has just completed ","color":"yellow","bold":true},{"text":"R","color":"red","bold":true},{"text":"A","color":"gold","bold":true},{"text":"I","color":"yellow","bold":true},{"text":"N","color":"green","bold":true},{"text":"B","color":"aqua","bold":true},{"text":"O","color":"light_purple","bold":true},{"text":"W","color":"white","bold":true},{"text":" Parkour","bold":true},{"text":"!","color":"yellow","bold":true}]
execute unless entity @s[scores={mg18=1..}] run function c3:mg18/end