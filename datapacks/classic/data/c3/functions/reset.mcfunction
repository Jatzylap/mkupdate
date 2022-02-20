execute at @s[tag=PG,tag=Win] run scoreboard players add @s pg1.2 1
execute if entity @s[tag=PG,tag=Win] as @a[tag=PG,tag=!Win] at @s run function c3:reset
tag @s remove Drop1
tag @s remove Drop2
tag @s remove Drop3
tag @s remove Drop4
tag @s remove Win
tag @s remove mg17_lvl
tag @s remove mg17_lvl2
effect give @s regeneration 1 255 true
effect give @s saturation 1 255 true
execute at @s[scores={mg17=1..},tag=!PG] run function mk:exit
execute at @s[scores={mg18=1..},tag=!PG] run function mk:exit
scoreboard players reset @s c
scoreboard players reset @s[tag=PG] mg18
data merge block -47 6 60 {Text3:'{"score":{"name":"@p[scores={mg13=1..}]","objective":"c"},"color":"gold"}'}
data merge block -47 6 58 {Text3:'{"score":{"name":"@p[scores={mg17=1..}]","objective":"c"},"color":"gold"}'}
data merge block -47 6 59 {Text3:'{"score":{"name":"@p[scores={mg18=1..}]","objective":"c"},"color":"gold"}'}
execute at @s[tag=PG] run function library:event/schedule/next