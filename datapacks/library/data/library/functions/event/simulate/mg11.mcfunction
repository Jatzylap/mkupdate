execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -356 5 -7 -356 5 -9 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -349 5 15 -349 5 13 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -327 5 26 -327 5 24 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -356 4 -7 -356 4 -9 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -349 4 15 -349 4 13 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run fill -327 4 26 -327 4 24 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -356 4 -8 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon armor_stand -356 4 -8 {ArmorItems:[{},{},{},{Count:1,id:emerald}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -349 4 14 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon armor_stand -349 4 14 {ArmorItems:[{},{},{},{Count:1,id:emerald}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -327 4 25 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon armor_stand -327 4 25 {ArmorItems:[{},{},{},{Count:1,id:emerald}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run setblock -356 4 -9 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon armor_stand -356 4 -9 {ArmorItems:[{},{},{},{Count:1,id:diamond}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run setblock -349 4 13 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon armor_stand -349 4 13 {ArmorItems:[{},{},{},{Count:1,id:diamond}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run setblock -327 4 24 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon armor_stand -327 4 24 {ArmorItems:[{},{},{},{Count:1,id:diamond}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 15 run setblock -356 4 -7 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 10 run summon armor_stand -356 4 -7 {ArmorItems:[{},{},{},{Count:1,id:gold_nugget}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 15 run setblock -349 4 15 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 10 run summon armor_stand -349 4 15 {ArmorItems:[{},{},{},{Count:1,id:gold_nugget}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 15 run setblock -327 4 26 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 10 run summon armor_stand -327 4 26 {ArmorItems:[{},{},{},{Count:1,id:gold_nugget}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1,Rotation:[-90f]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 9 run fill -356 5 -7 -356 5 -9 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 9 run fill -349 5 15 -349 5 13 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 9 run fill -327 5 26 -327 5 24 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run kill @e[tag=sml0]