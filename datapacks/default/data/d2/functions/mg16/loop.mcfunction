#Spectators
gamemode spectator @a[tag=SPmg16]
gamemode spectator @a[scores={mg16=1..},tag=GWdead]
team leave @a[scores={mg16=1..},tag=GWdead]
execute as @a[scores={mg16=1..},tag=GWdead] at @s unless entity @s[x=113,y=3,z=-435,dx=58,dy=45,dz=158] run tp @s 142 20 -357
execute as @a[tag=SPmg16] at @s unless entity @s[x=113,y=3,z=-435,dx=58,dy=45,dz=158] run tp @s 142 20 -357
execute as @a[tag=SPmg16] at @s unless entity @a[scores={mg16=1..},tag=SPmg16] run tag @s remove SPmg16
tag @a[scores={mg16=1..},tag=GWdead] remove GWplayers

execute as @r[scores={mg16=1..},tag=!st0red] at @s run function mk:store
tag @e[type=!player,type=!item_frame,x=113,y=3,z=-435,dx=58,dy=45,dz=158] add mg16
execute as @e[type=item_frame,x=113,y=3,z=-435,dx=58,dy=45,dz=158,nbt=!{Fixed:1b}] at @s run data merge entity @s {Fixed:1}
team join mg16 @e[type=!armor_stand,name=!"Floating Rider",type=!creeper,type=!area_effect_cloud,tag=mg16]
execute as @a[scores={mg16=1..,lobby=1..}] at @s run tag @s remove GWdead
execute as @a[scores={mg16=1..,lobby=1..}] at @s run tag @s remove GWplayers
execute as @a[scores={mg16=1..,lobby=1..}] at @s run tag @s remove SPmg16
execute as @a[scores={mg16=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg16=1..,2=1..}] at @s run tag @s remove SPmg16
execute as @a[scores={mg16=1..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg16=1..,2=1..}] at @s run scoreboard players reset @s mg16

#Main
scoreboard players remove @e[limit=1,name="M@K",scores={mg16.3=1..}] mg16.3 1
scoreboard players add @e[limit=1,name="M@K"] mg16.2 1
scoreboard players reset @e[limit=1,name="M@K",scores={mg16.2=321..}] mg16.2
execute as @a[scores={mg16=1..,mg16.7=1..},tag=GWplayers] at @s run tag @s add GWdrop
execute as @a[scores={mg16=1..,mg16.7=1..},tag=GWplayers,tag=GWweak] at @s run tag @s add GWdead
execute unless entity @a[scores={mg16=1..},tag=GWplayers,team=mg16-red,tag=!GWdead] if entity @a[scores={mg16=1..},tag=GWplayers,team=mg16-red,tag=GWdead] run tellraw @a[scores={mg16=1..}] ["",{"text":"\nTeamRed","color":"red","underlined":true},{"text":" have been eliminated!\n","color":"gold"}]
execute unless entity @a[scores={mg16=1..},tag=GWplayers,team=mg16-blue,tag=!GWdead] if entity @a[scores={mg16=1..},tag=GWplayers,team=mg16-blue,tag=GWdead] run tellraw @a[scores={mg16=1..}] ["",{"text":"\nTeamBlue","color":"blue","underlined":true},{"text":" have been eliminated!\n","color":"gold"}]
execute as @a[scores={mg16=1..},tag=GWplayers,team=mg16-red,tag=GWweak,tag=GWdrop] at @s run title @s title ["",{"text":"You were eliminated!","color":"red"}]
execute as @a[scores={mg16=1..},tag=GWplayers,team=mg16-blue,tag=GWweak,tag=GWdrop] at @s run title @s title ["",{"text":"You were eliminated!","color":"blue"}]
execute unless entity @a[scores={mg16=1..},tag=GWplayers] run fill -284 2 -66 -287 2 -70 air replace redstone_block
scoreboard players reset @a mg16.7
#detect
tag @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-419,distance=24..] remove mg16_near0
tag @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-293,distance=24..] remove mg16_near1
execute as @p[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-419,tag=!mg16_near0,distance=..23] at @s run tellraw @a[scores={mg16=1..}] ["",{"text":"\n","color":"white"},{"selector":"@s","bold":true},{"text":" is near ","color":"yellow","bold":true},{"text":"TeamBlue","color":"blue","underlined":true},{"text":" Base","color":"yellow","bold":true}]
execute as @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-419,tag=!mg16_near0,distance=..23] at @s if entity @a[team=mg16-red] run playsound block.note_block.pling master @s ~ ~ ~ 10000 1
tag @a[scores={mg16=1..},tag=GWplayers,tag=!GWdead,x=142,y=4,z=-419,tag=!mg16_near0,distance=..23] add mg16_near0
execute as @r[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-293,tag=!mg16_near1,distance=..23] at @s run tellraw @a[scores={mg16=1..}] ["",{"text":"\n","color":"white"},{"selector":"@s","bold":true},{"text":" is near ","color":"yellow","bold":true},{"text":"TeamRed","color":"red","underlined":true},{"text":" Base","color":"yellow","bold":true}]
execute as @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-293,tag=!mg16_near1,distance=..23] at @s if entity @a[team=mg16-blue] run playsound block.note_block.pling master @s ~ ~ ~ 10000 1
tag @a[scores={mg16=1..},tag=GWplayers,tag=!GWdead,x=142,y=4,z=-293,tag=!mg16_near1,distance=..23] add mg16_near1

#Mechanics
kill @e[type=area_effect_cloud,tag=mg16]
kill @e[type=item,nbt={Item:{id:"minecraft:minecart"}},tag=mg16]
execute if score @e[limit=1,name="M@K"] mg16.2 matches 320 run give @a[scores={mg16=1..},tag=GWplayers] brick{HideFlags:64,display:{color:0,Name:'{"text":"§6Enchanted Brick"}',Lore:['{"text":"§7➵ §eTradeable"}']},Enchantments:[{id:12,lvl:1}]}
execute if score @e[limit=1,name="M@K"] mg16.2 matches 200..250 as @a[scores={mg16=1..},tag=GWplayers] at @s if block ~ ~-1 ~ grass_block run setblock ~ ~ ~ snow keep
execute as @a[scores={mg16=1..,mg16.5=1..},tag=GWplayers] at @s run particle witch ~ ~ ~ 1 2 1 0.5 1000 force @a[scores={mg16=1..}]
execute as @a[scores={mg16=1..,mg16.5=1..},tag=GWplayers] at @s run playsound entity.item.break master @a[scores={mg16=1..}] ~ ~ ~ 2.5 0
execute as @e[type=arrow,tag=mg16] at @s run tag @e[distance=..4,type=end_crystal,tag=mg16] add exp
execute as @e[type=snowball,tag=mg16] at @s run tag @e[distance=..4,type=end_crystal,tag=mg16] add exp
execute as @e[type=arrow,tag=mg16,nbt={inGround:1b}] at @s run kill @s
execute as @a[scores={mg16=1..},tag=GWplayers,nbt={HurtTime:9s}] at @s run particle block redstone_block ~ ~1 ~ 0 0.2 0 0 50 force @a[scores={mg16=1..}]
execute if block 142 28 -419 gold_block run setblock -287 2 -70 redstone_block
execute if block 142 28 -293 gold_block run setblock -287 2 -70 redstone_block
execute as @e[type=wither_skull,tag=mg16] at @s run particle flame ~ ~ ~ 0 0 0 0 1 force @a[scores={mg16=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot",tag:{HideFlags:64}}}] at @s unless data entity @s Glowing run data merge entity @s {Glowing:1}
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_block",tag:{HideFlags:25}}}] at @s unless data entity @s Glowing run data merge entity @s {Glowing:1}

#spawn
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1.. if score @e[limit=1,name="M@K"] mg16.2 matches 80..82 run summon guardian 142 11 -357 {CustomName:'{"text":"Guardian","color":"aqua","bold":true}',Health:17.5,Tags:[mg16],Silent:1,Passengers:[{id:husk,CustomName:'{"text":"Guardian Rider","color":"aqua","bold":true}',CustomNameVisible:1b,Health:11.0,Tags:[mg16],CanBreakDoors:1,Attributes:[{Base:90.0d,Name:"generic.follow_range"}],ArmorDropChances:[1f,0f],HandDropChances:[0f,0f],HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:sharpness,lvl:2}]}}],ArmorItems:[{Count:3,id:brick,tag:{HideFlags:64,display:{color:0,Name:'{"text":"§6Enchanted Brick"}',Lore:['{"text":"§7➵ §eTradeable"}]}']},Enchantments:[{id:12,lvl:1}]}},{Count:1,id:golden_leggings},{Count:1,id:golden_chestplate},{Count:1,id:golden_helmet}]}],DeathLootTable:""}
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1.. if score @e[limit=1,name="M@K"] mg16.2 matches 100 run summon husk 154 28 -435 {Tags:[mg16,mg16_blue],Attributes:[{Base:0.25d,Name:generic.movement_speed},{Base:90.0d,Name:generic.follow_range}],Health:9.5,FallFlying:1,CustomName:'{"text":"Floating Rider","color":"gold","bold":true}',CustomNameVisible:1b,Passengers:[{id:creeper,Fuse:2s,Health:5,Tags:[mg16],DeathLootTable:"",CustomName:'{"text":"TNT"}'}],ArmorItems:[{Count:1,id:n},{Count:1,id:n},{Count:1,id:elytra},{Count:1,id:tnt}],ArmorDropChances:[0f,0f],HandDropChances:[0f,0f],DeathLootTable:""}
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1.. if score @e[limit=1,name="M@K"] mg16.2 matches 200 run summon husk 128 28 -277 {Tags:[mg16,mg16_red],Rotation:[180f],Attributes:[{Base:0.25d,Name:generic.movement_speed},{Base:90.0d,Name:generic.follow_range}],Health:9.5,FallFlying:1,CustomName:'{"text":"Floating Rider","color":"gold","bold":true}',CustomNameVisible:1b,Passengers:[{id:creeper,Fuse:2s,Health:5,Tags:[mg16],DeathLootTable:"",CustomName:'{"text":"TNT"}'}],ArmorItems:[{Count:1,id:n},{Count:1,id:n},{Count:1,id:elytra},{Count:1,id:tnt}],ArmorDropChances:[0f,0f],HandDropChances:[0f,0f],DeathLootTable:""}
execute if score @e[limit=1,name="M@K"] mg16.3 matches 0 if score @e[limit=1,name="M@K"] mg16.2 matches 230..300 run summon area_effect_cloud 142 2 -357 {Tags:[mg16,rtnt],Duration:10}
execute as @e[tag=mg16,tag=rtnt] at @s run spreadplayers 142 -357 0 80 false @s
execute as @e[tag=mg16,tag=rtnt] at @s if block ~ ~-1 ~ barrier run particle cloud ~ ~-10 ~ 1 0 1 0 500 force @a[scores={mg16=1..}]
execute as @e[tag=mg16,tag=rtnt] at @s if block ~ ~-1 ~ barrier run summon minecart ~ ~-9 ~ {Tags:[mg16],CustomDisplayTile:1,DisplayState:{Name:"fire"}}
#execute as @e[tag=mg16,tag=rtnt] at @s unless entity @s[x=113,y=3,z=-435,dx=58,dy=45,dz=158] run spreadplayers 142 -357 0 80 false @s

#monsters
effect give @e[type=creeper,tag=mg16,name=TNT] invisibility 1 100 true
effect give @e[name="Floating Rider",tag=mg16] speed 1 3 true
execute as @e[type=creeper,tag=mg16,name=TNT] at @s run particle smoke ~ ~0.1 ~ 0 0 0 0 1 force @a[scores={mg16=1..}]
execute as @a[scores={mg16=1..,mg16.4=1..},tag=GWplayers] at @s run playsound entity.arrow.hit_player master @a[scores={mg16.4=1..}] ~ ~ ~ 100000 2
execute as @e[type=husk,tag=mg16,nbt={HurtTime:10s}] at @s run particle block redstone_block ~ ~1 ~ 0 0.2 0 0 50 force @a[scores={mg16=1..}]
execute if entity @r[scores={mg16=1..,mg16.4=1..},tag=GWplayers] run data merge entity @e[sort=random,limit=1,type=creeper,name=TNT,tag=mg16] {ignited:1b}

scoreboard players reset @a mg16.4
scoreboard players reset @a mg16.5
#doors
execute as @e[type=husk,tag=mg16,nbt={CanBreakDoors:1b}] at @s if block ^ ^1 ^1 oak_door run scoreboard players add @s mg16.6 1
execute as @e[type=husk,tag=mg16,nbt={CanBreakDoors:1b}] at @s unless block ^ ^1 ^1 oak_door run scoreboard players reset @s mg16.6
execute as @e[type=husk,tag=mg16,scores={mg16.6=10..11}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=20..21}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=1..}] at @s if entity @e[type=husk,tag=mg16,scores={mg16.6=20..21}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg16=1..}]
execute as @e[type=husk,tag=mg16,scores={mg16.6=30..31}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=40..41}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=1..}] at @s if entity @e[type=husk,tag=mg16,scores={mg16.6=40..41}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg16=1..}]
execute as @e[type=husk,tag=mg16,scores={mg16.6=50..51}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=60..61}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=1..}] at @s if entity @e[type=husk,tag=mg16,scores={mg16.6=60..61}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg16=1..}]
execute as @e[type=husk,tag=mg16,scores={mg16.6=70..71}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=80..81}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=1..}] at @s if entity @e[type=husk,tag=mg16,scores={mg16.6=80..81}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg16=1..}]
execute as @e[type=husk,tag=mg16,scores={mg16.6=90..91}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=100..101}] at @s run playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1
execute as @e[type=husk,tag=mg16,scores={mg16.6=100..}] at @s run particle block oak_door ^ ^1.5 ^1 0 0.5 0 1 50 force @a[scores={mg16=1..}]
execute as @e[type=husk,tag=mg16,scores={mg16.6=100..101}] at @s run fill ~ ~ ~ ^ ^1 ^1 air replace oak_door

#siege
execute positioned 142 4 -415 unless entity @e[type=husk,tag=mg16,distance=..10] run scoreboard players reset @e[limit=1,name="M@K",scores={mg16.2_3=116..}] mg16.2_3
execute positioned 142 4 -297 unless entity @e[type=husk,tag=mg16,distance=..10] run scoreboard players reset @e[limit=1,name="M@K",scores={mg16.2_4=116..}] mg16.2_4
execute positioned 142 4 -415 if entity @e[type=husk,tag=mg16,distance=..10] run scoreboard players add @e[limit=1,name="M@K"] mg16.2_3 1
execute positioned 142 4 -297 if entity @e[type=husk,tag=mg16,distance=..10] run scoreboard players add @e[limit=1,name="M@K"] mg16.2_4 1
execute if score @e[limit=1,name="M@K"] mg16.2_3 matches 1 run title @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers] actionbar ["",{"text":"Husks","color":"gold","bold":true},{"text":" are attempting to attack your Base!","color":"yellow","bold":true}]
execute if score @e[limit=1,name="M@K"] mg16.2_3 matches 1 run playsound entity.elder_guardian.curse master @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers] ~ ~ ~ 10000 0
execute if score @e[limit=1,name="M@K"] mg16.2_3 matches 116.. run execute as @e[type=end_crystal,tag=mg16_blue,sort=random,limit=1] at @s run tag @s add exp
execute if score @e[limit=1,name="M@K"] mg16.2_3 matches 116.. run title @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers] actionbar ["",{"text":"Husks","color":"gold","bold":true},{"text":" have destroyed a ","color":"yellow","bold":true},{"text":"Castle crystal ","color":"light_purple","bold":true},{"text":"in your Base!","color":"yellow","bold":true}]
execute positioned 142 4 -415 if score @e[limit=1,name="M@K"] mg16.2_3 matches 116.. run tp @e[type=husk,tag=mg16,distance=..27] ~ -100 ~
execute positioned 142 4 -415 if score @e[limit=1,name="M@K"] mg16.2_3 matches 116.. run tp @e[type=guardian,tag=mg16,distance=..27] ~ -100 ~
execute if score @e[limit=1,name="M@K"] mg16.2_4 matches 1 run title @a[scores={mg16=1..},team=mg16-red,tag=GWplayers] actionbar ["",{"text":"Husks","color":"gold","bold":true},{"text":" are attempting to attack your Base!","color":"yellow","bold":true}]
execute if score @e[limit=1,name="M@K"] mg16.2_4 matches 1 run playsound entity.elder_guardian.curse master @a[scores={mg16=1..},team=mg16-red,tag=GWplayers] ~ ~ ~ 10000 0
execute if score @e[limit=1,name="M@K"] mg16.2_4 matches 116.. run execute as @e[type=end_crystal,tag=mg16_red,sort=random,limit=1] at @s run tag @s add exp
execute if score @e[limit=1,name="M@K"] mg16.2_4 matches 116.. run title @a[scores={mg16=1..},team=mg16-red,tag=GWplayers] actionbar ["",{"text":"Husks","color":"gold","bold":true},{"text":" have destroyed a ","color":"yellow","bold":true},{"text":"Castle crystal ","color":"light_purple","bold":true},{"text":"in your Base!","color":"yellow","bold":true}]
execute positioned 142 4 -297 if score @e[limit=1,name="M@K"] mg16.2_4 matches 116.. run tp @e[type=husk,tag=mg16,distance=..27] ~ -100 ~
execute positioned 142 4 -297 if score @e[limit=1,name="M@K"] mg16.2_4 matches 116.. run tp @e[type=guardian,tag=mg16,distance=..27] ~ -100 ~

execute unless entity @e[type=end_crystal,tag=mg16_blue] as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,tag=!GWweak] at @s run title @s title ["",{"text":" All your Crystals","color":"blue"}]
execute unless entity @e[type=end_crystal,tag=mg16_blue] as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,tag=!GWweak] at @s run title @s subtitle ["",{"text":"\u26a0 have been destroyed \u26a0","color":"blue"}]
execute unless entity @e[type=end_crystal,tag=mg16_blue] if entity @a[scores={mg16=1..},team=mg16-blue,tag=!GWweak] run tellraw @a[scores={mg16=1..},team=mg16-red] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"TeamBlue","color":"blue","underlined":true},{"text":" Base has been weakened:","color":"yellow"},{"text":"the summit","color":"gold"},{"text":" can now be reached!","color":"yellow"}]
execute unless entity @e[type=end_crystal,tag=mg16_blue] as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,tag=!GWweak] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 100000 0.8
execute unless entity @e[type=end_crystal,tag=mg16_blue] run effect give @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers] weakness 100000 0
execute unless entity @e[type=end_crystal,tag=mg16_blue] if block 142 28 -419 air run particle portal 142 28 -419 0 0 0 2.1 8 force @a[scores={mg16=1..}]
execute unless entity @e[type=end_crystal,tag=mg16_blue] as @e[type=husk,name="Floating Rider",tag=mg16_blue] at @s run data merge entity @s {Attributes:[{Base:0.3d,Name:generic.movement_speed}],CanBreakDoors:1}
execute unless entity @e[type=end_crystal,tag=mg16_blue] as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,tag=!GWweak] at @s run setblock 142 27 -419 gray_stained_glass
execute unless entity @e[type=end_crystal,tag=mg16_blue] as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,tag=!GWweak] at @s run fill 142 23 -426 142 23 -412 air replace stone_brick_wall
execute unless entity @e[type=end_crystal,tag=mg16_blue] run tag @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers] add GWweak
execute unless entity @e[type=end_crystal,tag=mg16_red] as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,tag=!GWweak] at @s run title @s title ["",{"text":" All your Crystals","color":"blue"}]
execute unless entity @e[type=end_crystal,tag=mg16_red] as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,tag=!GWweak] at @s run title @s subtitle ["",{"text":"\u26a0 have been destroyed \u26a0","color":"blue"}]
execute unless entity @e[type=end_crystal,tag=mg16_red] if entity @a[scores={mg16=1..},team=mg16-red,tag=!GWweak] run tellraw @a[scores={mg16=1..},team=mg16-blue] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"TeamRed","color":"red","underlined":true},{"text":" Base has been weakened:","color":"yellow"},{"text":"the summit","color":"gold","bold":true},{"text":" can now be reached!","color":"yellow"}]
execute unless entity @e[type=end_crystal,tag=mg16_red] as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,tag=!GWweak] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 100000 0.8
execute unless entity @e[type=end_crystal,tag=mg16_red] run effect give @a[scores={mg16=1..},team=mg16-red,tag=GWplayers] weakness 100000 0
execute unless entity @e[type=end_crystal,tag=mg16_red] if block 142 28 -293 air run particle portal 142 28 -293 0 0 0 2.1 8 force @a[scores={mg16=1..}]
execute unless entity @e[type=end_crystal,tag=mg16_red] as @e[type=husk,name="Floating Rider",tag=mg16_red] at @s run data merge entity @s {Attributes:[{Base:0.3d,Name:generic.movement_speed}],CanBreakDoors:1}
execute unless entity @e[type=end_crystal,tag=mg16_red] as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,tag=!GWweak] at @s run setblock 142 27 -293 gray_stained_glass
execute unless entity @e[type=end_crystal,tag=mg16_red] as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,tag=!GWweak] at @s run fill 142 23 -300 142 23 -286 air replace stone_brick_wall
execute unless entity @e[type=end_crystal,tag=mg16_red] run tag @a[scores={mg16=1..},team=mg16-red,tag=GWplayers] add GWweak

#regenerator
scoreboard players add @e[limit=1,name="M@K",scores={mg16.2_1=0..}] mg16.2_1 1
scoreboard players add @e[limit=1,name="M@K",scores={mg16.2_2=0..}] mg16.2_2 1
scoreboard players reset @e[limit=1,name="M@K",scores={mg16.2_1=80..}] mg16.2_1
scoreboard players reset @e[limit=1,name="M@K",scores={mg16.2_2=80..}] mg16.2_2
execute if entity @e[type=end_crystal,tag=mg16_blue] unless score @e[limit=1,name="M@K"] mg16.2_1 matches 0.. run particle witch 142 3.7 -415 0 0 0 0.1 38 force @a[team=mg16-blue,scores={mg16=1..}]
execute if entity @e[type=end_crystal,tag=mg16_red] unless score @e[limit=1,name="M@K"] mg16.2_2 matches 0.. run particle witch 142 3.7 -297 0 0 0 0.1 38 force @a[team=mg16-red,scores={mg16=1..}]
execute if entity @e[type=end_crystal,tag=mg16_blue] unless score @e[limit=1,name="M@K"] mg16.2_1 matches 0.. run fill 141 3 -415 143 3 -415 redstone_lamp[lit=true] replace redstone_lamp
execute if entity @e[type=end_crystal,tag=mg16_red] unless score @e[limit=1,name="M@K"] mg16.2_2 matches 0.. run fill 143 3 -297 141 3 -297 redstone_lamp[lit=true] replace redstone_lamp
execute as @a[scores={mg16=1..},team=mg16-blue,tag=GWplayers,x=142,y=4,z=-415,distance=..1,dy=1] at @s unless score @e[limit=1,name="M@K"] mg16.2_1 matches 0.. run scoreboard players set @e[limit=1,name="M@K"] mg16.2_1 0
execute as @a[scores={mg16=1..},team=mg16-red,tag=GWplayers,x=142,y=4,z=-297,distance=..1,dy=1] at @s unless score @e[limit=1,name="M@K"] mg16.2_2 matches 0.. run scoreboard players set @e[limit=1,name="M@K"] mg16.2_2 0
execute if entity @e[type=end_crystal,tag=mg16_blue] if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 as @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-415,distance=..1,dy=1] at @s run effect give @s regeneration 2 5 true
execute if entity @e[type=end_crystal,tag=mg16_red] if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 as @a[scores={mg16=1..},tag=GWplayers,x=142,y=4,z=-297,distance=..1,dy=1] at @s run effect give @s regeneration 2 5 true
execute if entity @e[type=end_crystal,tag=mg16_blue] if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 run particle instant_effect 142 4 -415 1 1 1 0 9000 normal @a[scores={mg16=1..},team=mg16-blue]
execute if entity @e[type=end_crystal,tag=mg16_red] if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 run particle flame 142 4 -297 1 1 1 0 9000 normal @a[scores={mg16=1..},team=mg16-red]
execute if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 run fill 141 3 -415 143 3 -415 redstone_lamp replace redstone_lamp[lit=true]
execute if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 run fill 143 3 -297 141 3 -297 redstone_lamp replace redstone_lamp[lit=true]
execute if score @e[limit=1,name="M@K"] mg16.2_1 matches 79 run particle totem_of_undying 142 4 -415 1 1 1 0.1 27 force @a[scores={mg16=1..}]
execute if score @e[limit=1,name="M@K"] mg16.2_2 matches 79 run particle totem_of_undying 142 4 -297 1 1 1 0.1 27 force @a[scores={mg16=1..}]
execute if score @e[limit=1,name="M@K"] mg16.2_1 matches 79 run playsound entity.firework_rocket.launch master @a[scores={mg16=1..}] 142 4 -415 1 2
execute if score @e[limit=1,name="M@K"] mg16.2_2 matches 79 run playsound entity.firework_rocket.launch master @a[scores={mg16=1..}] 142 4 -297 1 2
execute unless entity @e[type=end_crystal,tag=mg16_blue] if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 run particle smoke 142 4 -415 1 1 1 0 9000 normal @a[scores={mg16=1..},team=mg16-blue]
execute unless entity @e[type=end_crystal,tag=mg16_blue] if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 run playsound entity.elder_guardian.curse master @a[scores={mg16=1..},team=mg16-blue] ~ ~ ~ 10000 0
execute unless entity @e[type=end_crystal,tag=mg16_blue] if score @e[limit=1,name="M@K"] mg16.2_1 matches 0 run title @a[scores={mg16=1..},team=mg16-blue] actionbar ["",{"text":"Your ","color":"gray"},{"text":"Spawnpoint","color":"blue","bold":true},{"text":" is ","color":"gray"},{"text":"unsafe","color":"yellow","underlined":true}]
execute unless entity @e[type=end_crystal,tag=mg16_red] if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 run particle smoke 142 4 -297 1 1 1 0 9000 normal @a[scores={mg16=1..},team=mg16-red]
execute unless entity @e[type=end_crystal,tag=mg16_red] if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 run playsound entity.elder_guardian.curse master @a[scores={mg16=1..},team=mg16-red] ~ ~ ~ 10000 0
execute unless entity @e[type=end_crystal,tag=mg16_red] if score @e[limit=1,name="M@K"] mg16.2_2 matches 0 run title @a[scores={mg16=1..},team=mg16-red] actionbar ["",{"text":"Your ","color":"gray"},{"text":"Spawnpoint","color":"red","bold":true},{"text":" is ","color":"gray"},{"text":"unsafe","color":"yellow","underlined":true}]
#crystals
execute as @e[type=end_crystal,tag=mg16,tag=exp] at @s run particle cloud ~ ~0.9 ~ 0.5 0.3 0.5 0.2 950 normal @a[scores={mg16=1..}]
execute as @e[type=end_crystal,tag=mg16,tag=exp] at @s run playsound entity.generic.explode master @a ~ ~ ~ 3 0.6
execute as @e[type=end_crystal,tag=mg16,tag=exp] at @s run kill @s
#tntcarts
execute as @e[type=minecart,tag=mg16] at @s unless block ~ ~-1 ~ air run particle cloud ~ ~0.9 ~ 0.5 0.3 0.5 0.2 950 normal @a[scores={mg16=1..}]
execute as @e[type=minecart,tag=mg16] at @s unless block ~ ~-1 ~ air run summon creeper ~ ~ ~ {powered:1,Fuse:0s,ignited:1}
execute as @e[type=minecart,tag=mg16] at @s unless block ~ ~-1 ~ air run kill @s
execute as @e[type=minecart,tag=mg16] at @s if block ~ ~-1 ~ water run kill @s

#Death
execute as @a[scores={mg16=1..},tag=GWdrop] at @s run function d2:mg16/drop

#Time
execute if score @e[limit=1,name="M@K"] mg16.3 matches 11136 run execute as @a[scores={mg16=1..},tag=GWplayers] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute if score @e[limit=1,name="M@K"] mg16.3 matches 11136 run tellraw @a[scores={mg16=1..}] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":" Players","color":"gold","bold":true},{"text":" have now lost their ","color":"yellow"},{"text":"Spawn protection","color":"red"},{"text":"!","color":"yellow"}]
execute if score @e[limit=1,name="M@K"] mg16.3 matches 11136 run playsound entity.arrow.hit_player master @a[scores={mg16=1..}] ~ ~ ~ 10000 0.5
execute if score @e[limit=1,name="M@K"] mg16.3 matches 9600 run tellraw @a[scores={mg16=1..}] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"8","color":"green","bold":true},{"text":" minutes remaining!","color":"yellow"}]
execute if score @e[limit=1,name="M@K"] mg16.3 matches 9600 run playsound ui.button.click master @a[scores={mg16=1..}] ~ ~ ~ 10000 2
execute if score @e[limit=1,name="M@K"] mg16.3 matches 6000 run tellraw @a[scores={mg16=1..}] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"5","color":"green","bold":true},{"text":" minutes remaining!","color":"yellow"}]
execute if score @e[limit=1,name="M@K"] mg16.3 matches 6000 run playsound ui.button.click master @a[scores={mg16=1..}] ~ ~ ~ 10000 2
execute if score @e[limit=1,name="M@K"] mg16.3 matches 2400 run tellraw @a[scores={mg16=1..}] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"2","color":"gold","bold":true},{"text":" minutes left until all Bases are weakened!","color":"yellow"}]
execute if score @e[limit=1,name="M@K"] mg16.3 matches 2400 run playsound ui.button.click master @a[scores={mg16=1..}] ~ ~ ~ 10000 2
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1200 run tellraw @a[scores={mg16=1..}] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> ","color":"aqua"},{"text":"1","color":"red","bold":true},{"text":" more minute until all Bases are weakened!","color":"yellow"}]
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1200 run playsound ui.button.click master @a[scores={mg16=1..}] ~ ~ ~ 10000
execute if score @e[limit=1,name="M@K"] mg16.3 matches 1 unless entity @a[scores={mg16=1..,mg16.1=1},tag=GWplayers] run function d2:mg16/post-init