scoreboard players set @a[tag=mg1] mg1 1
tag @a remove mg1
kill @e[type=villager,tag=TeamVillager]
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Dripbow"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shrek"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shank"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Sid"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Maggie"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Shaggy"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Timothy"}',Offers:{Recipes:[]}}
summon villager 18 2 -38 {Tags:[TeamVillager,Survived],PersistenceRequired:1b,CustomName:'{"text":"Uncle_Dip"}',Offers:{Recipes:[]}}
scoreboard players set VillagersLeft: -DTV- 0
scoreboard objectives setdisplay sidebar -DTV-
summon iron_golem -43 111 -1396 {Health:10.0,Tags:[TeamAlly],DeathLootTable:"",CustomName:'{"text":"Barry"}'}
setblock -23 111 -1376 redstone_block replace
playsound music_disc.stal master @a[scores={mg1=1..}]
fill -30 111 -1374 -25 111 -1374 repeater[facing=west,delay=4] replace
scoreboard players set VillagersLeft: -DTV- 8
scoreboard players set @a AchieveDTV 0
effect clear @a[scores={mg1=1..}]
spawnpoint @a[scores={mg1=1..}] -25 111 -1418
data merge block -68 111 -1410 {Command:"setblock ~-3 ~ ~ redstone_block"}
bossbar add dtv_progress "Wave Progress"
bossbar set dtv_progress players @a[scores={mg1=1..}]
bossbar set dtv_progress color green
bossbar set dtv_progress style notched_10
bossbar set dtv_progress max 5
setblock -76 111 -1416 air replace
scoreboard players set @a[scores={mg1=1..}] DTVgold 0
fill -71 111 -1410 -71 111 -1416 minecraft:air replace redstone_block
setblock 21 2 -48 minecraft:oak_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock 21 3 -48 minecraft:oak_door[facing=south,half=upper,hinge=left,open=false,powered=false]
setblock 19 2 -53 minecraft:oak_door[facing=north,half=lower,hinge=right,open=false,powered=false]
setblock 19 3 -53 minecraft:oak_door[facing=north,half=upper,hinge=right,open=false,powered=false]
setblock 19 2 -56 minecraft:oak_door[facing=south,half=lower,hinge=right,open=false,powered=false]
setblock 19 3 -56 minecraft:oak_door[facing=south,half=upper,hinge=right,open=false,powered=false]
setblock 12 2 -34 minecraft:oak_door[facing=south,half=lower,hinge=left,open=false,powered=false]
setblock 12 3 -34 minecraft:oak_door[facing=south,half=upper,hinge=left,open=false,powered=false]
setblock 12 2 -31 minecraft:oak_door[facing=north,half=lower,hinge=left,open=false,powered=false]
setblock 12 3 -31 minecraft:oak_door[facing=north,half=upper,hinge=left,open=false,powered=false]
setblock 21 2 -29 minecraft:oak_door[facing=east,half=lower,hinge=left,open=false,powered=false]
setblock 21 3 -29 minecraft:oak_door[facing=east,half=upper,hinge=left,open=false,powered=false]
setblock 21 2 -28 minecraft:oak_door[facing=east,half=lower,hinge=right,open=false,powered=false]
setblock 21 3 -28 minecraft:oak_door[facing=east,half=upper,hinge=right,open=false,powered=false]