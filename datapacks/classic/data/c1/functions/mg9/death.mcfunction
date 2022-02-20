scoreboard players set @a[scores={mg9=1..},team=mg9,tag=TTplayers] mg9.2 1
playsound block.end_gateway.spawn master @a[scores={mg9=1..}] ~ ~ ~ 1 1 1
execute as @a[scores={mg9=1..,mg9.2=1..},team=mg9] at @s run particle explosion ~ ~1 ~ 0.5 0.5 0.5 0 300 force @a[scores={mg9=1..}]
execute as @a[limit=1,team=mg9,scores={mg9=1..,mg9.2=1..}] at @s run tellraw @a[scores={mg9=1..}] ["",{"text":"","color":"reset"},{"selector":"@a[team=mg9,scores={mg9=1..,mg9.2=1..}]","color":"gray"},{"text":" blew up!","color":"yellow"}]
team leave @a[team=mg9,scores={mg9=1..,mg9.2=1..}]
title @a[team=mg9,scores={mg9=1..,mg9.2=1..}] title ["",{"text":"You were eliminated!","color":"red"}]
gamemode adventure @a[scores={mg9=1..,mg9.2=1..}]
