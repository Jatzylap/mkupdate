scoreboard players set @s mg6.2 1
title @a[scores={mg6.2=1..,mg6.1=0}] title ["",{"text":"You were eliminated!","color":"red","bold":true}]
tellraw @a[scores={mg6=1..},tag=VFplayers] ["",{"text":""},{"selector":"@a[scores={mg6.2=1..,mg6.1=0},tag=VFplayers]","color":"green"},{"text":" has been eliminated from the game!","color":"yellow"}]
playsound entity.wither.spawn master @a[scores={mg6.2=1..},tag=!VFLonely,tag=!VFplayers] ~ ~ ~ 100000 0.8

