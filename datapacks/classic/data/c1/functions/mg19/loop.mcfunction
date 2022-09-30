#General
kill @e[x=-13,y=40,z=-40,dx=55,dy=26,dz=50,type=arrow,nbt={inGround:1b}]
execute as @e[type=!player,type=!armor_stand,type=!area_effect_cloud,type=!item_frame,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s unless entity @s[x=-13,y=25,z=-14,dx=26,dy=43,dz=24] if entity @a[tag=mg19_1] run tp ~ -1000 ~
execute as @e[type=!player,type=!armor_stand,type=!area_effect_cloud,type=!item_frame,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s unless entity @s[x=-12,y=25,z=-40,dx=25,dy=43,dz=26] if entity @a[tag=mg19_2] run tp ~ -1000 ~
execute as @e[type=!player,type=!armor_stand,type=!area_effect_cloud,type=!item_frame,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s unless entity @s[x=13,y=25,z=-40,dx=28,dy=43,dz=26] if entity @a[tag=mg19_3] run tp ~ -1000 ~
execute as @e[type=!player,type=!armor_stand,type=!area_effect_cloud,type=!item_frame,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s unless entity @s[x=13,y=25,z=-14,dx=29,dy=43,dz=24] if entity @a[tag=mg19_4] run tp ~ -1000 ~
execute as @e[type=slime,tag=dd_mob,nbt={Size:0}] at @s run tag @s remove mg19
execute as @e[type=slime,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s unless entity @s[nbt={Size:0}] run tag @s add mg19
tag @e[type=magma_cube,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] add mg19
tag @e[type=!player,type=!item,x=-13,y=25,z=-40,dx=55,dy=3,dz=50] add mg19
execute if entity @a[tag=!mg19_1,tag=!mg19_2,tag=!mg19_3,tag=!mg19_4] run tag @e[type=slime,nbt={Size:0},x=-13,y=25,z=-14,dx=26,dy=43,dz=24] add dd_submerge
execute as @e[tag=dd_submerge] at @s run tp @s ~ ~-0.19 ~ ~-16 ~
execute as @e[tag=dd_submerge] at @s if entity @s[y=40,dy=-5] run kill @e[type=!player,x=-13,y=25,z=-40,dx=55,dy=40,dz=50]
execute as @e[tag=dd_submerge] at @s run playsound block.gravel.hit master @a[scores={mg19=1..}] ~ ~ ~ 0.1 0
execute as @e[type=!player,type=!skeleton,type=!area_effect_cloud,tag=!dd_mob,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s run data merge entity @s {DeathLootTable:""}
item replace block 13 48 -14 container.22 with arrow{mg:19}
item replace block 13 48 -14 container.13 with bow{mg:19,Unbreakable:1,Enchantments:[{id:infinity,lvl:1}]}

execute as @a[scores={mg19=1..,lobby=1..}] at @s run tag @s add dd_exit
execute as @a[scores={mg19=1..,2=1..}] at @s run tag @s add dd_exit
execute as @a[scores={mg19=1..},nbt={DeathTime:1s}] at @s unless entity @s[nbt={SpawnDimension:"minecraft:nightsky_world"}] run tag @s add dd_exit
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_1] at @s if entity @s[nbt={SpawnDimension:"minecraft:nightsky_world"}] if block 12 52 -2 respawn_anchor[charges=0] run tag @s add dd_exit
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_2] at @s if entity @s[nbt={SpawnDimension:"minecraft:nightsky_world"}] if block 10 50 -18 respawn_anchor[charges=0] run tag @s add dd_exit
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_3] at @s if entity @s[nbt={SpawnDimension:"minecraft:nightsky_world"}] if block 37 53 -29 respawn_anchor[charges=0] run tag @s add dd_exit
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_4] at @s if entity @s[nbt={SpawnDimension:"minecraft:nightsky_world"}] if block 38 50 9 respawn_anchor[charges=0] run tag @s add dd_exit

execute unless entity @a[tag=mg19_1,tag=!dd_exit,x=-13,y=25,z=-14,dx=26,dy=43,dz=24] if entity @e[tag=dd_mob,tag=!dd_submerge,x=-13,y=25,z=-14,dx=26,dy=43,dz=24] run function c1:mg19/reset/area1
execute unless entity @a[tag=mg19_2,tag=!dd_exit,x=-12,y=25,z=-40,dx=25,dy=43,dz=26] if entity @e[tag=dd_mob,tag=!dd_submerge,x=-12,y=25,z=-40,dx=25,dy=43,dz=26] run function c1:mg19/reset/area2
execute unless entity @a[tag=mg19_3,tag=!dd_exit,x=13,y=25,z=-40,dx=28,dy=43,dz=26] if entity @e[tag=dd_mob,tag=!dd_submerge,x=13,y=25,z=-40,dx=28,dy=43,dz=26] run function c1:mg19/reset/area3
execute unless entity @a[tag=mg19_4,tag=!dd_exit,x=13,y=25,z=-14,dx=29,dy=43,dz=24] if entity @e[tag=dd_mob,tag=!dd_submerge,x=13,y=25,z=-14,dx=29,dy=43,dz=24] run function c1:mg19/reset/area4
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_1] at @s unless entity @a[tag=mg19_1,tag=!dd_exit] run function c1:mg19/reset/area1
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_2] at @s unless entity @a[tag=mg19_2,tag=!dd_exit] run function c1:mg19/reset/area2
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_3] at @s unless entity @a[tag=mg19_3,tag=!dd_exit] run function c1:mg19/reset/area3
execute as @a[scores={mg19=1..},nbt={DeathTime:1s},tag=mg19_4] at @s unless entity @a[tag=mg19_4,tag=!dd_exit] run function c1:mg19/reset/area4

execute as @a[scores={mg19=1..},tag=dd_exit] at @s run tag @s remove mg19_1
execute as @a[scores={mg19=1..},tag=dd_exit] at @s run tag @s remove mg19_2
execute as @a[scores={mg19=1..},tag=dd_exit] at @s run tag @s remove mg19_3
execute as @a[scores={mg19=1..},tag=dd_exit] at @s run tag @s remove mg19_4
execute if score @e[name="M@K",limit=1] mg19 matches 1.. if entity @e[tag=mg19_1] store result score @e[limit=1,name="M@K"] mg19.1 if entity @e[type=!area_effect_cloud,tag=mg19]
execute if score @e[name="M@K",limit=1] mg19 matches 1.. if entity @e[tag=mg19_2] store result score @e[limit=1,name="M@K"] mg19.1 if entity @e[type=!area_effect_cloud,tag=mg19]
execute if score @e[name="M@K",limit=1] mg19 matches 1.. if entity @e[tag=mg19_3] store result score @e[limit=1,name="M@K"] mg19.1 if entity @e[type=!area_effect_cloud,tag=mg19]
execute if score @e[name="M@K",limit=1] mg19 matches 1.. if entity @e[tag=mg19_4] store result score @e[limit=1,name="M@K"] mg19.1 if entity @e[type=!area_effect_cloud,tag=mg19,tag=!dd_boss,tag=!dd_death]
clear @a[scores={mg19=1..},tag=dd_exit] #dd_items{mg:19}
tag @a remove dd_exit

#Animations
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_mob,tag=!dd_boss2] at @s run playsound block.gravel.hit master @a[scores={mg19=1..}] ~ ~ ~ 0.05 0
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_mob] at @s if entity @s[x=-13,y=48.8,z=-40,dx=55,dy=30,dz=50] if block ~ ~1.6 ~ #dd_noco run data merge entity @s {Invulnerable:0}
execute as @e[tag=mg19,tag=dd_mob] at @s run kill @e[tag=dd_particle,dy=1,limit=1]
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_mob] at @s if entity @s[x=-13,y=48.8,z=-40,dx=55,dy=30,dz=50] if block ~ ~ ~ #dd_noco run data merge entity @s {Invulnerable:0,NoAI:0,Silent:0}
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_death] at @s if entity @s[x=-13,y=48.8,z=-40,dx=55,dy=30,dz=50] if block ~ ~ ~ #dd_noco run tag @s add dd_mob
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_boss2,tag=!dd_boss3,tag=!dd_mob] at @s if entity @a[tag=mg19_1] run tp @s ~ ~0.04 ~ ~13 ~
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_boss2,tag=!dd_boss3,tag=!dd_mob] at @s if entity @a[tag=mg19_2] run tp @s ~ ~0.04 ~ ~13 ~
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_boss2,tag=!dd_boss3,tag=!dd_mob] at @s if entity @a[tag=mg19_3] run tp @s ~ ~0.04 ~ ~13 ~
execute as @e[type=!area_effect_cloud,tag=mg19,tag=!dd_boss2,tag=!dd_boss3,tag=!dd_mob] at @s if entity @a[tag=mg19_4] unless entity @a[tag=mg19_win] run tp @s ~ ~0.04 ~ ~13 ~
execute as @e[type=area_effect_cloud,tag=mg19] at @s if entity @s[x=-13,y=48.8,z=-40,dx=55,dy=30,dz=50] if block ~ ~ ~ #dd_noco run tag @s add dd_particle
execute as @e[type=area_effect_cloud,tag=mg19,tag=!dd_particle] at @s run tp @s ~ ~1 ~

#Exit
execute as @a[tag=mk.09,scores={interact=1..}] at @s run function c1:mg19/exit
execute as @p[tag=mg19_win] at @s if entity @s[y=0,dy=-10] run function c1:mg19/reset

#Particles
execute unless entity @a[tag=mg19_win] if block 10 47 -19 redstone_torch run particle heart 13 49.5 -14 0.3 3 0.3 1 1 force @a[scores={mg19=1..},tag=!mg19_1,tag=!mg19_2,tag=!mg19_3,tag=!mg19_4]
execute if entity @a[tag=mg19_win] run particle portal 13 49.5 -14 0 2 0 4.5 9 force @a[scores={mg19=1..},tag=mg19_4]
execute if entity @a[tag=mg19_win] if block 13 48 -14 air run particle sneeze 13 49 -14 0.2 0.8 0.2 0 129 force @a[scores={mg19=1..}]
execute if entity @a[tag=mg19_win] run particle enchant 13 48.5 -14 0 2 0 2.4 1 force @a[scores={mg19=1..},tag=mg19_4]
execute if entity @a[tag=mg19_win] run particle soul_fire_flame 13 49 -14 0.4 1 0.4 0 1 force @a[scores={mg19=1..},tag=!mg19_4]
execute if block 10 47 -19 redstone_torch run effect give @a[x=13,y=49,z=-14,dy=1,scores={mg19=1..},tag=!mg19_1,tag=!mg19_2,tag=!mg19_3,tag=!mg19_4] saturation 1 3 true
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #sand run particle block sand ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #leaves run particle block oak_leaves ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ sandstone run particle block sand ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ stone run particle block stone ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ cobblestone run particle block cobblestone ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ netherrack run particle block netherrack ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ nether_quartz_ore run particle block netherrack ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ nether_gold_ore run particle block netherrack ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ nether_bricks run particle block nether_bricks ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ nether_brick_stairs run particle block nether_bricks ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ magma_block run particle lava ~ ~ ~ 0 0.2 0 1 1 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ soul_sand run particle block soul_sand ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ soul_soil run particle block soul_sand ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #ice run particle block blue_ice ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ light_blue_stained_glass run particle block blue_ice ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ snow_block run particle item_snowball ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #bamboo_plantable_on unless block ~ ~-1 ~ #sand run particle block dirt ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #stone_bricks run particle block stone_bricks ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #planks run particle block oak_planks ~ ~ ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ #wooden_slabs run particle block oak_planks ~ ~-0.8 ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ sandstone_slab run particle block sand ~ ~-0.8 ~ 0 0 0 1 6 force @a[scores={mg19=1..}]
execute as @e[tag=mg19,tag=dd_particle] at @s if block ~ ~-1 ~ nether_brick_slab run particle block nether_bricks ~ ~-0.8 ~ 0 0 0 1 6 force @a[scores={mg19=1..}]

#WAVES
execute if entity @a[scores={mg19=1..}] unless entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 3..4 if score @e[limit=1,name="M@K"] mg19.1 matches 0 unless entity @e[tag=dd_boss] run function c1:mg19/spawn
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 3..4 if score @e[limit=1,name="M@K"] mg19.1 matches 0 if entity @e[tag=dd_boss] run function c1:mg19/spawn
execute if entity @a[scores={mg19=1..},tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 1..2 if score @e[limit=1,name="M@K"] mg19.1 matches ..1 if entity @e[tag=dd_boss] run function c1:mg19/spawn
execute if entity @a[scores={mg19=1..}] unless entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches ..2 if score @e[limit=1,name="M@K"] mg19.1 matches ..1 unless entity @e[tag=dd_boss] run function c1:mg19/spawn

#BOSS
execute as @e[tag=dd_death] at @s unless entity @a[tag=mg19_4] run tp @s @e[limit=1,tag=dd_boss]
execute as @e[limit=1,tag=dd_boss] at @s unless data entity @s {IsBaby:1b} if entity @a[tag=mg19_4] run tp @e[tag=dd_death] ~ ~4 ~
#Plains
execute as @e[tag=dd_death] at @s if score @e[limit=1,name="M@K"] mg19 matches 8 unless entity @e[tag=dd_boss] run particle firework ~ ~0.6 ~ 0 0 0 1.2 1100 force @a[scores={mg19=1..}]
execute as @e[type=slime,tag=mg19] at @s if entity @a[tag=mg19_1] if score @e[limit=1,name="M@K"] mg19 matches 6.. run tag @s add dd_boss
execute as @e[type=slime,tag=mg19] at @s if entity @a[tag=mg19_1] if score @e[limit=1,name="M@K"] mg19 matches 6.. run data merge entity @s {NoAI:0}
execute as @e[tag=dd_boss1] at @s if entity @a[tag=mg19_1] run particle smoke ~ ~ ~ 0.8 0.8 0.8 0 9 normal @a[scores={mg19=1..}]
execute as @e[tag=dd_boss] at @s if entity @a[tag=mg19_1] run particle smoke ~ ~ ~ 0.2 0.2 0.2 0 4 normal @a[scores={mg19=1..}]
execute if entity @a[tag=mg19_1] if score @e[limit=1,name="M@K"] mg19 matches 6 unless block ~ ~-1 ~ air unless entity @e[tag=dd_boss,nbt={Size:5}] run scoreboard players set @e[name="M@K",limit=1] mg19 7
execute if entity @a[tag=mg19_1] if score @e[limit=1,name="M@K"] mg19 matches 7 if entity @e[tag=dd_boss,nbt={Size:2}] run scoreboard players set @e[name="M@K",limit=1] mg19 8
execute as @e[tag=dd_death,nbt={OnGround:1b}] at @s if entity @a[tag=mg19_1] if score @e[limit=1,name="M@K"] mg19 matches 8 unless entity @e[tag=dd_boss,nbt={Size:2}] run function c1:mg19/end
#Desert
execute as @e[tag=dd_boss2,tag=mg19] at @s if score @e[limit=1,name="M@K"] mg19 matches 6 run tp @s ~ ~ ~ facing entity @p[scores={mg19=1..},tag=mg19_2]
execute as @e[limit=1,name="M@K"] at @s if entity @e[limit=1,tag=mg19,tag=dd_boss2,nbt={HurtTime:10s}] if score @s mg19 matches 6 run scoreboard players set @s mg19 7
execute as @e[tag=dd_boss2] at @s if score @e[limit=1,name="M@K"] mg19 matches 8 run particle angry_villager ~ ~2.5 ~ 0.3 0.3 0.3 0 1 normal @a[scores={mg19=1..}]
execute as @e[tag=dd_boss2,tag=mg19] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 7 run data merge entity @s {NoAI:0,DeathLootTable:"",Motion:[0d,0.8d]}
execute as @e[tag=dd_boss2,tag=mg19] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 7 run title @a[scores={mg19=1..},tag=mg19_2] title ""
execute as @e[tag=dd_boss2,tag=mg19] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 7 run title @a[scores={mg19=1..},tag=mg19_2] subtitle {"text":"","extra":[{"text":"@","color":"dark_purple","obfuscated":true},{"text":"Defeat the Boss","color":"gold"},{"text":"@","color":"dark_purple","obfuscated":true}]}
execute as @e[tag=dd_boss2,tag=mg19] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 7 run setblock 33 30 16 redstone_block
execute as @e[limit=1,name="M@K"] at @s if entity @a[tag=mg19_2] if score @s mg19 matches 7 run scoreboard players set @s mg19 8
execute as @e[tag=dd_boss2,tag=mg19] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 8 run data merge entity @s {AngerTime:99}
execute as @e[tag=dd_death,nbt={OnGround:1b}] at @s if entity @a[tag=mg19_2] if score @e[limit=1,name="M@K"] mg19 matches 6.. unless entity @e[tag=dd_boss] run function c1:mg19/end
#Glacier
execute as @e[tag=dd_boss3,tag=mg19] at @s if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 6 run setblock 33 30 16 redstone_block
execute as @e[tag=dd_boss3,tag=mg19] at @s if score @e[limit=1,name="M@K"] mg19 matches 7 run tp @s ~ ~ ~ facing entity @p[scores={mg19=1..},tag=mg19_2]
execute as @e[limit=1,name="M@K"] at @s if entity @a[tag=mg19_2] if score @s mg19 matches 7 run scoreboard players set @s mg19 8
execute as @e[tag=dd_death,nbt={OnGround:1b}] at @s if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 8 unless entity @e[tag=dd_boss] run function c1:mg19/end
execute as @e[tag=dd_boss3] at @s if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 8 run particle soul_fire_flame ^ ^1 ^ 0.2 0.2 0.2 0 4 normal @a[scores={mg19=1..}]
execute as @e[tag=dd_boss3,nbt={HurtTime:10s}] at @s if entity @a[tag=mg19_3] if score @e[limit=1,name="M@K"] mg19 matches 8 run particle soul ^ ^1 ^ 0.5 0.5 0.5 0.05 65 normal @a[scores={mg19=1..}]
#Wasteland
execute as @e[tag=dd_death] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 6 unless entity @e[tag=dd_boss] run particle firework ~ ~0.6 ~ 0 0 0 1.2 1100 force @a[scores={mg19=1..}]
execute as @e[type=zoglin,tag=mg19] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 3 run effect give @s resistance 1000000 255 true
execute as @e[limit=1,name="M@K"] at @s if entity @a[tag=mg19_4] if score @s mg19 matches 4 run scoreboard players set @s mg19 6
execute as @e[type=zoglin,tag=mg19,tag=dd_boss] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 6 run particle smoke ~ ~1 ~ 0.3 0.2 0.3 0 9 normal @a[scores={mg19=1..}]
execute as @e[tag=dd_death,nbt={OnGround:1b}] at @s if entity @a[tag=mg19_4] if score @e[limit=1,name="M@K"] mg19 matches 6 unless entity @e[tag=dd_boss] run function c1:mg19/end