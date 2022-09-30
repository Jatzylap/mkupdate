#For Next Round
gamemode adventure @a[tag=PG]
stopsound @a[tag=PG]
tag @e[name="M@K",limit=1] add PGrounds
scoreboard players remove @e[limit=1,name="M@K"] pg1.5 1
execute in overworld run tp @a[tag=PG,tag=T1] -348 3 -8
execute in overworld run tp @a[tag=PG,tag=T2] -341 3 14
execute in overworld run tp @a[tag=PG,tag=T3] -319 3 25
execute in overworld run spawnpoint @a[tag=T1] -348 3 -8
execute in overworld run spawnpoint @a[tag=T2] -341 3 14
execute in overworld run spawnpoint @a[tag=T3] -319 3 25
effect clear @a[tag=PG]
team leave @a[tag=PG]
effect give @a[tag=PG] weakness 1000000 100 true
effect give @a[tag=PG] regeneration 1 255 true
effect give @a[tag=PG] saturation 1 255 true
effect give @a[tag=PG] resistance 8 255 true
effect give @a[tag=PG] fire_resistance 8 255 true
execute if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"In order"}'} run tag @e[limit=1,tag=PG,tag=!pre,nbt={Small:1b}] add s
execute if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"Random"}'} run tag @e[limit=1,sort=random,tag=PG,tag=!pre,nbt={Small:1b}] add s
bossbar set pg_timer max 100
bossbar set pg_timer visible true
execute as @e[limit=1,name="M@K",tag=PGrounds] at @s if entity @a[tag=PG] run scoreboard players set @s pg1.4 100
scoreboard players set @e[name="M@K",limit=1,tag=PGtie] pg1.5 1
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run title @a[tag=PG] actionbar ["",{"text":"It's a Tie!","bold":true}]
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -356 6 -6 -356 5 -10 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -349 6 16 -349 5 12 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -327 6 27 -327 5 23 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -356 4 -8 -356 4 -8 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -349 4 14 -349 4 14 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run fill -327 4 25 -327 4 25 air destroy
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run tellraw @a[tag=PG] ["",{"text":"All","color":"yellow","bold":true},{"text":" Event finalists","color":"gold","bold":true},{"text":" will experience a","color":"yellow","bold":true},{"text":" Final Round","color":"green","bold":true}]
execute as @e[limit=1,name="M@K",tag=PGtie,tag=!PGvote] at @s run function library:event/random
execute as @e[limit=1,name="M@K",tag=PGvote] at @s run kill @e[limit=1,tag=PG,nbt={Small:1b}]
tag @a remove PGFinalist
tag @a remove v0ted