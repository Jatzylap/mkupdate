title @a[scores={mg1=1..,mg1.3=0}] title ["",{"text":"Game Over","color":"red","bold":true}]
stopsound @a[scores={mg1=1..}] master music_disc.stal
playsound entity.villager.no master @a[scores={mg1=1..,mg1.3=0}] ~ ~ ~ 10000 1
kill @e[tag=TeamZombie]
title @a[scores={mg1=1..,mg1.3=1..}] title ["",{"text":"The Villagers Survived","color":"green","bold":true}]
playsound entity.villager.celebrate master @a[scores={mg1=1..,mg1.3=1..}] ~ ~ ~ 10000 1
data merge block -290 2 -53 {Command:"setblock ~-3 ~ ~ redstone_block replace"}
fill -293 2 -53 -293 2 -59 air
execute as @e[type=iron_golem,tag=TeamAlly] at @s run tp ~ -100 ~
fill -302 2 -54 -316 2 -54 air replace
data merge block -319 4 -46 {Command:"/setblock -308 2 -56 air replace"}
scoreboard players reset @a mg1.3
spawnpoint @a[scores={mg1=1..}] -51 5 47
kill @e[type=item,nbt={Item:{tag:{DTV:1b}}}]
data merge block -317 2 -44 {Command:"/summon zombie -8 2 -42 {DeathLootTable:\"\",CustomName:\"{\\\"text\\\":\\\"Zombie\\\",\\\"color\\\":\\\"green\\\"}\",CustomNameVisible:1b,Tags:[TeamZombie],CanBreakDoors:1,Health:10,PersistenceRequired:1b,HandDropChances:[1.0f,0.0f],HandItems:[{Count:1,id:gold_ingot,tag:{DTV:1b}}],ArmorItems:[{Count:1,id:leather_boots,tag:{DTV:1b}},{Count:1,id:leather_leggings,tag:{DTV:1b}},{Count:1,id:leather_chestplate,tag:{DTV:1b}},{Count:1,id:leather_helmet,tag:{DTV:1b}}]}"}
bossbar remove dtv_progress
kill @e[type=experience_orb,x=-19,y=1,z=-67,dx=51,dy=3,dz=41]
kill @e[type=experience_orb,x=28,y=1,z=-81,dx=19,dy=3,dz=17]
setblock -299 2 -50 air
setblock -307 2 -46 air