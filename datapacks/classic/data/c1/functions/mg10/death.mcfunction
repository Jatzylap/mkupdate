scoreboard players set @a[scores={mg10=1..,mg10.1=0},y=4,distance=..1,tag=CMplayers] mg10.2 1
title @a[scores={mg10.2=1..,mg10.1=0}] title ["",{"text":"You were eliminated!","color":"red","bold":true}]
tellraw @a[scores={mg10=1..},tag=CMplayers] ["",{"text":""},{"selector":"@a[scores={mg10.2=1..,mg10.1=0},tag=CMplayers]","color":"green"},{"text":" has been colour-matched by the game!","color":"yellow"}]
playsound entity.wither.spawn master @a[scores={mg10.2=1..},tag=!CMlonely,tag=!CMplayers] ~ ~ ~ 100000 0.8