tag @a remove C_
tag @a remove D_
forceload add -18 -25 -18 -1
#execute as @r at @s run summon armor_stand -18 5 -25 {Tags:[l0bby,c1,c_b],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon armor_stand -18 5 -13 {Tags:[l0bby,c2,c_b],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -18 5 -1 {Tags:[l0bby,c3,c_b],Marker:1,Small:1,Invisible:1}
forceload remove -18 -25 -18 -1
forceload add -51 35 -51 71
execute as @r at @s run summon armor_stand -51 6 35 {Tags:[l0bby,c1,c_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -51 6 47 {Tags:[l0bby,c2,c_c],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon armor_stand -51 6 59 {Tags:[l0bby,c3,c_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -51 6 71 {Tags:[l0bby,c4,c_c],Marker:1,Small:1,Invisible:1}
forceload remove -51 35 -51 71
forceload add -77 85
forceload add -42 20
forceload add -50 62
execute as @r at @s run summon armor_stand -77 9 85 {Tags:[l0bby,c1,c_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -42 7 20 {Tags:[l0bby,c2,c_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -50 12 62 {Tags:[l0bby,c3,c_p],Marker:1,Small:1,Invisible:1}
forceload remove -77 85
forceload remove -42 20
forceload remove -50 62
forceload add -31 12
forceload add -192 -81
#execute as @r at @s run summon armor_stand -31 2 12 {Tags:[l0bby,c1,c_d],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -192 2 -81 {Tags:[l0bby,c4,c_d],Marker:1,Small:1,Invisible:1}
forceload remove -31 12
forceload remove -192 -81

forceload add -102 -97 -78 -97
#execute as @r at @s run summon armor_stand -78 4 -97 {Tags:[l0bby,d1,d_b],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon armor_stand -90 4 -97 {Tags:[l0bby,d2,d_b],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -102 4 -97 {Tags:[l0bby,d3,d_b],Marker:1,Small:1,Invisible:1}
forceload remove -102 -97 -78 -97
forceload add -127 -93 -163 -93
#execute as @r at @s run summon armor_stand -127 5 -93 {Tags:[l0bby,d1,d_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -139 5 -93 {Tags:[l0bby,d2,d_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -151 5 -93 {Tags:[l0bby,d3,d_c],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -163 5 -93 {Tags:[l0bby,d4,d_c],Marker:1,Small:1,Invisible:1}
forceload remove -127 -93 -163 -93
forceload add -40 -64
forceload add -66 -90
forceload add -132 -100
#execute as @r at @s run summon armor_stand -40 6 -64 {Tags:[l0bby,d1,d_p],Marker:1,Small:1,Invisible:1}
execute as @r at @s run summon armor_stand -66 8 -90 {Tags:[l0bby,d2,d_p],Marker:1,Small:1,Invisible:1}
#execute as @r at @s run summon armor_stand -132 11 -100 {Tags:[l0bby,d3,d_p],Marker:1,Small:1,Invisible:1}
forceload remove -40 -64
forceload remove -66 -90
forceload remove -132 -100
tag @e[sort=random,limit=1,tag=l0bby,nbt={Small:1b}] add rand0m
tp @s[tag=!PG_1] @e[limit=1,nbt={Small:1b},tag=rand0m]
execute as @e[limit=1,tag=rand0m] at @s if block ~1 ~-2 ~ purpur_stairs run tag @a[distance=..2] add D_
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=d_b,distance=..2] run tag @e[tag=D0,tag=g1] add u
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=d_c,distance=..2] run tag @e[tag=D0,tag=g2] add u
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=d_p,distance=..2] run tag @e[tag=D0,tag=g4] add u
execute as @e[limit=1,tag=rand0m] at @s if block ~1 ~-2 ~ dark_prismarine_stairs run tag @a[distance=..2] add C_
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=c_b,distance=..2] run tag @e[tag=C0,tag=g1] add u
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=c_c,distance=..2] run tag @e[tag=C0,tag=g2] add u
execute at @s[tag=PG] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if entity @e[limit=1,tag=rand0m,tag=c_p,distance=..2] run tag @e[tag=C0,tag=g4] add u
execute as @e[tag=rand0m,nbt={Small:1b}] at @s run particle cloud ~ ~0.5 ~ 1 2 1 0.5 300 force @s[tag=P0ft]

execute unless entity @e[tag=PG,nbt={Small:1b}] run tp @a[tag=PG,tag=!PG_] @r[tag=PG_]
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=c1,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function c1:random
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=c2,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function c2:random
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=c3,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function c3:random
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=c4,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function c4:mg20/enter
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=d1,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function d1:random
execute as @a[tag=PG] at @s if entity @e[tag=l0bby,tag=d2,nbt={Small:1b},distance=..3] unless entity @e[tag=PG,nbt={Small:1b}] run function d2:random
execute at @s[tag=PG] run function c1:reload
execute at @s[tag=PG] run function c2:reload
execute at @s[tag=PG] run function c3:reload
execute at @s[tag=PG] run function d1:reload
execute at @s[tag=PG] run function d2:reload
execute at @s[tag=PG] run function d3:reload
kill @e[tag=l0bby,nbt={Small:1b}]

execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg2] run function c2:mg2/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg2] run tp @s 104 2 -72
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg3] run function c1:mg3/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg4] run function c1:mg4/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg5] run function c1:mg5/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg6] run function c1:mg6/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg7] run function c1:mg7/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg8] run function c2:mg8/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg8] run scoreboard players set @e[limit=1,name="M@K"] mg8.3 115
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg9] run function c1:mg9/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg10] run function c1:mg10/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg11] run function d2:mg11/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg13] run function c3:mg13/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg16] run function d2:mg16/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg18] run function c3:mg18/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg20] run function c4:mg20/enter
execute at @s[tag=PG] if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mgc] run function library:game/start