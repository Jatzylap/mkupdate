#For Next Round
gamemode adventure @a[tag=PG]
stopsound @a[tag=PG]
tag @a[tag=PG] remove st0red
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
execute as @e[limit=1,name="M@K",tag=PGtie] at @s run tellraw @a[tag=PG] ["",{"text":"All","color":"yellow","bold":true},{"text":" Event finalists","color":"gold","bold":true},{"text":" will experience a","color":"yellow","bold":true},{"text":" Final Round","color":"green","bold":true}]
execute as @e[limit=1,name="M@K",tag=PGvote] at @s run kill @e[limit=1,tag=PG,nbt={Small:1b}]
tag @a remove PGFinalist
tag @a remove v0ted