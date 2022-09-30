execute in overworld run data merge block -47 6 71 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg25"}}'}
scoreboard players enable @a[scores={mg25=1..}] lobby
effect clear @a[scores={mg25=1..}]
effect give @a[scores={mg25=1..}] regeneration 1 255 true
effect give @a[scores={mg25=1..}] saturation 1 255 true
gamemode adventure @a[scores={mg25=1..},tag=RGUplayers]
tag @a[scores={mg25=1..},tag=!RGUplayers] add SPmg25
title @a[scores={mg25=1..},tag=PG,tag=SPmg25] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @a[scores={mg25=1..},tag=PG,tag=SPmg25] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @s subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @a[scores={mg25=1..},tag=PG,tag=SPmg25] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @s subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
execute in overworld run setblock -351 2 -34 redstone_block

#Countdown
scoreboard players set @e[name="M@K",limit=1] mg25 0