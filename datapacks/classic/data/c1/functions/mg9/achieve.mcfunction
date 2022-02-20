scoreboard players set @r[scores={mg9=1..},team=!mg9,tag=TTplayers] mg9.1 1
title @a[scores={mg9=1..}] actionbar ["",{"selector":"@p[scores={mg9=1..,mg9.1=1..},tag=TTplayers]","bold":true},{"text":" has won a","color":"aqua"},{"text":" TNT Tag","color":"red","bold":"true"},{"text":" game!","color":"aqua"}]
execute as @a[scores={mg9=1..}] at @s run particle witch ~ ~ ~ 1 1 1 0.1 900 force @s
playsound block.note_block.chime master @a[scores={mg9=1..}] ~ ~ ~ 100000 2