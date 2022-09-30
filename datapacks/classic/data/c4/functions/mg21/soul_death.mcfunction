execute if score @s mg21 matches 1..43 run playsound minecraft:entity.drowned.ambient master @a[scores={mg21=1..}] ~ ~ ~ 1 0.5
execute if score @s mg21 matches 15..43 run playsound minecraft:entity.ghast.hurt master @a[scores={mg21=1..}] ~ ~ ~ 1 0
execute if score @s mg21 matches 15..43 positioned ~ ~2.57 ~ run particle soul_fire_flame ^ ^ ^ 0 0 0 0.01 11 force @a[scores={mg21=1..}]
execute if score @s mg21 matches 15..43 positioned ~ ~2.57 ~ run particle soul ^ ^ ^ 0 0 0 0.01 16 force @a[scores={mg21=1..}]

execute if score @s[tag=mg21_soul1] mg21 matches 30 run summon armor_stand ~ ~2.5 ~ {Invisible:1,Small:1,Tags:[mg21,fire1],Motion:[0d,1.1d,0.15d]}

execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 16 run forceload add 177 178
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 16 run forceload add 234 216
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 16 run forceload add 148 224
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 16 run summon wither_skeleton 177.2 134 178.0 {PersistenceRequired:1,Rotation:[90f],Silent:1,Tags:[mg21,CTM2_Mob2,guard1],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 16 run summon wither_skeleton 234.2 106 216.0 {PersistenceRequired:1,Rotation:[90f],Silent:1,Tags:[mg21,CTM2_Mob2,guard2],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 16 run summon wither_skeleton 148.2 130 224.0 {PersistenceRequired:1,Rotation:[90f],Silent:1,Tags:[mg21,CTM2_Mob2,guard3],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute if score @s[tag=mg21_soul1] mg21 matches 15..60 as @e[tag=mg21,tag=guard1] at @s run tp @s ~-0.1 ~ ~
execute if score @s[tag=mg21_soul2] mg21 matches 15..60 as @e[tag=mg21,tag=guard2] at @s run tp @s ~-0.1 ~ ~
execute if score @s[tag=mg21_soul3] mg21 matches 15..60 as @e[tag=mg21,tag=guard3] at @s run tp @s ~-0.1 ~ ~
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 60 run summon warden 171 63 178 {Invulnerable:1,Tags:[mg21,demon1],PersistenceRequired:1,Rotation:[180f],Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:135L},"minecraft:dig_cooldown":{value:{},ttl:999999999L}}},Attributes:[{Base:95d,Name:"minecraft:generic.follow_range"}]}
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 60 run summon warden 215 63 197 {Invulnerable:1,Tags:[mg21,demon2],PersistenceRequired:1,Rotation:[90f],Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:135L},"minecraft:dig_cooldown":{value:{},ttl:999999999L}}},Attributes:[{Base:95d,Name:"minecraft:generic.follow_range"}]}
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 60 run summon warden 124 63 224 {Invulnerable:1,Tags:[mg21,demon3],PersistenceRequired:1,Rotation:[180f],Brain:{memories:{"minecraft:is_emerging":{value:{},ttl:135L},"minecraft:dig_cooldown":{value:{},ttl:999999999L}}},Attributes:[{Base:95d,Name:"minecraft:generic.follow_range"}]}
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 60 run tp @e[limit=1,tag=mg21,tag=demon1] ~ 148 ~
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 60 run tp @e[limit=1,tag=mg21,tag=demon2] ~ 106 ~
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 60 run tp @e[limit=1,tag=mg21,tag=demon3] ~ 140 ~
execute if score @s[tag=mg21_soul1] mg21 matches 60 run data merge entity @e[limit=1,tag=mg21,tag=CTM2_Mob2] {NoAI:0}
execute in parallel_aether if score @s[tag=mg21_soul1] mg21 matches 60 run forceload remove 177 178
execute in parallel_aether if score @s[tag=mg21_soul2] mg21 matches 60 run forceload remove 234 216
execute in parallel_aether if score @s[tag=mg21_soul3] mg21 matches 60 run forceload remove 148 224

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
execute unless entity @a[scores={mg21=1..},distance=..3] run scoreboard players reset @s mg21