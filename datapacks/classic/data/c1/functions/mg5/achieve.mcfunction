scoreboard players set @r[scores={mg5=1..},tag=SDlonely,limit=1] mg5.1 1
execute as @a[scores={mg5=1..,mg5.1=1},tag=SDplayers] at @s run tag @a[scores={mg5=1..}] remove SDlonely
title @a[scores={mg5=1..}] actionbar ["",{"selector":"@p[scores={mg5=1..,mg5.1=1..},tag=SDplayers]","bold":true},{"text":" has won an","color":"dark_aqua"},{"text":" Avalanche","color":"white","bold":"true"},{"text":" game!","color":"dark_aqua"}]
execute as @a[scores={mg5=1..}] at @s run particle witch ~ ~ ~ 1 1 1 0.1 700 force @s
playsound entity.firework_rocket.launch master @a[scores={mg5=1..}] ~ ~ ~ 100000 2
scoreboard players set @a[scores={mg5.1=1}] mg5.1 2