execute store result score @s mg-1.1 run data get entity @s Pos[0] 1000
execute store result score @s mg-1.2 run data get entity @s Pos[1] 1000
execute store result score @s mg-1.3 run data get entity @s Pos[2] 1000
execute at @s run tp ^ ^ ^0.1
execute store result score @s mg-1.x run data get entity @s Pos[0] 1000
execute store result score @s mg-1.y run data get entity @s Pos[1] 1000
execute store result score @s mg-1.z run data get entity @s Pos[2] 1000
scoreboard players operation @s mg-1.x -= @s mg-1.1
scoreboard players operation @s mg-1.y -= @s mg-1.2
scoreboard players operation @s mg-1.z -= @s mg-1.3

execute store result entity @e[tag=mgc_m0b,sort=nearest,limit=1] Motion[0] double 0.012 run scoreboard players get @s mg-1.x
execute store result entity @e[tag=mgc_m0b,sort=nearest,limit=1] Motion[1] double 0.012 run scoreboard players get @s mg-1.y
execute store result entity @e[tag=mgc_m0b,sort=nearest,limit=1] Motion[2] double 0.012 run scoreboard players get @s mg-1.z
kill @s