advancement revoke @s everything
execute as @e[limit=1,name="M@K",tag=!mode0,tag=!mode1] at @s run scoreboard players set @s m 0
scoreboard players get @s 7
execute as @e[limit=1,name="M@K",tag=mode0] at @s run scoreboard players set @s m 0
execute as @e[limit=1,name="M@K",tag=mode1] at @s run scoreboard players set @s m 1
execute as @e[limit=1,name="M@K",tag=mode2] at @s run scoreboard players set @s m -1
execute if entity @e[limit=1,name="M@K",scores={m=..0}] run tag @a add Member
advancement revoke @s everything
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run tag @a[tag=0,advancements={mk:tutorial=false}] add Member
execute if entity @e[limit=1,name="M@K",scores={m=0..}] run advancement grant @s only mk:tutorial
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run tag @p[tag=00p] add Admin
scoreboard players reset @s
execute if entity @e[tag=0p] run advancement grant @s only mk:story
execute if entity @e[tag=3p] run advancement grant @s only mk:story
execute if block -32 9 -8 air if entity @e[limit=1,name="M@K",scores={m=0..}] run advancement grant @s only mk:discover_tower
execute if block -194 6 -8 air if entity @e[limit=1,name="M@K",scores={m=0..}] run advancement grant @s only mk:discover_library
execute if entity @e[tag=c0] if block -194 6 -8 air run advancement grant @s only mk:finish_tutorial

execute unless score @s 7 matches 0.. run scoreboard players set @s 7 0
effect clear @s
tag @s remove L1
tag @s remove L2
tag @s remove L3
tag @s remove L4
tag @s remove L5
tag @s remove L6
tag @s remove L7
tag @s remove L8
xp set @s 0 levels
xp set @s 0
recipe take @s *
clear @s
tp @s -113 62 -8