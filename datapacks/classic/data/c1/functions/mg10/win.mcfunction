scoreboard players set @a[scores={mg10=1..},tag=CMlonely,limit=1] mg10.1 1
execute as @a[scores={mg10=1..,mg10.1=1},tag=CMplayers] at @s run tag @a[scores={mg10=1..}] remove CMlonely
title @a[scores={mg10=1..}] actionbar ["",{"selector":"@p[scores={mg10=1..,mg10.1=1..},tag=CMplayers]","bold":true},{"text":" has won a ","color":"yellow"},{"text":"Colour ","color":"white","bold":"true"},{"text":"Match","color":"light_purple","bold":"true"},{"text":" game!","color":"yellow"}]
execute as @a[scores={mg10=1..}] run particle witch ~ ~ ~ 1 1 1 0.1 900 force @s
playsound entity.firework_rocket.launch master @a[scores={mg10=1..}] ~ ~ ~ 100000 2