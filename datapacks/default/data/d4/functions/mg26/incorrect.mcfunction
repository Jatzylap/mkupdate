execute as @e[tag=q,tag=mg26] at @s run particle dust 1 1 1 2 21 2.4 -377 .3 1 .3 0 900 force @a[scores={mg26=1..}]
tag @e[tag=q,tag=mg26] add mg26_rem
tag @s add incorrect
execute as @e[tag=q,tag=mg26] at @s run data merge entity @s {Marker:1,CustomNameVisible:0,ArmorItems:[{}]}
execute as @a[scores={mg26=1..},tag=TCplayers] at @s run playsound entity.ravager.stunned master @s ~ ~ ~ 1000 0
title @a[scores={mg26=1..},tag=TCplayers] title ["",{"text":"❌","color":"red","bold":true},{"text":" Wrong!","color":"white"}]
effect give @a[scores={mg26=1..},tag=TCplayers] blindness 3 0 true

#Punish (to turn into function for more punishments)
scoreboard players set @e[name="M@K",limit=1] mg26.3 0