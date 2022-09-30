data merge block -329 3 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 50 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=3] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 4 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 90 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=2] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 5 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 130 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=3] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 6 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 170 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=2] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 7 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 210 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=3] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
data merge block -329 8 -37 {Command:"execute as @e[limit=1,name=\"M@K\"] at @s if score @s mg4.2 matches 250 run execute as @e[tag=firedodge,nbt={Small:1b},sort=random,limit=2] at @s run fill ~ ~ ~ ~ ~1 ~ redstone_block"}
kill @e[type=blaze,tag=firedodge]
effect give @a[scores={mg4=1..}] regeneration 1 255 true
summon blaze 71 7 -25 {DeathLootTable:"",Silent:1,Tags:[firedodge]}