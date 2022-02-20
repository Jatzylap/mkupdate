scoreboard players set @a[scores={mg7=1..},tag=TRLonely,limit=1] mg7.1 1
execute as @a[scores={mg7=1..,mg7.1=1},tag=TRplayers] at @s run tag @a[scores={mg7=1..}] remove TRLonely
title @a[scores={mg7=1..}] actionbar ["",{"selector":"@p[scores={mg7=1..,mg7.1=1..},tag=TRplayers]","bold":true},{"text":" has won a","color":"yellow"},{"text":" TNT Run","color":"red","bold":"true"},{"text":" game!","color":"yellow"}]
execute as @a[scores={mg7=1..}] at @s run particle witch ~ ~ ~ 1 1 1 0.1 900 force @s
playsound block.note_block.chime master @a[scores={mg7=1..}] ~ ~ ~ 100000 2