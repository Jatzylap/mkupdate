scoreboard players set @s mg7.2 1
title @a[scores={mg7.2=1..,mg7.1=0}] title ["",{"text":"You were eliminated!","color":"red","bold":true}]
tellraw @a[scores={mg7=1..},tag=TRplayers] ["",{"text":""},{"selector":"@a[scores={mg7.2=1..,mg7.1=0},tag=TRplayers]","color":"green"},{"text":" has been eliminated from the game!","color":"yellow"}]
playsound entity.wither.spawn master @a[scores={mg7.2=1..},tag=!TRLonely,tag=!TRplayers] ~ ~ ~ 100000 0.8