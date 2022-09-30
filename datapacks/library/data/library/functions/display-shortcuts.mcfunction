#Door
execute if block -193 9 -8 stone_brick_stairs run summon falling_block -193 9 -8 {DropItem:0,Time:1,BlockState:{Name:"stone_brick_stairs",Properties:{facing:west}}}
setblock -193 9 -8 air
fill -194 7 -7 -194 6 -9 air destroy

#Slots
setblock -185 3 -4 redstone_lamp destroy
summon armor_stand -185 2 -4 {Tags:[L0,g1],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute as @p at @s[tag=L1] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute as @p at @s[tag=L2] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute as @p at @s[tag=L3] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute as @p at @s[tag=L4] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute as @p at @s[tag=L5] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute as @p at @s[tag=L6] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute as @p at @s[tag=L7] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"light_purple","bold":true}'}
execute as @p at @s[tag=L8] run data merge entity @e[tag=L0,tag=g1,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}

setblock -183 3 -5 redstone_lamp destroy
summon armor_stand -183 2 -5 {Tags:[L0,g2],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute unless entity @e[tag=L0,name='- COLISEUM -'] as @p at @s if entity @s[tag=L1] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute unless entity @e[tag=L0,name='- LAB -'] as @p at @s if entity @s[tag=L2] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute unless entity @e[tag=L0,name='- TRADING AREA -'] as @p at @s if entity @s[tag=L3] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute unless entity @e[tag=L0,name='- GALLERY -'] as @p at @s if entity @s[tag=L4] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute unless entity @e[tag=L0,name='- PARAMETERS -'] as @p at @s if entity @s[tag=L5] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute unless entity @e[tag=L0,name='- MG SCHEDULER -'] as @p at @s if entity @s[tag=L6] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- ARCHIVES -'] as @p at @s if entity @s[tag=L7] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"light_purple","bold":true}'}
execute unless entity @e[tag=L0,name='- MG CREATOR -'] as @p at @s if entity @s[tag=L8] run data merge entity @e[tag=L0,tag=g2,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}
setblock -182 3 -7 redstone_lamp destroy
summon armor_stand -182 2 -7 {Tags:[L0,g3],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute unless entity @e[tag=L0,name='- COLISEUM -'] as @p at @s if entity @s[tag=L1] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute unless entity @e[tag=L0,name='- LAB -'] as @p at @s if entity @s[tag=L2] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute unless entity @e[tag=L0,name='- TRADING AREA -'] as @p at @s if entity @s[tag=L3] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute unless entity @e[tag=L0,name='- GALLERY -'] as @p at @s if entity @s[tag=L4] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute unless entity @e[tag=L0,name='- PARAMETERS -'] as @p at @s if entity @s[tag=L5] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute unless entity @e[tag=L0,name='- MG SCHEDULER -'] as @p at @s if entity @s[tag=L6] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- ARCHIVES -'] as @p at @s if entity @s[tag=L7] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"light_purple","bold":true}'}
execute unless entity @e[tag=L0,name='- MG CREATOR -'] as @p at @s if entity @s[tag=L8] run data merge entity @e[tag=L0,tag=g3,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}
setblock -182 3 -9 redstone_lamp destroy
summon armor_stand -182 2 -9 {Tags:[L0,g4],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute unless entity @e[tag=L0,name='- COLISEUM -'] as @p at @s if entity @s[tag=L1] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute unless entity @e[tag=L0,name='- LAB -'] as @p at @s if entity @s[tag=L2] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute unless entity @e[tag=L0,name='- TRADING AREA -'] as @p at @s if entity @s[tag=L3] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute unless entity @e[tag=L0,name='- GALLERY -'] as @p at @s if entity @s[tag=L4] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute unless entity @e[tag=L0,name='- PARAMETERS -'] as @p at @s if entity @s[tag=L5] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute unless entity @e[tag=L0,name='- MG SCHEDULER -'] as @p at @s if entity @s[tag=L6] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- ARCHIVES -'] as @p at @s if entity @s[tag=L7] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"light_purple","bold":true}'}
execute unless entity @e[tag=L0,name='- MG CREATOR -'] as @p at @s if entity @s[tag=L8] run data merge entity @e[tag=L0,tag=g4,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}
setblock -183 3 -11 redstone_lamp destroy
summon armor_stand -183 2 -11 {Tags:[L0,g5],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute unless entity @e[tag=L0,name='- COLISEUM -'] as @p at @s if entity @s[tag=L1] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute unless entity @e[tag=L0,name='- LAB -'] as @p at @s if entity @s[tag=L2] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute unless entity @e[tag=L0,name='- TRADING AREA -'] as @p at @s if entity @s[tag=L3] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute unless entity @e[tag=L0,name='- GALLERY -'] as @p at @s if entity @s[tag=L4] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute unless entity @e[tag=L0,name='- PARAMETERS -'] as @p at @s if entity @s[tag=L5] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute unless entity @e[tag=L0,name='- MG SCHEDULER -'] as @p at @s if entity @s[tag=L6] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- ARCHIVES -'] as @p at @s if entity @s[tag=L7] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- MG CREATOR -'] as @p at @s if entity @s[tag=L8] run data merge entity @e[tag=L0,tag=g5,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}
setblock -185 3 -12 redstone_lamp destroy
summon armor_stand -185 2 -12 {Tags:[L0,g6],Invulnerable:1b,Invisible:1,Marker:1,NoGravity:1,NoBasePlate:1}
execute unless entity @e[tag=L0,name='- COLISEUM -'] as @p at @s if entity @s[tag=L1] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- COLISEUM -","color":"red","bold":true}'}
execute unless entity @e[tag=L0,name='- LAB -'] as @p at @s if entity @s[tag=L2] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- LAB -","color":"aqua","bold":true}'}
execute unless entity @e[tag=L0,name='- TRADING AREA -'] as @p at @s if entity @s[tag=L3] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- TRADING AREA -","color":"green","bold":true}'}
execute unless entity @e[tag=L0,name='- GALLERY -'] as @p at @s if entity @s[tag=L4] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- GALLERY -","color":"yellow","bold":true}'}
execute unless entity @e[tag=L0,name='- PARAMETERS -'] as @p at @s if entity @s[tag=L5] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}
execute unless entity @e[tag=L0,name='- MG SCHEDULER -'] as @p at @s if entity @s[tag=L6] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG SCHEDULER -","color":"gold","bold":true}'}
execute unless entity @e[tag=L0,name='- ARCHIVES -'] as @p at @s if entity @s[tag=L7] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- ARCHIVES -","color":"light_purple","bold":true}'}
execute unless entity @e[tag=L0,name='- MG CREATOR -'] as @p at @s if entity @s[tag=L8] run data merge entity @e[tag=L0,tag=g6,limit=1] {CustomNameVisible:1,CustomName:'{"text":"- MG CREATOR -","color":"dark_aqua","bold":true}'}