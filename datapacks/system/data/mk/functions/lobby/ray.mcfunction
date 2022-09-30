execute store result score @s mg-1.1 run data get entity @s Pos[0] 1000
execute store result score @s mg-1.3 run data get entity @s Pos[2] 1000
execute at @s run tp ^ ^ ^0.5
execute store result score @s mg-1.x run data get entity @s Pos[0] 1000
execute store result score @s mg-1.z run data get entity @s Pos[2] 1000
scoreboard players operation @s mg-1.x -= @s mg-1.1
scoreboard players operation @s mg-1.z -= @s mg-1.3
execute positioned ~ ~2.5 ~ run summon shulker_bullet ^ ^ ^ {Tags:[mg-1p]}
execute store result entity @e[tag=mg-1p,sort=nearest,limit=1] Motion[0] double 0.003 run scoreboard players get @s mg-1.x
data modify entity @e[tag=mg-1p,sort=nearest,limit=1] Motion[1] merge value 2
execute store result entity @e[tag=mg-1p,sort=nearest,limit=1] Motion[2] double 0.003 run scoreboard players get @s mg-1.z

kill @e[tag=mg-1r]