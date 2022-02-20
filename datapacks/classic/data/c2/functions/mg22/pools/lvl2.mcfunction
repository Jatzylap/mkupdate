# A MESSAGE FROM JATZYLAP:
#  bop

loot replace block 197 2 -173 container.0 loot c2:random/mob-pool

execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:1}}]} run summon cave_spider
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:2}}]} run summon spider
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:3}}]} run summon creeper
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:4}}]} run summon drowned

tp @e[type=!marker,distance=..1] @s
execute at @s[tag=ps1] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path1],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps2] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path2],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps3] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path3],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps4] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path4],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute as @e[type=!marker,distance=..1] at @s run tp ^ ^1 ^1.5