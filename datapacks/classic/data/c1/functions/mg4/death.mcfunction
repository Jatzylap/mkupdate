scoreboard players reset @s mg4.1
title @s title ["",{"text":"Eliminated!","color":"red"}]
tellraw @a[scores={mg4=1..}] ["",{"text":""},{"selector":"@s","color":"green"},{"text":" has been eliminated!","color":"yellow"}]
playsound entity.tnt.primed master @a[scores={mg4=1..}] ~ ~ ~ 10000 1
scoreboard players set @s mg4 0