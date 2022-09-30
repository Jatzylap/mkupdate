tag @a[tag=PG] remove C_
tag @a[tag=PG] remove D_

forceload add -18 -25 -18 -1
#execute as @r at @s run summon marker -18 5 -25 {Tags:[l0bby,c1,c_b],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -18 5 -13 {Tags:[l0bby,c2,c_b],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -18 5 -1 {Tags:[l0bby,c3,c_b],Marker:1,Small:1,Invisible:1}
forceload remove -18 -25 -18 -1
forceload add -51 35 -51 71
execute as @r at @s run summon marker -51 6 35 {Tags:[l0bby,c1,c_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -51 6 47 {Tags:[l0bby,c2,c_c],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -51 6 59 {Tags:[l0bby,c3,c_c],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -51 6 71 {Tags:[l0bby,c4,c_c],Marker:1,Small:1,Invisible:1}
forceload remove -51 35 -51 71
forceload add -77 85
forceload add -42 20
forceload add -50 62
execute as @r at @s run summon marker -77 9 85 {Tags:[l0bby,c1,c_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -42 7 20 {Tags:[l0bby,c2,c_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -50 12 62 {Tags:[l0bby,c3,c_p],Marker:1,Small:1,Invisible:1}
forceload remove -77 85
forceload remove -42 20
forceload remove -50 62
forceload add -31 12
forceload add -192 -81
#execute as @r at @s run summon marker -31 2 12 {Tags:[l0bby,c1,c_d],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -192 2 -81 {Tags:[l0bby,c4,c_d],Marker:1,Small:1,Invisible:1}
forceload remove -31 12
forceload remove -192 -81

forceload add -102 -97 -78 -97
#execute as @r at @s run summon marker -78 4 -97 {Tags:[l0bby,d1,d_b],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -90 4 -97 {Tags:[l0bby,d2,d_b],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -102 4 -97 {Tags:[l0bby,d3,d_b],Marker:1,Small:1,Invisible:1}
forceload remove -102 -97 -78 -97
forceload add -127 -93 -163 -93
#execute as @r at @s run summon marker -127 5 -93 {Tags:[l0bby,d1,d_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -139 5 -93 {Tags:[l0bby,d2,d_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -151 5 -93 {Tags:[l0bby,d3,d_c],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -163 5 -93 {Tags:[l0bby,d4,d_c],Marker:1,Small:1,Invisible:1}
forceload remove -127 -93 -163 -93
forceload add -40 -64
forceload add -66 -90
forceload add -132 -100
#execute as @r at @s run summon marker -40 6 -64 {Tags:[l0bby,d1,d_p],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon marker -66 8 -90 {Tags:[l0bby,d2,d_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon marker -132 11 -100 {Tags:[l0bby,d3,d_p],Marker:1,Small:1,Invisible:1}
forceload remove -40 -64
forceload remove -66 -90
forceload remove -132 -100
tag @e[sort=random,limit=1,tag=l0bby] add rand0m
tp @s[tag=!PG_1] @e[limit=1,tag=rand0m]
execute as @e[limit=1,tag=rand0m] at @s if block ~1 ~-2 ~ purpur_stairs run tag @a[distance=..2] add D_
execute as @e[limit=1,tag=rand0m] at @s if block ~1 ~-2 ~ dark_prismarine_stairs run tag @a[distance=..2] add C_

execute if entity @e[tag=rand0m,tag=c1,distance=..3] run function c1:random
execute if entity @e[tag=rand0m,tag=c2,distance=..3] run function c2:random
execute if entity @e[tag=rand0m,tag=c3,distance=..3] run function c3:random
execute if entity @e[tag=rand0m,tag=c4,distance=..3] run function c4:mg20/enter
execute if entity @e[tag=rand0m,tag=d1,distance=..3] run function d1:random
execute if entity @e[tag=rand0m,tag=d2,distance=..3] run function d2:random
execute if entity @e[tag=rand0m,tag=d3,distance=..3] run function d3:random
execute if entity @e[tag=rand0m,tag=d4,distance=..3] run function d4:random
kill @e[tag=l0bby,type=marker]