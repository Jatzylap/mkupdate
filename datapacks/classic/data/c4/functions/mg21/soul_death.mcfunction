execute if score @s mg21 matches 1..43 run playsound minecraft:entity.drowned.ambient master @a[scores={mg21=1..}] ~ ~ ~ 1 0.5
execute if score @s mg21 matches 1..43 run playsound entity.ravager.roar master @a[scores={mg21=1..}] ~ ~ ~ 1 0.5
execute if score @s mg21 matches 15..43 run playsound minecraft:entity.ghast.hurt master @a[scores={mg21=1..}] ~ ~ ~ 1 0
execute if score @s mg21 matches 15..43 positioned ~ ~2.57 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0.01 11 force @a[scores={mg21=1..}]
execute if score @s mg21 matches 15..43 positioned ~ ~2.57 ~ run particle soul ^ ^ ^ 0 0 0 0.01 16 force @a[scores={mg21=1..}]

execute if score @s[tag=mg21_soul1] mg21 matches 30 run summon armor_stand ~ ~2.5 ~ {Invisible:1,Small:1,Tags:[mg21,fire1],Motion:[0d,1.1d,0.15d]}

execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 16 run forceload add 177 178
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 16 run forceload add 234 216
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 16 run forceload add 148 224
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 16 run summon ravager 177.2 134 178.0 {Attributes:[{Base:99.0d,Name:generic.follow_range}],Tags:[mg21,guard1],PersistenceRequired:1,Invulnerable:1,Silent:1,DeathLootTable:"",Rotation:[90f],NoAI:1}
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 16 run summon ravager 234.2 106 216.0 {Attributes:[{Base:99.0d,Name:generic.follow_range}],Tags:[mg21,guard2],PersistenceRequired:1,Invulnerable:1,Silent:1,DeathLootTable:"",Rotation:[90f],NoAI:1}
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 16 run summon ravager 148.2 130 224.0 {Attributes:[{Base:99.0d,Name:generic.follow_range}],Tags:[mg21,guard3],PersistenceRequired:1,Invulnerable:1,Silent:1,DeathLootTable:"",Rotation:[90f],NoAI:1}
execute if score @s[tag=mg21_soul1] mg21 matches 15..60 as @e[tag=mg21,tag=guard1] at @s run tp @s ~-0.1 ~ ~
execute if score @s[tag=mg21_soul2] mg21 matches 15..60 as @e[tag=mg21,tag=guard2] at @s run tp @s ~-0.1 ~ ~
execute if score @s[tag=mg21_soul3] mg21 matches 15..60 as @e[tag=mg21,tag=guard3] at @s run tp @s ~-0.1 ~ ~
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 60 run forceload remove 177 178
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 60 run forceload remove 234 216
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 60 run forceload remove 148 224
execute if score @s[tag=mg21_soul1] mg21 matches 60.. run data merge entity @e[limit=1,tag=mg21,tag=guard1] {NoAI:0}
execute if score @s[tag=mg21_soul2] mg21 matches 60.. run data merge entity @e[limit=1,tag=mg21,tag=guard2] {NoAI:0}
execute if score @s[tag=mg21_soul3] mg21 matches 60.. run data merge entity @e[limit=1,tag=mg21,tag=guard3] {NoAI:0}

execute if score @s[tag=mg21_soul1] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 12 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul1] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle dust 0 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0.1 99 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul2] mg21 matches 30 run summon armor_stand ~ ~2.5 ~ {Invisible:1,Small:1,Tags:[mg21,fire2],Motion:[0.15d,1.1d]}
execute if score @s[tag=mg21_soul2] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 12 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul2] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle dust 0 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0.1 99 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul3] mg21 matches 30 run summon armor_stand ~ ~2.5 ~ {Invisible:1,Small:1,Tags:[mg21,fire3],Motion:[0d,1.1d,0.15d]}
execute if score @s[tag=mg21_soul3] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0 12 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul3] mg21 matches 30.. as @e[type=armor_stand,tag=mg21] at @s run particle dust 0 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0 99 force @a[scores={mg21=1..}]
execute if score @s[tag=mg21_soul1] mg21 matches 53.. as @e[type=armor_stand,tag=mg21] at @s unless block ~ ~-0.5 ~ air run setblock 171 152 180 soul_fire
execute if score @s[tag=mg21_soul2] mg21 matches 53.. as @e[type=armor_stand,tag=mg21] at @s unless block ~ ~-0.5 ~ air run setblock 217 110 197 soul_fire
execute if score @s[tag=mg21_soul3] mg21 matches 53.. as @e[type=armor_stand,tag=mg21] at @s unless block ~ ~-0.5 ~ air run setblock 124 144 226 soul_fire

execute if score @s[tag=mg21_soul1] mg21 matches 53.. as @e[tag=mg21,tag=fire1] at @s unless block ~ ~-0.5 ~ air run kill @s
execute if score @s[tag=mg21_soul2] mg21 matches 53.. as @e[tag=mg21,tag=fire2] at @s unless block ~ ~-0.5 ~ air run kill @s
execute if score @s[tag=mg21_soul3] mg21 matches 53.. as @e[tag=mg21,tag=fire3] at @s unless block ~ ~-0.5 ~ air run kill @s
execute if score @s mg21 matches 60 run particle soul ~ ~1 ~ 0 1 0 0.1 4000 force @a[scores={mg21=1..}]
execute if score @s mg21 matches 60.. run data merge entity @s {DeathTime:19s,Health:0}