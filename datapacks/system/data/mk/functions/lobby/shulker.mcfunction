#Shulker Rotation
execute if entity @s[tag=!p0ly,tag=!L_chabadu] if entity @a[distance=..6] unless entity @e[tag=chabadu_m4rk,distance=..1] run summon marker ~ ~1 ~ {Tags:[chabadu_m4rk]}
execute at @s[tag=p0ly] if entity @a[distance=..7] unless entity @e[tag=chabadu_m4rk,distance=..1] run summon marker ~ ~1 ~ {Tags:[chabadu_m4rk]}

execute if entity @s[tag=!p0ly,tag=!L_chabadu] as @e[tag=chabadu_m4rk,limit=1,distance=..1] at @s run tp @s ~ ~ ~ facing entity @p[distance=..6]
execute at @s[tag=L_chabadu] as @e[tag=chabadu_m4rk,limit=1,distance=..1] run tp @s ~ ~ ~ facing entity @r[tag=3xp]
execute at @s[tag=p0ly] as @e[tag=chabadu_m4rk,limit=1,distance=..1] run tp @s ~ ~ ~ facing entity @p[distance=..7]

scoreboard players set @s 5 360
execute as @e[tag=chabadu_m4rk,limit=1,distance=..1] at @s store result score @s 5 run data get entity @s Rotation[1]
scoreboard players operation @s 5 -= @e[tag=chabadu_m4rk,limit=1,distance=..1] 5
execute store result entity @s Rotation[1] float 1 run scoreboard players get @s 5
scoreboard players set @s 5 180
execute as @e[tag=chabadu_m4rk,limit=1,distance=..1] at @s store result score @s 5 run data get entity @s Rotation[0]
scoreboard players operation @s 5 -= @e[tag=chabadu_m4rk,limit=1,distance=..1] 5
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s 5
execute unless entity @a[distance=..6] run kill @e[tag=chabadu_m4rk,distance=..1]
execute unless entity @a[tag=3xp,distance=..8] run kill @e[tag=L_chabadu_m4rk]