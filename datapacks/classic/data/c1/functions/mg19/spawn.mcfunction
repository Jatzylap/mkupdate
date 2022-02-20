execute as @e[name="M@K",limit=1] at @s unless score @s mg19 matches 6.. run scoreboard players add @s mg19 1

#PLAINS
#Wave 1
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon creeper -1 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 1 run summon spider -1 25 -2 {Attributes:[{Base:0.2d,Name:generic.movement_speed}]}

#Wave 2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon zombie -1 25 -2 {Attributes:[{Base:0.15d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon skeleton -1 25 -2 {HandItems:[{Count:1,id:wooden_sword,tag:{mg:2}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon slime -1 25 -2 {Size:1}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon creeper -1 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 2 run summon creeper -1 25 -2
#Wave 3
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon zombie -1 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon skeleton -1 25 -2 {HandItems:[{Count:1,id:bow,tag:{mg:2}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon slime -1 25 -2 {Size:2}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon slime -1 25 -2 {Size:1}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon skeleton -1 25 -2 {HandItems:[{Count:1,id:bow,tag:{mg:2}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon zombie -1 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon creeper -1 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 3 run summon slime -1 25 -2 {Size:1}
#Boss
execute as @a[scores={mg19=1..},tag=mg19_1] at @s if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=dd_mob] run setblock 37 30 19 redstone_block
execute at @r[scores={mg19=1..},tag=mg19_1] if score @e[name="M@K",limit=1] mg19 matches 4 run summon armor_stand ~ 35 ~ {Small:1,Tags:[dd_death],Invisible:1b}

#DESERT
#Wave 1
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon creeper 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon skeleton 0 25 -27 {HandItems:[{Count:1,id:stone_sword,tag:{mg:2}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 1 run summon cave_spider 0 25 -27
#Wave 2
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon skeleton 0 25 -27 {HandItems:[{Count:1,id:stone_sword,tag:{mg:2,Enchantments:[{id:knockback,lvl:2}]}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon skeleton 0 25 -27 {HandItems:[{Count:1,id:stone_sword,tag:{mg:2}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon vindicator 0 25 -27 {Attributes:[{Base:0.2d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon creeper 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 0 25 -27
#Wave 3
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon skeleton 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon vindicator 0 25 -27 {Attributes:[{Base:0.2d,Name:generic.movement_speed}],HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon vindicator 0 25 -27 {HandItems:[{}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon skeleton 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon husk 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon creeper 0 25 -27 {powered:1}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon witch 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon witch 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 0 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon cave_spider 0 25 -27 {ActiveEffects:[{Id:14b,Duration:90,Amplifier:1b,ShowParticles:0b}]}
execute if entity @a[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 0 25 -27
#Boss
execute as @a[scores={mg19=1..},tag=mg19_2] at @s if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=dd_mob] run setblock 31 30 19 redstone_block
execute at @r[scores={mg19=1..},tag=mg19_2] if score @e[name="M@K",limit=1] mg19 matches 4 run summon armor_stand ~ 35 ~ {Small:1,Tags:[dd_death],Invisible:1b}

#GLACIER
#Wave 1
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 1 run summon drowned 27 25 -27
#Wave 2
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon polar_bear 27 25 -27 {AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon phantom 27 56 -27  {Tags:[mg19,dd_mob],DeathLootTable:""}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 as @e[tag=!dd_flymob,type=phantom] at @s run spreadplayers 27 -27 0 15 false @e[tag=mg19,tag=!dd_mob,type=phantom]
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 as @e[tag=!dd_flymob,type=phantom] at @s run tp ~ 56 ~
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 2 as @e[tag=!dd_flymob,type=phantom] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.9 1300 force @a[scores={mg19=1..}]
#Wave 3
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon polar_bear 27 25 -27 {AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon polar_bear 27 25 -27 {AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon drowned 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon phantom 27 56 -27 {Tags:[mg19,dd_mob],DeathLootTable:""}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon phantom 27 58 -27 {Tags:[mg19,dd_mob],DeathLootTable:""}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon vindicator 27 25 -27 {Attributes:[{Base:0.2d,Name:generic.movement_speed}]}
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon guardian 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 run summon silverfish 27 25 -27
execute if entity @a[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 3 as @e[tag=!dd_flymob,type=phantom] at @s run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.9 1300 force @a[scores={mg19=1..}]

#Boss
execute as @a[scores={mg19=1..},tag=mg19_3] at @s if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=dd_mob] run setblock 25 30 19 redstone_block
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 17 54 -36 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 26 53 -39 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 24 55 -28 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 15 57 -18 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 30 57 -15 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 4 run summon armor_stand 38 57 -18 {Small:1,Invisible:1,Marker:1,Tags:[dd_bparticle]}
execute at @r[scores={mg19=1..},tag=mg19_3] if score @e[name="M@K",limit=1] mg19 matches 4 run summon armor_stand ~ 35 ~ {Small:1,Tags:[dd_death],Invisible:1b}
#WASTELAND
#Wave 1
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon zoglin 40 25 1 {IsBaby:1,Health:100,DeathLootTable:"",NoAI:1,Silent:1,PersistenceRequired:1b,Tags:[mg19,dd_boss]}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon piglin 27 25 -2 {IsBaby:0}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon piglin 27 25 -2 {IsBaby:0}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon wither_skeleton 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon wither_skeleton 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon wither_skeleton 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon magma_cube 27 25 -2 {Size:0}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon magma_cube 27 25 -2 {Size:0}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon magma_cube 27 25 -2 {Size:1}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 1 run summon witch 27 25 -2
#Wave 2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon zombified_piglin 27 25 -2 {AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon zombified_piglin 27 25 -2 {AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon piglin 27 25 -2 {IsBaby:0,HandItems:[{Count:1,id:golden_sword,tag:{mg:19}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon piglin 27 25 -2 {IsBaby:0,HandItems:[{Count:1,id:golden_sword,tag:{mg:19,Enchantments:[{id:fire_aspect,lvl:1},{id:sharpness,lvl:2}]}}]}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon blaze 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon ghast 27 57 -4 {Tags:[mg19,dd_mob],DeathLootTable:""}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon magma_cube 27 25 -2 {Size:2}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 run summon magma_cube 27 25 -2 {Size:1}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 2 as @e[tag=!dd_flymob,type=ghast] at @s run particle cloud ~ ~ ~ 0.9 0.9 0.9 0.6 2300 force @a[scores={mg19=1..}]
#Wave 3
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run setblock 19 30 19 redstone_block
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon wither_skeleton 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon wither_skeleton 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon zombified_piglin 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon zombified_piglin 27 25 -2 {ArmorItems:[{Count:1,id:golden_boots,tag:{mg:19}},{Count:1,id:golden_leggings,tag:{mg:19}},{Count:1,id:golden_chestplate,tag:{mg:19,Enchantments:[{id:blast_protection,lvl:1}]}},{Count:1,id:golden_helmet,tag:{mg:19}}],HandItems:[{Count:1,id:golden_sword,tag:{mg:19,Enchantments:[{id:sharpness,lvl:3}]}}],AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon zombified_piglin 27 25 -2 {HandItems:[{Count:1,id:golden_sword,tag:{mg:19,Enchantments:[{id:sharpness,lvl:2}]}}],AngerTime:10000s}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon piglin_brute 27 25 -2 {Health:30,Attributes:[{Base:90d,Name:generic.knockback_resistance},{Base:0.24d,Name:generic.movement_speed}]}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon blaze 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon blaze 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon blaze 27 25 -2
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 3 run summon magma_cube 27 25 -2 {Size:3}
#Boss
execute as @e[type=zoglin,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 run particle lava ~ ~ ~ 0.2 0.5 0.2 0.1 250 force @a[scores={mg19=1..}]
execute as @e[type=zoglin,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 run particle large_smoke ~ ~1 ~ 0.6 1 0.6 0 2050 force @a[scores={mg19=1..}]
execute as @e[type=zoglin,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 run playsound entity.hoglin.converted_to_zombified master @a[scores={mg19=1..}] ~ ~ ~ 100000 0
execute at @r[scores={mg19=1..},tag=mg19_4] if score @e[name="M@K",limit=1] mg19 matches 4.. run summon armor_stand ~ 35 ~ {Small:1,Tags:[dd_death],Invisible:1b}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=!dd_boss,tag=!dd_death,tag=dd_mob] as @e[limit=1,type=zoglin,tag=dd_boss,nbt={IsBaby:1b}] at @s run summon zoglin ~ ~ ~ {Health:300,DeathLootTable:"",PersistenceRequired:1b,Tags:[mg19,dd_mob,dd_boss]}
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=!dd_boss,tag=!dd_death,tag=dd_mob] as @e[limit=1,type=zoglin,nbt={IsBaby:1b}] at @s run tag @s remove dd_boss
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 as @e[limit=1,type=zoglin,nbt={IsBaby:1b}] at @s run tp ~ -1000 ~
execute as @a[scores={mg19=1..},tag=mg19_4] at @s if score @e[limit=1,name="M@K"] mg19 matches 4 unless entity @e[tag=!dd_boss,tag=!dd_death,tag=dd_mob] run effect clear @e[type=zoglin,tag=dd_boss]
execute as @e[type=zoglin,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 run title @a[scores={mg19=1..},tag=mg19_4] title ""
execute as @e[type=zoglin,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 4 run title @a[scores={mg19=1..},tag=mg19_4] subtitle {"text":"","extra":[{"text":"@","color":"dark_purple","obfuscated":true},{"text":"Defeat the Boss","color":"gold"},{"text":"@","color":"dark_purple","obfuscated":true}]}


#Random
execute as @e[x=-13,y=25,z=-40,dx=55,dy=3,dz=50] at @s run data merge entity @s {Invulnerable:1,NoAI:1,Silent:1}
tag @e[type=!player,type=!item,x=-13,y=25,z=-40,dx=55,dy=3,dz=50] add mg19
execute if entity @a[scores={mg19=1..},tag=mg19_1] run spreadplayers -1 -2 0 15 under 25 false @e[tag=mg19,tag=!dd_mob,tag=!dd_boss]
execute if entity @a[scores={mg19=1..},tag=mg19_2] run spreadplayers 0 -27 0 15 under 25 false @e[tag=mg19,tag=!dd_mob,tag=!dd_boss]
execute if entity @a[scores={mg19=1..},tag=mg19_3] run spreadplayers 27 -27 0 15 under 25 false @e[tag=mg19,tag=!dd_mob,tag=!dd_boss]
execute if entity @a[scores={mg19=1..},tag=mg19_4] run spreadplayers 27 -2 0 15 under 25 false @e[tag=mg19,tag=!dd_mob,tag=!dd_boss]

#Emerging cosmetics
execute as @e[tag=mg19] at @s unless score @e[name="M@K",limit=1] mg19 matches 6.. run summon area_effect_cloud ~ ~ ~ {Tags:[mg19],Duration:160,Radius:0f}

#Debug
execute as @e[tag=mg19,tag=!dd_mob] at @s run tp ~ ~20 ~
execute if entity @a[scores={mg19=1..},tag=mg19_3] run tag @e[tag=dd_mob,type=phantom] add dd_flymob
execute if entity @a[scores={mg19=1..},tag=mg19_4] run tag @e[tag=dd_mob,type=ghast] add dd_flymob
execute as @e[tag=mg19,tag=dd_mob] at @s run particle angry_villager ~ ~1.6 ~ 0.2 0.4 0.2 0 15 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_mob] at @s run tp ~ ~1.4 ~