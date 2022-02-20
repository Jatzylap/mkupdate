#Spectators
gamemode spectator @a[tag=SPmg2]
execute as @a[tag=SPmg2] at @s unless entity @s[x=411,y=133,z=-3,dx=101,dy=37,dz=142] run tp @s 439 160 68
tag @a[scores={mg2=1..},tag=SPmg2] remove STGplayers
tag @a[scores={mg2=1..},tag=SPmg2] remove STGweak

execute as @r[scores={mg2=1..},tag=!st0red] at @s run function mk:store
tag @e[type=!player,type=!item_frame,x=411,y=133,z=-3,dx=101,dy=37,dz=142] add mg2
execute as @a[scores={mg2=1..,lobby=1..},tag=st0red] at @s run tag @s remove STGplayers
execute as @a[scores={mg2=1..,lobby=1..},tag=st0red] at @s run tag @s remove SPmg2
execute as @a[scores={mg2=1..,lobby=1..},tag=st0red] at @s run clear @s
execute as @a[scores={mg2=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg2=1..,2=1..},tag=st0red] at @s run scoreboard players reset @s mg2

#Main
kill @e[type=falling_block,tag=mg2]
execute as @e[tag=mg2,tag=STG_Ender] at @s if entity @s[x=439,y=160,z=68,distance=95..] run summon ender_dragon 439 166 68 {DragonPhase:20,Invulnerable:1b,Tags:[STG_Ender]}
execute as @e[tag=mg2,tag=STG_Ender] at @s if entity @s[x=439,y=160,z=68,distance=95..] run kill @s
execute as @e[tag=mg2,tag=r0t] at @s run tp @s ~ ~ ~ ~5 ~
scoreboard players add @e[name="M@K",limit=1] mg2.3 1
execute if score @e[name="M@K",limit=1] mg2.3 matches 8542 run function c2:mg2/end
execute if score @e[name="M@K",limit=1] mg2.3 matches 8542 run playsound entity.wither.spawn master @a[team=!,scores={mg2=1..}] ~ ~ ~ 100000 0.5
execute store result bossbar sg_countdown value if entity @a[scores={mg2=1..},tag=STGplayers]
bossbar set sg_countdown players @a[scores={mg2=1..}]
execute unless entity @a[scores={mg2=1..},tag=STGplayers] run bossbar set sg_countdown name ["",{"text":"-","bold":true}]


#3 players
execute if entity @e[limit=1,name="M@K",tag=mg2_3,tag=mg2_X,tag=mg2_XX,tag=!mg2X_] run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ❌ ","color":"red"}]
execute if entity @e[limit=1,name="M@K",tag=mg2_3,tag=mg2_X,tag=!mg2_XX,tag=mg2X_] run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ❌ ","color":"red"}]
execute if entity @e[limit=1,name="M@K",tag=mg2_3,tag=!mg2_X,tag=mg2_XX,tag=mg2X_] run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ✔ ","color":"green"}]
execute if entity @e[limit=1,name="M@K",tag=mg2_3,tag=mg2_X,tag=mg2_XX,tag=mg2X_] run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ❌ ","color":"red"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ❌ ","color":"red"}]


scoreboard players set @a[scores={mg2=1..,b=1..}] mg2.5 100
scoreboard players remove @a[scores={mg2.5=0..}] mg2.5 1
execute as @a[scores={mg2.5=..0}] at @s run tag @s remove STGu
execute as @a[scores={mg2.5=..0}] at @s run scoreboard players reset @s mg2.5
execute unless entity @a[team=!,scores={mg2=1..},tag=STGplayers] run bossbar set sg_countdown name ["",{"text":"Nobody Won","bold":true,"color":"gold"}]
execute unless entity @a[team=!,scores={mg2=1..},tag=STGplayers] run setblock -356 2 -71 air
scoreboard players add @e[tag=r0t,tag=mg2,scores={mg2.2=0..}] mg2.2 1
scoreboard players set @e[tag=r0t,tag=mg2,tag=i,scores={mg2.2=90..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=g,scores={mg2.2=70..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=d,scores={mg2.2=190..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=e,scores={mg2.2=300..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=i,tag=lvl2,scores={mg2.2=60..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=g,tag=lvl2,scores={mg2.2=50..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=d,tag=lvl2,scores={mg2.2=150..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=e,tag=lvl2,scores={mg2.2=190..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=i,tag=lvl3,scores={mg2.2=10..}] mg2.2 0
scoreboard players set @e[tag=r0t,tag=mg2,tag=g,tag=lvl3,scores={mg2.2=30..}] mg2.2 0

#Dead
execute as @a[team=!,scores={mg2=1..},tag=STGplayers] at @s if entity @s[y=125,distance=..4,dy=-9] run kill @s
execute as @a[scores={mg2=1..,mg2.4=1..},tag=STGplayers] at @s run clear @a[team=!,scores={mg2=1..},tag=STGplayers,y=125,distance=..2,dy=-5] #stg_items{Enchantments:[{id:vanishing_curse,lvl:1}]}
execute as @a[scores={mg2=1..,mg2.4=1..},tag=STGweak] at @s run tag @s add SPmg2
execute as @a[scores={mg2=1..},tag=STGweak,tag=SPmg2] at @s run title @s title ["",{"text":"You are now spectating...","color":"gray"}]
execute if score @e[limit=1,name="M@K"] mg2 matches 0 if entity @a[scores={mg2=1..},tag=STGweak,tag=SPmg2] run tellraw @a[scores={mg2=1..}] ["",{"text":"Bed","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"selector":"@a[tag=STGplayers,tag=STGweak,tag=SPmg2]","bold":true},{"text":" has been eliminated from the game!","color":"aqua"}]
execute if score @e[limit=1,name="M@K"] mg2 matches 1 if entity @a[scores={mg2=1..},tag=STGweak,tag=SPmg2] run tellraw @a[scores={mg2=1..}] ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"selector":"@a[tag=STGplayers,tag=STGweak,tag=SPmg2]","bold":true},{"text":" has been eliminated from the game!","color":"aqua"}]
scoreboard players reset @a mg2.4

#GAMEPLAY
execute if score @e[name="M@K",limit=1] mg2 matches 0 if block 442 159 1 air run setblock -351 2 -77 redstone_block keep
execute if score @e[name="M@K",limit=1] mg2 matches 0 if block 508 159 69 air run setblock -352 2 -77 redstone_block keep
execute if score @e[name="M@K",limit=1] mg2 matches 0 if block 440 159 135 air run setblock -353 2 -77 redstone_block keep
execute if score @e[name="M@K",limit=1] mg2 matches 1 if block 442 163 1 air run setblock -351 2 -77 redstone_block keep
execute if score @e[name="M@K",limit=1] mg2 matches 1 if block 508 163 69 air run setblock -352 2 -77 redstone_block keep
execute if score @e[name="M@K",limit=1] mg2 matches 1 if block 440 163 135 air run setblock -353 2 -77 redstone_block keep
#Award
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-blue] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-blue] run bossbar set sg_countdown color blue
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-blue] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-blue] run tag @s add mg2_win
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-yellow] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-yellow] run bossbar set sg_countdown color yellow
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-yellow] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-yellow] run tag @s add mg2_win
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-red] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-red] run bossbar set sg_countdown color red
execute as @a[scores={mg2=1..},tag=STGplayers,team=mg2-red] at @s unless entity @a[scores={mg2=1..},tag=STGplayers,team=!mg2-red] run tag @s add mg2_win
execute as @a[scores={mg2=1..},tag=mg2_win] at @s run setblock -345 2 -78 redstone_block keep
#Generator
execute as @e[tag=r0t,tag=i,tag=mg2,scores={mg2.2=0}] at @s run summon item ~ ~ ~ {Item:{Count:1,id:iron_ingot}}
execute as @e[tag=r0t,tag=g,tag=mg2,scores={mg2.2=0}] at @s run summon item ~ ~ ~ {Item:{Count:1,id:gold_ingot}}
execute as @e[tag=r0t,tag=d,tag=mg2,scores={mg2.2=0}] at @s run summon item ~ ~ ~ {Item:{Count:1,id:diamond}}
execute as @e[tag=r0t,tag=e,tag=mg2,scores={mg2.2=0}] at @s run summon item ~ ~ ~ {Item:{Count:1,id:emerald}}

#Generator UI
#red
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_r] at @s unless data block 434 159 118 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_r,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 434 159 118 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §c§l0"}','{"text":"§a Upgrade requires §e16 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_r,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 434 159 118 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_r,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 434 159 118 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_r,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 434 159 118 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_r] at @s unless data block 448 159 118 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_r,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 448 159 118 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§c§lBroken"}','{"text":"§a Upgrade requires Iron Generator §eLevel 2"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_r,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 448 159 118 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_r,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 448 159 118 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_r,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 448 159 118 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
#yellow
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_y] at @s unless data block 491 159 75 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_y,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 491 159 75 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §c§l0"}','{"text":"§a Upgrade requires §e16 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_y,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 491 159 75 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_y,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 491 159 75 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_y,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 491 159 75 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_y] at @s unless data block 491 159 61 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_y,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 491 159 61 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§c§lBroken"}','{"text":"§a Upgrade requires Iron Generator §eLevel 2"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_y,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 491 159 61 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_y,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 491 159 61 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_y,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 491 159 61 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
#blue
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_b] at @s unless data block 434 159 18 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_b,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 434 159 18 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §c§l0"}','{"text":"§a Upgrade requires §e16 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_b,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 434 159 18 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_b,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 434 159 18 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Iron ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=i,tag=2_b,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 434 159 18 {Items:[{Slot:13b,id:"minecraft:iron_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_b] at @s unless data block 448 159 18 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_b,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 448 159 18 {Items:[{Slot:13b,id:"minecraft:netherite_scrap",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§c§lBroken"}','{"text":"§a Upgrade requires Iron Generator §eLevel 2"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_b,tag=lvl1,tag=!lvl2,tag=!lvl3] at @s run data merge block 448 159 18 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_b,tag=lvl1,tag=lvl2,tag=!lvl3] at @s run data merge block 448 159 18 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l2"}','{"text":"§a Upgrade requires §e64 Gold ingots"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=g,tag=2_b,tag=lvl1,tag=lvl2,tag=lvl3] at @s run data merge block 448 159 18 {Items:[{Slot:13b,id:"minecraft:gold_ingot",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l3"}','{"text":"§e :)"}']}}}]}
#center
execute as @e[tag=r0t,tag=mg2,tag=d,tag=2_c] at @s unless data block 439 159 68 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=d,tag=2_c,tag=lvl1,tag=!lvl2] at @s run data merge block 439 159 68 {Items:[{Slot:13b,id:"minecraft:diamond",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e32 Diamonds"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=d,tag=2_c,tag=lvl2] at @s run data merge block 439 159 68 {Items:[{Slot:13b,id:"minecraft:diamond",Count:1,tag:{gui:1,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l2"},{"text":"§e Fully Upgraded :)"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=e,tag=2_c] at @s unless data block 440 151 68 {Items:[{Slot:13b,tag:{gui:1}}]} run function c2:mg2/upgrade
execute as @e[tag=r0t,tag=mg2,tag=e,tag=2_c,tag=lvl1,tag=!lvl2] at @s run data merge block 440 151 68 {Items:[{Slot:13b,id:"minecraft:emerald",Count:1,tag:{gui:1,HideFlags:15,display:{color:0,Name:'{"text":"§e§lClick to Upgrade"}',Lore:['{"text":"§a§l Level §e§l1"}','{"text":"§a Upgrade requires §e16 Emeralds"}']}}}]}
execute as @e[tag=r0t,tag=mg2,tag=e,tag=2_c,tag=lvl2] at @s run data merge block 440 151 68 {Items:[{Slot:13b,id:"minecraft:emerald",Count:1,tag:{gui:1,HideFlags:15,display:{color:0,Name:'{"text":"§a§lFully Upgraded!"}',Lore:['{"text":"§a§l Level §e§l2"},{"text":"§e Fully Upgraded :)"}']}}}]}