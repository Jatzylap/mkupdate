#1st
execute if entity @a[tag=T1] run summon armor_stand -338.3 3.3 -8 {DisabledSlots:-1,Tags:[p0d],NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:golden_helmet,Count:1}],Rotation:[90f]}
execute if entity @a[tag=T2] run summon armor_stand -331.3 3.3 14 {DisabledSlots:-1,Tags:[p0d],NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:golden_helmet,Count:1}],Rotation:[90f]}
execute if entity @a[tag=T3] run summon armor_stand -309.3 3.3 25 {DisabledSlots:-1,Tags:[p0d],NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:golden_helmet,Count:1}],Rotation:[90f]}

#2nd
scoreboard players set #highscore pg1.2 0
scoreboard players operation #highscore pg1.2 > @a[tag=!PGWinner,tag=PGFinalist] pg1.2
scoreboard players operation @a[tag=PGFinalist,tag=!PGWinner] pg1.2 -= #highscore pg1.2
tag @r[tag=PGFinalist,tag=!PGWinner,scores={pg1.2=0}] add PG2nd
execute as @a[tag=PGFinalist] at @s run scoreboard players operation @s pg1.2 = @s pg1.8
execute if entity @a[tag=T1] run summon armor_stand -338.5 2.25 -9 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:iron_helmet,Count:1}],Rotation:[90f]}
execute if entity @a[tag=T2] run summon armor_stand -331.5 2.25 13 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:iron_helmet,Count:1}],Rotation:[90f]}
execute if entity @a[tag=T3] run summon armor_stand -309.5 2.25 24 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:iron_helmet,Count:1}],Rotation:[90f]}

#3rd
scoreboard players set #highscore pg1.2 0
scoreboard players operation #highscore pg1.2 > @a[tag=!PGWinner,tag=!PG2nd,tag=PGFinalist] pg1.2
scoreboard players operation @a[tag=PGFinalist,tag=!PGWinner,tag=!PG2nd] pg1.2 -= #highscore pg1.2
tag @r[tag=PGFinalist,tag=!PGWinner,tag=!PG2nd,scores={pg1.2=0}] add PG3rd
execute as @a[tag=PGFinalist] at @s run scoreboard players operation @s pg1.2 = @s pg1.8
execute if score @e[limit=1,name="M@K"] pg1.3 matches 3.. if entity @a[tag=T1] run summon armor_stand -338.5 1.8 -7 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:leather_helmet,Count:1}],Rotation:[120f]}
execute if score @e[limit=1,name="M@K"] pg1.3 matches 3.. if entity @a[tag=T2] run summon armor_stand -331.5 1.8 15 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:leather_helmet,Count:1}],Rotation:[120f]}
execute if score @e[limit=1,name="M@K"] pg1.3 matches 3.. if entity @a[tag=T3] run summon armor_stand -309.5 1.8 26 {DisabledSlots:-1,Tags:[p0d],Invulnerable:1,NoGravity:1,Invisible:1,NoBasePlate:1,ArmorItems:[{},{},{},{id:leather_helmet,Count:1}],Rotation:[120f]}
