execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle note -356 4 -8 0 0 0.5 1 1 normal @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle note -349 4 14 0 0 0.5 1 1 normal @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle note -327 4 25 0 0 0.5 1 1 normal @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -356 4 -9 magenta_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -349 4 13 magenta_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -327 4 24 magenta_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -356 4 -8 lime_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -349 4 14 lime_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -327 4 25 lime_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -356 4 -7 yellow_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -349 4 15 yellow_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 85 run setblock -327 4 26 yellow_concrete
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon armor_stand -356 4 -8 {ArmorItems:[{},{},{},{Count:1,id:lime_concrete}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon armor_stand -349 4 14 {ArmorItems:[{},{},{},{Count:1,id:lime_concrete}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon armor_stand -327 4 25 {ArmorItems:[{},{},{},{Count:1,id:lime_concrete}],Tags:[sml0],Motion:[0.0d,0.5d],Small:1,Invisible:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run fill -356 4 -9 -356 4 -7 air replace #cm_lime
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run fill -349 4 13 -349 4 15 air replace #cm_lime
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run fill -327 4 24 -327 4 26 air replace #cm_lime
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run setblock -356 4 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run setblock -349 4 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run setblock -327 4 25 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run kill @e[tag=sml0]