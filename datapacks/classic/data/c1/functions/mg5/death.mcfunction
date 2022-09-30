scoreboard players set @s mg5.3 1
title @a[scores={mg5.3=1..,mg5.1=0}] title ["",{"text":"You were eliminated!","color":"red","bold":true}]
tellraw @a[scores={mg5=0..},tag=SDplayers] ["",{"text":""},{"selector":"@a[scores={mg5.3=1..,mg5.1=0},tag=SDplayers]","color":"green"},{"text":" has been eliminated from the game!","color":"yellow"}]
playsound entity.wither.spawn master @s ~ ~ ~ 100000 0.8