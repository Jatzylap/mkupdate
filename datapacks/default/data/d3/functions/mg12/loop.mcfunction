#Spectators
effect give @a[tag=SPmg12] invisibility 1 100 true
effect give @a[tag=SPmg12] weakness 1 255 true
effect give @a[tag=SPmg12] resistance 1 255 true
effect give @a[tag=SPmg12] fire_resistance 1 255 true
clear @a[tag=SPmg12] #pc_items{PC:1}
team join mg12 @a[tag=SPmg12]
execute as @a[tag=SPmg12,x=298,y=72,z=-291,distance=25..] at @s run gamemode adventure

execute as @r[scores={mg12=..1},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg12=1}] at @s run effect clear @s weakness
execute as @a[scores={mg12=1}] at @s run effect clear @s resistance
execute as @a[scores={mg12=1}] at @s run effect clear @s saturation
execute as @a[scores={mg12=0..}] at @s run tag @e[tag=st0rage,distance=..8] add mg12
tp @e[tag=st0rage,tag=mg12] -151 99 -93
execute as @a[scores={mg12=0..,2=1..},tag=st0red] at @s run clear @s #pc_items{PC:1}
execute as @a[scores={mg12=0..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg12=0..,lobby=1..},tag=st0red] at @s run tp @e[tag=st0rage,tag=mg12] @s
execute as @a[scores={mg12=0..,lobby=1..},tag=st0red] at @s run scoreboard players reset @s mg12

execute as @a[scores={mg12=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{PC:1,w:1b}}}] at @s unless entity @s[scores={s=1..}] unless entity @e[type=villager,tag=d,distance=..3] run function d3:mg12/wsummon
function d3:mg12/weapon

#Close Game
execute if entity @e[name="M@K",scores={dt=14900}] run team leave @a[scores={mg12=1..}]
execute if entity @e[name="M@K",scores={dt=14900}] run setblock -346 2 -87 redstone_block

#CAMPFIRE MECHANICS
#Regen
execute as @a[scores={mg12=1..},x=294,y=71,z=-348,distance=..3.7,tag=!PCregen] at @s unless data entity @s {foodSaturationLevel:0f} if block 294 71 -348 campfire[lit=true] run effect give @s regeneration 13 2 true
execute if block 294 71 -348 campfire[lit=true] run tag @a[scores={mg12=1..},x=294,y=71,z=-348,distance=..3.7,tag=!PCregen] add PCregen
effect clear @a[x=294,y=71,z=-348,distance=4..6] regeneration
tag @a[x=294,y=71,z=-348,distance=4..6] remove PCregen

execute as @a[scores={mg12=1..},x=298,y=72,z=-291,distance=..3.7,tag=!PCregen] at @s unless data entity @s {foodSaturationLevel:0f} if block 298 72 -291 campfire[lit=true] run effect give @s regeneration 13 2 true
execute if block 298 72 -291 campfire[lit=true] run tag @a[scores={mg12=1..},x=298,y=72,z=-291,distance=..3.7,tag=!PCregen] add PCregen
effect clear @a[x=298,y=72,z=-291,distance=4..6] regeneration
tag @a[x=298,y=72,z=-291,distance=4..6] remove PCregen

execute as @a[scores={mg12=1..},x=354,y=71,z=-285,distance=..3.7,tag=!PCregen] at @s unless data entity @s {foodSaturationLevel:0f} if block 354 71 -285 campfire[lit=true] run effect give @s regeneration 13 2 true
execute if block 354 71 -285 campfire[lit=true] run tag @a[scores={mg12=1..},x=354,y=71,z=-285,distance=..3.7,tag=!PCregen] add PCregen
effect clear @a[x=354,y=71,z=-285,distance=4..6] regeneration
tag @a[x=354,y=71,z=-285,distance=4..6] remove PCregen

#Fire --> 'destroy' fixes ghost items bug
#mid:298 72 -291
execute if block 298 72 -291 campfire[lit=true] run scoreboard players add @a[scores={mg12=1..}] mg12.3_1 1
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 1 normal @a[scores={mg12=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] at @s run fill 298 72 -291 298 72 -291 campfire[lit=true,signal_fire=true] replace campfire[lit=false]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] at @s run fill 298 72 -291 298 72 -291 campfire[lit=true,signal_fire=true] replace campfire[lit=true,signal_fire=false]
execute as @a[scores={mg12=1..,mg12.3_1=650}] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] run setblock 298 72 -291 campfire[lit=true,signal_fire=false] destroy
execute as @a[scores={mg12=1..,mg12.3_1=1300..}] at @s run setblock 298 72 -291 campfire[lit=false] replace
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_1=250}] run function d3:mg12/loop/condition
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=298,y=72,z=-291,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_1=650..}] run function d3:mg12/loop/condition

#left:354 71 -285
execute if block 354 71 -285 campfire[lit=true] run scoreboard players add @a[scores={mg12=1..}] mg12.3_2 1
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285,dy=2] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 1 normal @a[scores={mg12=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285,dy=2] at @s run fill 354 71 -285 354 71 -285 campfire[lit=true,signal_fire=true] replace campfire[lit=false]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285,dy=2] at @s run fill 354 71 -285 354 71 -285 campfire[lit=true,signal_fire=true] replace campfire[lit=true,signal_fire=false]
execute as @a[scores={mg12=1..,mg12.3_2=650}] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285] run setblock 354 71 -285 campfire[lit=true,signal_fire=false] destroy
execute as @a[scores={mg12=1..,mg12.3_2=1300..}] at @s run setblock 354 71 -285 campfire[lit=false] replace
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_2=250}] run function d3:mg12/loop/condition2
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=354,y=71,z=-285,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_2=650..}] run function d3:mg12/loop/condition2

#right:294 71 -348
execute if block 294 71 -348 campfire[lit=true] run scoreboard players add @a[scores={mg12=1..}] mg12.3_3 1
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{PC:1,w:1b}}},x=294,y=71,z=-348,dy=2] at @s run particle large_smoke ~ ~ ~ 0 0 0 0 1 normal @a[scores={mg12=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{PC:1,w:1b}}},x=294,y=71,z=-348,dy=2] at @s run fill 294 71 -348 294 71 -348 campfire[lit=true,signal_fire=true] replace campfire[lit=false]
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=294,y=71,z=-348,dy=2] at @s run fill 294 71 -348 294 71 -348 campfire[lit=true,signal_fire=true] replace campfire[lit=true,signal_fire=false]
execute as @a[scores={mg12=1..,mg12.3_3=650}] at @s unless entity @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=294,y=71,z=-348,dy=2] run fill 294 71 -348 294 71 -348 campfire[lit=true,signal_fire=false] destroy
execute as @a[scores={mg12=1..,mg12.3_3=1300..}] at @s run setblock 294 71 -348 campfire[lit=false] replace
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=294,y=71,z=-348,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_3=250}] run function d3:mg12/loop/condition3
execute as @e[type=item,nbt={Item:{id:"minecraft:stick",tag:{w:1b}}},x=294,y=71,z=-348,dy=2] at @s if entity @a[scores={mg12=1..,mg12.3_3=650..}] run function d3:mg12/loop/condition3

#Spawn Phantoms
execute if entity @e[name="M@K",scores={dt=15000..}] if block 298 72 -291 campfire[lit=false] run scoreboard players add @a[scores={mg12=1..}] mg12.4_1 1
execute unless block 298 72 -291 campfire[lit=false] run scoreboard players reset @a[scores={mg12=1..}] mg12.4_1
execute if entity @e[name="M@K",scores={dt=15000..22000}] if entity @a[scores={mg12=1..,mg12.4_1=300}] run summon phantom 298 75 -291 {Team:mg12,Tags:[pc],PersistenceRequired:1b,Health:5,DeathLootTable:"d3:phantom"}
execute if entity @a[scores={mg12=1..,mg12.4_1=300..}] run particle portal 298 75 -291 0 0 0 4 1000 force @a[scores={mg12=1..}]
execute if entity @e[name="M@K",scores={dt=15000..}] if block 354 71 -285 campfire[lit=false] run scoreboard players add @a[scores={mg12=1..}] mg12.4_2 1
execute unless block 354 71 -285 campfire[lit=false] run scoreboard players reset @a[scores={mg12=1..}] mg12.4_2
execute if entity @e[name="M@K",scores={dt=15000..22000}] if entity @a[scores={mg12=1..,mg12.4_2=300}] run summon phantom 354 72 -285 {Team:mg12,Tags:[pc],PersistenceRequired:1b,Health:5,DeathLootTable:"d3:phantom"}
execute if entity @a[scores={mg12=1..,mg12.4_2=300..}] run particle portal 354 72 -285 0 0 0 4 1000 force @a[scores={mg12=1..}]
execute if entity @e[name="M@K",scores={dt=15000..}] if block 294 71 -348 campfire[lit=false] run scoreboard players add @a[scores={mg12=1..}] mg12.4_3 1
execute unless block 294 71 -348 campfire[lit=false] run scoreboard players reset @a[scores={mg12=1..}] mg12.4_3
execute if entity @e[name="M@K",scores={dt=15000..22000}] if entity @a[scores={mg12=1..,mg12.4_3=300}] run summon phantom 294 72 -348 {Team:mg12,Tags:[pc],PersistenceRequired:1b,Health:5,DeathLootTable:"d3:phantom"}
execute if entity @a[scores={mg12=1..,mg12.4_3=300..}] run particle portal 294 72 -348 0 0 0 4 1000 force @a[scores={mg12=1..}]

#Scare Phantoms
execute if block 298 72 -291 campfire[lit=true] unless entity @e[type=cat,tag=mg12.3_1] run summon cat 298 72 -291 {Tags:[pc,mg12.3_1],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:100,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,Invulnerable:1b,DeathLootTable:""}
execute if block 354 71 -285 campfire[lit=true] unless entity @e[type=cat,tag=mg12.3_2] run summon cat 354 71 -285 {Tags:[pc,mg12.3_2],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:100,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,Invulnerable:1b,DeathLootTable:""}
execute if block 294 71 -348 campfire[lit=true] unless entity @e[type=cat,tag=mg12.3_3] run summon cat 294 71 -348  {Tags:[pc,mg12.3_3],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Amplifier:100,Duration:1000000,ShowParticles:0b}],PersistenceRequired:1b,Invulnerable:1b,DeathLootTable:""}
execute as @e[type=cat,tag=pc] at @s if block ~ ~ ~ campfire[lit=false] run kill @s

#TREE MECHANICS
#left
execute as @a[scores={mg12=1..},x=353,y=71,z=-291,distance=..2,tag=!shaken] at @s unless data entity @s SelectedItem run scoreboard players add @s mg12.5_1 1
execute as @a[scores={mg12=1..},x=353,y=71,z=-291,distance=2..] at @s run scoreboard players reset @s mg12.5_1
execute as @a[scores={mg12=1..,mg12.5_1=0..}] at @s if data entity @s SelectedItem run scoreboard players reset @s mg12.5_1
execute as @a[tag=!shaken,scores={mg12=1..,mg12.5_1=0..}] at @s run particle block oak_leaves ~ ~8.5 ~ 3 0 3 0 15 normal @a[scores={mg12=1..}]
execute as @a[tag=!shaken,scores={mg12=1..,mg12.5_1=0..}] at @s run playsound block.grass.step master @a[scores={mg12=1..}] 353 73 -291 1
execute as @a[scores={mg12=1..}] at @s store result bossbar pctree1 value run scoreboard players get @s mg12.5_1
execute as @a[scores={mg12=1..,mg12.5_1=90..}] at @s run tag @s add shaken
execute as @a[scores={mg12=1..},tag=shaken] at @s run loot spawn 353 74 -291 loot d3:tree_shake
execute as @a[scores={mg12=1..},tag=shaken] at @s run scoreboard players reset @s mg12.5_1
tag @a remove shaken
bossbar set pctree1 players @a[scores={mg12=1..,mg12.5_1=..90}]

#right
execute as @a[scores={mg12=1..},x=299,y=71,z=-343,distance=..2,tag=!shaken] at @s unless data entity @s SelectedItem run scoreboard players add @s mg12.5_2 1
execute as @a[scores={mg12=1..},x=299,y=71,z=-343,distance=2..] at @s run scoreboard players reset @s mg12.5_2
execute as @a[scores={mg12=1..,mg12.5_2=0..}] at @s if data entity @s SelectedItem run scoreboard players reset @s mg12.5_2
execute as @a[tag=!shaken,scores={mg12=1..,mg12.5_2=0..}] at @s run particle block oak_leaves ~ ~8.5 ~ 3 0 3 0 15 normal @a[scores={mg12=1..}]
execute as @a[tag=!shaken,scores={mg12=1..,mg12.5_2=0..}] at @s run playsound block.grass.step master @a[scores={mg12=1..}] 299 73 -343 1
execute as @a[scores={mg12=1..}] at @s store result bossbar pctree2 value run scoreboard players get @s mg12.5_2
execute as @a[scores={mg12=1..,mg12.5_2=110..}] at @s run tag @s add shaken
execute as @a[scores={mg12=1..},tag=shaken] at @s run loot spawn 299 74 -343 loot d3:tree_shake
execute as @a[scores={mg12=1..},tag=shaken] at @s run scoreboard players reset @s mg12.5_2
tag @a remove shaken
bossbar set pctree2 players @a[scores={mg12=1..,mg12.5_2=..110}]

#GAME MECHANICS
execute as @e[name="M@K",scores={dt=23100..}] at @s run setblock -349 2 -89 redstone_block
execute unless entity @a[scores={mg12=1..}] run setblock -349 2 -89 redstone_block
execute as @a[scores={mg12=1..},tag=!pclaim] at @s if block 300 73 -279 purple_carpet if block 298 73 -279 purple_carpet if block 298 73 -281 purple_carpet run function d3:mg12/claim
execute if block 300 73 -279 green_carpet run tag @a remove pclaim
execute if block 298 73 -279 green_carpet run tag @a remove pclaim
execute if block 298 73 -281 green_carpet run tag @a remove pclaim
effect give @a[scores={mg12=1}] hunger 1000000 6 true
execute as @a[scores={mg12=1..,mg12.4_1=300..}] at @s run title @s title [""]
execute as @a[scores={mg12=1..,mg12.4_1=300..}] at @s run title @s subtitle ["",{"text":" a Phantom spawned in the Camp!","color":"light_purple","bold":true}]
execute as @a[scores={mg12=1..,mg12.4_1=300..}] at @s run playsound entity.zombie_villager.converted master @a[scores={mg12=1..}] ~ ~ ~ 1000 0
execute as @a[scores={mg12=1..},nbt={Inventory:[{Count:64b,tag:{PC:1,w:1b}}]}] at @s run effect give @s slowness 1 1 true
effect give @a[scores={mg12=2..}] resistance 1000000 100 true
effect give @a[scores={mg12=2..}] weakness 1000000 100 true
effect give @a[scores={mg12=2..}] saturation 1000000 100 true

#Thirst
execute as @a[scores={mg12=1}] at @s run scoreboard players add @s mg12.1_1 1
title @a[scores={mg12=1,mg12.1_1=..1000}] actionbar ["",{"text":"Hydration: ","color":"dark_blue","bold":true},{"text":"@","color":"aqua","bold":true}]
title @a[scores={mg12=1,mg12.1_1=1000..1500}] actionbar ["",{"text":"Hydration: ","color":"dark_blue","bold":true},{"text":"@","color":"green"}]
title @a[scores={mg12=1,mg12.1_1=1500..2500}] actionbar ["",{"text":"Hydration: ","color":"dark_blue","bold":true},{"text":"@","color":"gold","italic":true}]
title @a[scores={mg12=1,mg12.1_1=2500..}] actionbar ["",{"text":"Hydration: ","color":"dark_blue","bold":true},{"text":"@","color":"light_purple","italic":true}]
effect give @a[scores={mg12=1..,mg12.1_1=2500..3000}] nausea 4 0 true
execute as @a[scores={mg12=1..,mg12.6=1..}] at @s run scoreboard players remove @s mg12.1_1 900
execute as @a[scores={mg12=1..,mg12.6=1..}] at @s run scoreboard players reset @s mg12.6
execute as @a[scores={mg12=1..,mg12.1_1=..-1}] at @s run scoreboard players reset @s mg12.1_1

#Player claiming (upon map)
execute if block 298 72 -291 campfire[lit=true] run setblock 298 73 -279 green_carpet
execute if block 294 71 -348 campfire[lit=true] run setblock 298 73 -281 green_carpet
execute if block 354 71 -285 campfire[lit=true] run setblock 300 73 -279 green_carpet

#Phantom claiming (upon map)
execute as @a[scores={mg12.4_1=300..}] at @s if entity @e[type=phantom,tag=pc,x=291,y=70,z=-298,dx=15,dy=15,dz=15] unless block 298 72 -291 campfire[lit=true] run setblock 298 73 -279 purple_carpet
execute if entity @e[type=phantom,tag=pc,x=290,y=70,z=-353,dx=17,dy=15,dz=19] unless block 294 71 -348 campfire[lit=true] run setblock 298 73 -281 purple_carpet
execute if entity @e[type=phantom,tag=pc,x=345,y=70,z=-301,dx=17,dy=15,dz=19] unless block 354 71 -285 campfire[lit=true] run setblock 300 73 -279 purple_carpet
scoreboard players reset @a[scores={mg12=1..,mg12.4_1=300..}] mg12.4_1
scoreboard players reset @a[scores={mg12=1..,mg12.4_2=300..}] mg12.4_2
scoreboard players reset @a[scores={mg12=1..,mg12.4_3=300..}] mg12.4_3

#Phantom transforming
execute as @e[type=phantom,tag=pc,nbt={Size:0}] at @s if entity @e[type=phantom,tag=pc,distance=0.5..2,nbt={Size:0}] run tag @s add g
execute store result score @e[name="M@K",limit=1] mg12.2 if entity @e[type=phantom,tag=pc,tag=g]
execute as @e[type=phantom,tag=pc,tag=g,limit=1] at @s if score @e[name="M@K",limit=1] mg12.2 matches 10.. run summon phantom ~ ~ ~ {Team:mg12,Tags:[pc],Size:6,PersistenceRequired:1b,Health:10,HandItems:[{id:string,Count:2,tag:{PC:1,w:1b}}],HandDropChances:[1f],DeathLootTable:"pc:phantom"}
execute as @e[type=phantom,tag=pc,tag=g,limit=10] at @s if score @e[name="M@K",limit=1] mg12.2 matches 10.. run tp @s ~ -1000 ~
tag @e[type=phantom,tag=pc] remove g

#DEATHS
#Slain by Phantom
execute as @e[type=phantom,tag=pc] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 run execute positioned ~ ~-1.1 ~ positioned ^ ^ ^0.1 run tag @p[distance=..1,scores={mg12=1..}] add pbite
title @a[tag=pbite] title [""]
effect give @a[tag=pbite] blindness 1 255 true
effect give @a[tag=pbite] slowness 1 155 true
title @a[tag=pbite] subtitle ["",{"text":"You were slain by a Phantom...o_o","color":"red"}]
playsound entity.phantom.bite master @a[tag=pbite] ~ ~ ~ 1000 0.5
gamemode adventure @a[tag=pbite]
execute as @a[scores={mg12=1..},tag=pbite] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1b,Small:1,Tags:[pc,x,bite],CustomName:'{"text":"Someone was slain by a Phantom here"}',CustomNameVisible:1,ArmorItems:[{},{},{},{Count:1,id:skeleton_skull}]}
execute as @a[scores={mg12=1..},tag=pbite] at @s run spawnpoint @s

#Killed (by Player)
execute as @a[scores={mg12=1..,mg12.1_2=1..,mg12.8=1..}] at @s if entity @a[scores={mg12.9=1..},distance=..6] run tag @s add pkill
title @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=pkill] title ["",{"text":""}]
title @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=pkill] subtitle ["",{"text":"You were killed...-_-","color":"red"}]
execute as @a[scores={mg12=1..},tag=pkill] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1b,Small:1,Tags:[pc,x,kill],CustomName:'{"text":"Someone was murdered here"}',CustomNameVisible:1,ArmorItems:[{},{},{},{Count:1,id:skeleton_skull}]}
execute as @a[scores={mg12=1..},tag=pkill] at @s run spawnpoint @s
scoreboard players reset @a[scores={mg12=1..}] mg12.8
scoreboard players reset @a[scores={mg12=1..}] mg12.9

#Died (of thirst)
tag @a[scores={mg12=1..,mg12.1_1=3000..}] add pthirst
kill @a[tag=pthirst]
execute as @a[scores={mg12=1..},tag=pthirst] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1b,Small:1,Tags:[pc,x,thirst],CustomName:'{"text":"Someone dehydrated here"}',CustomNameVisible:1,ArmorItems:[{},{},{},{Count:1,id:skeleton_skull}]}
execute as @a[scores={mg12=1..},tag=pthirst] at @s run spawnpoint @s
title @a[tag=pthirst] title ["",{"text":""}]
title @a[tag=pthirst] subtitle ["",{"text":"You dehydrated...-_-","color":"red"}]

#Died (no cause)
title @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=!pkill,tag=!pthirst] title ["",{"text":""}]
title @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=!pkill,tag=!pthirst] subtitle ["",{"text":"You died...-_-","color":"red"}]
execute as @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=!pkill,tag=!pthirst] at @s run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1b,Invulnerable:1b,Small:1,Tags:[pc,x,die],CustomName:'{"text":"Someone died here of natural causes :|"}',CustomNameVisible:1,ArmorItems:[{},{},{},{Count:1,id:skeleton_skull}]}
execute as @a[scores={mg12=1..,mg12.1_2=1..},tag=!pbite,tag=!pkill,tag=!pthirst] at @s run spawnpoint @s

scoreboard players set @a[tag=pbite] mg12 0
scoreboard players set @a[tag=pkill] mg12 0
scoreboard players set @a[scores={mg12=1..,mg12.1_2=1..}] mg12 0
tag @a[scores={mg12=0..,mg12.1_2=1..}] add SPmg12
tag @a[tag=pbite] add SPmg12
tag @a[tag=pkill] add SPmg12
tag @a[tag=pthirst] add SPmg12
scoreboard players reset @a mg12.1_2
tag @a remove pbite
tag @a remove pkill
tag @a remove pthirst