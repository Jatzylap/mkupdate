#Debug
stopsound @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie] at @s run tp @s ~ -1000 ~
execute as @e[type=zombie_villager,x=-19,y=1,z=-67,dx=51,dy=3,dz=41] at @s run tp @s ~ -1000 ~
execute as @e[type=zombie_villager,x=28,y=1,z=-81,dx=19,dy=3,dz=17] at @s run tp @s ~ -1000 ~
execute as @e[type=villager,tag=TeamVillager] at @s run tp @s ~ ~-1000 ~
setblock -307 2 -46 repeater[delay=4,facing=east,powered=false]

setblock -299 2 -52 air
setblock -299 2 -50 redstone_block
data merge block -47 6 47 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg1"}}'}

summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Dripbow"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shrek"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shank"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Sid"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Maggie"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shaggy"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Timothy"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Uncle_Dip"}',Offers:{Recipes:[]}}
scoreboard players set #VillagersLeft mg1.1 0
summon iron_golem -6 2 -50 {PlayerCreated:1b,PersistenceRequired:1b,Tags:[TeamAlly],DeathLootTable:"",CustomName:'{"text":"Barry"}'}
setblock -300 2 -58 redstone_block replace
execute as @a[scores={mg1=1..}] at @s run playsound music_disc.stal master @s ~ ~ ~ 10000
fill -307 2 -56 -302 2 -56 repeater[facing=west,delay=4]
fill -285 2 -55 -285 2 -62 repeater[facing=east]
setblock -288 2 -53 repeater[facing=east] keep
scoreboard players set #VillagersLeft mg1.1 8
scoreboard players set @a[scores={mg1=1..}] mg1.3 0
effect clear @a[scores={mg1=1..}]
spawnpoint @a[scores={mg1=1..}] 43 2 -77
data merge block -290 2 -53 {Command:"setblock ~-3 ~ ~ redstone_block"}
bossbar add dtv_progress "Wave Progress"
bossbar set dtv_progress color green
bossbar set dtv_progress style notched_10
bossbar set dtv_progress max 5
bossbar set dtv_progress players @a[scores={mg1=1..}]
setblock -298 2 -59 air replace
scoreboard players set @a[scores={mg1=1..}] mg1.2 0
fill -293 2 -53 -293 2 -59 air replace redstone_block
fill 33 2 -67 1 4 -26 air replace #doors
fill 29 3 -36 29 3 -37 carrots[age=7]
fill 27 3 -37 27 3 -33 potatoes[age=7]
fill 29 3 -37 29 3 -33 wheat[age=7]
fill 27 3 -36 27 3 -37 wheat[age=2]
setblock 29 3 -35 carrots