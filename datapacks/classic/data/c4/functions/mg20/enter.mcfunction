scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg20 1
team add mg20
team join mg20 @s[tag=!T0]
team modify mg20 friendlyFire false
execute at @s[tag=!T0] run loot replace entity @s enderchest.13 loot library:game/25
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0] 246.5 64 -100.0 90 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0] 148.0 64 -2.3 180 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0] 150.0 64 -202.5 0 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run tp @s[tag=!T0] 51.5 64 -105.0 -90 0
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0] 246 64 -100
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0] 148 64 -2
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0] 150 64 -202
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run spawnpoint @s[tag=!T0] 51 64 -105
execute if data entity @s {EnderItems:[{Slot:13b,Count:1b,tag:{0:1}}]} in nightsky_world run particle cloud 246.5 64 -100.0 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:2b,tag:{0:1}}]} in nightsky_world run particle cloud 148.0 64 -2.3 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:3b,tag:{0:1}}]} in nightsky_world run particle cloud 150.0 64 -202.5 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
execute if data entity @s {EnderItems:[{Slot:13b,Count:4b,tag:{0:1}}]} in nightsky_world run particle cloud 51.5 64 -105.0 1 1 1 0.1 3000 force @a[tag=P0ft,tag=!N0,scores={mg20=1..}]
effect clear @s[tag=!T0]
tag @s[tag=!T0,tag=!PG] add 6
title @s[tag=!T0] clear
title @s[tag=!T0] reset
execute store result score @s c if entity @a[scores={mg20=1..}]
execute in nightsky_world store result score @e[name="M@K",limit=1] mg20 if entity @e[type=!area_effect_cloud,tag=mg20]
execute if score @e[name="M@K",limit=1] mg20 matches 15.. in nightsky_world run kill @e[type=!area_effect_cloud,tag=mg20]
title @s[tag=T0] actionbar ["",{"text":"Persistent games cannot be selected","color":"yellow","bold":true}]