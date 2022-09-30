bossbar remove fd_progress
data merge block -329 3 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 50 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 4 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 100 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 5 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 150 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 6 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 200 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 7 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 250 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 8 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 300 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=1] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
fill -318 2 -32 -318 2 -38 air replace redstone_block
fill -330 2 -39 -336 2 -39 repeater[delay=4,facing=east]
fill -330 2 -39 -336 2 -39 repeater[delay=4,facing=west]
effect give @a[scores={mg4=1..}] regeneration 1 255 true
gamemode adventure @a[scores={mg4=1..}]
setblock -324 2 -38 air
setblock -326 2 -49 air
execute as @e[tag=firedodge,nbt={Small:1b}] at @s run fill ~ ~ ~ ~ ~1 ~ cobblestone
tp @a[scores={mg4=0..}] -51 5 35
kill @e[type=item,dx=27,dy=4,dz=31,x=67,y=3,z=-32]
scoreboard players reset @a mg4.4
scoreboard players reset @a mg4.3
execute if entity @a[tag=PG,scores={mg4=0..}] run function library:event/schedule/next
scoreboard players reset @a mg4
data merge block -47 6 35 {Text3:'{"text":""}',Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"execute unless entity @s[tag=T0] run function c1:mg4/enter"}}'}