scoreboard players set @s mg3.2 1
title @s title ["",{"text":"You were eliminated!","color":"red","bold":true}]
tellraw @a[scores={mg3=1..}] ["",{"text":""},{"selector":"@r[scores={mg3.2=1..},tag=SpleefPlayers]","color":"green"},{"text":" has been eliminated from the game!","color":"light_purple"}]
tag @s remove SpleefPlayers
execute store result bossbar spleef_countdown value if entity @a[scores={mg3=1..},tag=!SpleefLonely,tag=SpleefPlayers]
playsound entity.wither.spawn master @a[scores={mg3.2=1..},tag=!SpleefLonely,tag=!SpleefPlayers] ~ ~ ~ 100000 0.8
tag @a[scores={mg3=1..}] remove SpleefLonely