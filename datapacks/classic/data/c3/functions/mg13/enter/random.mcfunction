forceload add 326 60 330 64
forceload add 297 59 293 55
forceload add 277 76 273 72
forceload add 246 46 242 40
summon armor_stand 244 152 43 {CustomName:'{"text":"mg13"}',Tags:["1"],Marker:1,Small:1,Invisible:1}
summon armor_stand 275 152 74 {CustomName:'{"text":"mg13"}',Tags:["2"],Marker:1,Small:1,Invisible:1}
summon armor_stand 295 152 57 {CustomName:'{"text":"mg13"}',Tags:["3"],Marker:1,Small:1,Invisible:1}
summon armor_stand 328 152 62 {CustomName:'{"text":"mg13"}',Tags:["4"],Marker:1,Small:1,Invisible:1}
tag @e[sort=random,limit=1,name=mg13,nbt={Small:1b}] add rand0m
tp @s @e[limit=1,tag=rand0m,name=mg13]
execute if entity @e[name=mg13,tag=rand0m,tag=1] run tag @s add Drop1
execute if entity @e[name=mg13,tag=rand0m,tag=1] run spawnpoint @s 244 152 43
execute if entity @e[name=mg13,tag=rand0m,tag=2] run tag @s add Drop2
execute if entity @e[name=mg13,tag=rand0m,tag=2] run spawnpoint @s 275 152 74
execute if entity @e[name=mg13,tag=rand0m,tag=3] run tag @s add Drop3
execute if entity @e[name=mg13,tag=rand0m,tag=3] run spawnpoint @s 295 152 57
execute if entity @e[name=mg13,tag=rand0m,tag=4] run tag @s add Drop4
execute if entity @e[name=mg13,tag=rand0m,tag=4] run spawnpoint @s 328 152 62
kill @e[name=mg13,nbt={Small:1b}]
forceload remove 326 60 330 64
forceload remove 297 59 293 55
forceload remove 277 76 273 72
forceload remove 246 46 242 40