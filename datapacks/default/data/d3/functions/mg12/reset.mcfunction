tag @e[type=armor_stand,tag=pc] remove x
tag @a remove pclaim
team remove mg12
kill @e[tag=pc]
kill @e[tag=mg12,type=horse]
kill @e[type=item,x=255,y=71,z=-353,dx=110,dy=4,dz=76]
effect clear @a[scores={mg12=0..}]
clear @a[scores={mg12=0..}]
kill @e[type=villager,tag=d]
fill -349 2 -89 -346 2 -87 air replace redstone_block
setblock 298 72 -291 air
setblock 354 71 -285 air
setblock 294 71 -348 air
setblock 298 73 -279 green_carpet
setblock 300 73 -279 purple_carpet
setblock 298 73 -281 purple_carpet
scoreboard players reset @a mg12.1_1
scoreboard players reset * mg12.2
scoreboard players reset * mg12.3_1
scoreboard players reset * mg12.3_2
scoreboard players reset * mg12.3_3
bossbar remove pctree
bossbar remove pctree2
spawnpoint @a[scores={mg12=0..}] -151 4 -93
tp @a[scores={mg12=0..}] -151 4 -93
execute as @a[scores={mg12=0..}] at @s run function mk:restore
effect give @a[scores={mg12=0..}] regeneration 1 255 true
effect give @a[scores={mg12=0..}] saturation 1 255 true
gamemode adventure @a[scores={mg12=0..}]
tag @a[scores={mg12=0..}] remove rp
tag @a remove SPmg12
scoreboard players reset @a mg12
forceload remove 366 -274 256 -353
data merge block -151 5 -89 {Text3:'{"text":""}'}
