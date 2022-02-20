scoreboard players set @r[scores={mg3=1..},tag=SpleefLonely,limit=1] mg3.1 1
execute as @a[scores={mg3=1..,mg3.1=1},tag=SpleefPlayers] at @s run tag @a[scores={mg3=1..}] remove SpleefLonely
title @a[scores={mg3=1..}] actionbar ["",{"selector":"@p[scores={mg3=1..,mg3.1=1..},tag=SpleefPlayers]","bold":true},{"text":" has won a","color":"light_purple"},{"text":" Spleef","color":"aqua","bold":"true"},{"text":" game!","color":"light_purple"}]
execute as @a[scores={mg3=1..}] at @s run particle witch ~ ~ ~ 0 0 0 0.1 150 force @s
playsound entity.firework_rocket.launch master @a[scores={mg3=1..}] ~ ~ ~ 100000 2
scoreboard players set @a[scores={mg3.1=1}] mg3.1 2