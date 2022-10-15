scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg20 1
team add mg20
team join mg20 @s[tag=!T0]
team modify mg20 friendlyFire false
execute in overworld at @s[tag=PG] if data block -47 6 71 {Text3:'{"obfuscated":true,"color":"gold","clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg20"},"text":"@"}'} run tag @s add SPmg20
execute at @s[tag=!T0] run loot replace entity @s enderchest.13 loot library:game/25
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0,tag=!SPmg20] 246.5 64 -100.0 90 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0,tag=!SPmg20] 148.0 64 -2.3 180 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0,tag=!SPmg20] 150.0 64 -202.5 0 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0,tag=!SPmg20] 51.5 64 -105.0 -90 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0,tag=!SPmg20] 246 64 -100
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0,tag=!SPmg20] 148 64 -2
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0,tag=!SPmg20] 150 64 -202
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0,tag=!SPmg20] 51 64 -105
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run particle cloud 246.5 64 -100.0 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run particle cloud 148.0 64 -2.3 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run particle cloud 150.0 64 -202.5 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run particle cloud 51.5 64 -105.0 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute in nightsky_world run tp @s[tag=SPmg20] 147 83 -105
execute in nightsky_world run spawnpoint @s[tag=SPmg20] 147 83 -105
effect clear @s[tag=!T0]
tag @s[tag=!T0,tag=!PG] add 6
title @s[tag=!T0] clear
title @s[tag=!T0] reset
title @s[tag=PG] title ["",{"text":"The","color":"dark_green","bold":true},{"text":" Labyrinth","color":"green","bold":true}]
title @s[tag=PG,tag=SPmg20] title ["",{"text":"Spectating","color":"gray","bold":true}]
execute as @s[tag=PG] at @s unless entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Round ","color":"white","bold":true},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1.6"},"color":"aqua","bold":true},{"text":"-","color":"yellow","bold":true}]
execute as @s[tag=PG] at @s if entity @e[name="M@K",limit=1,tag=PGtie] run title @a[tag=PG] subtitle ["",{"text":"-","color":"yellow","bold":true},{"text":" Tie ","color":"yellow","bold":true},{"text":"Round ","color":"white","bold":true},{"text":"-","color":"yellow","bold":true}]
execute unless entity @s[tag=SPmg20] store result score @s c if entity @a[scores={mg20=1..}]

execute in nightsky_world store result score @e[name="M@K",limit=1] mg20 if entity @e[type=!area_effect_cloud,tag=mg20]
execute if score @e[name="M@K",limit=1] mg20 matches 15.. in nightsky_world run kill @e[type=!area_effect_cloud,tag=mg20]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run summon armor_stand -326 2 -13 {Tags:[PG,pre,mg20],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run scoreboard players add @s pg1.1 1
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"gold","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] unless score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.pickup master @s ~ ~ ~ 1000 0.8
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run title @s actionbar ["",{"text":"selected ","color":"green"},{"score":{"name":"@s","objective":"pg1.1"},"color":"red","bold":true},{"text":"/","color":"green"},{"score":{"name":"@e[limit=1,name=\"M@K\"]","objective":"pg1"},"color":"red","bold":true},{"text":" rounds","color":"green"}]
execute at @s[tag=T0] if score @s pg1.1 = @e[limit=1,name="M@K"] pg1 run playsound entity.item.break master @s ~ ~ ~ 1000 2