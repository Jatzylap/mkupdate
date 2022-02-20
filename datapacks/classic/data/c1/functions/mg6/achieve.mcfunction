scoreboard players set @a[scores={mg6=1..},tag=VFLonely,limit=1] mg6.1 1
execute as @a[scores={mg6=1..,mg6.1=1},tag=VFplayers] at @s run tag @a[scores={mg6=1..}] remove VFLonely
title @a[scores={mg6=1..}] actionbar ["",{"selector":"@p[scores={mg6=1..,mg6.1=1..},tag=VFplayers]","bold":true},{"text":" has won a","color":"white"},{"text":" Volcano Floor","color":"gold","bold":"true"},{"text":" game!","color":"white"}]
execute as @a[scores={mg6=1..}] at @s run particle witch ~ ~ ~ 1 1 1 0.1 900 force @s
playsound block.note_block.chime master @a[scores={mg6=1..}] ~ ~ ~ 100000 2
scoreboard players set @a[scores={mg6.1=1}] mg6.1 2
clear @a #vf_items{CPG:1b}
clear @a[scores={mg6=1..}] glass_bottle