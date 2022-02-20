execute if score @e[limit=1,name="M@K"] pg1.4 matches 60..90 run particle entity_effect -356 4 -9 0.2 0 0.2 1 3 force @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 60..90 run particle entity_effect -349 4 13 0.2 0 0.2 1 3 force @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 60..90 run particle entity_effect -327 4 24 0.2 0 0.2 1 3 force @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40..60 run particle entity_effect -356 5 -7 0.2 0 0.2 1 3 force @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40..60 run particle entity_effect -349 5 15 0.2 0 0.2 1 3 force @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40..60 run particle entity_effect -327 5 26 0.2 0 0.2 1 3 force @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40..60 run particle entity_effect -356 6 -9 0.2 0 0.2 1 3 force @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20..40 run particle entity_effect -349 6 13 0.2 0 0.2 1 3 force @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20..40 run particle entity_effect -327 6 24 0.2 0 0.2 1 3 force @a[tag=PG,tag=T3]

execute if score @e[limit=1,name="M@K"] pg1.4 matches 60 run setblock -356 4 -9 green_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 60 run setblock -349 4 13 orange_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 60 run setblock -327 4 24 cyan_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run setblock -356 5 -7 yellow_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run setblock -349 5 15 light_blue_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run setblock -327 5 26 lime_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -356 6 -9 cyan_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -349 6 13 green_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -327 6 24 orange_wool
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -356 4 -9 -356 6 -7 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -349 4 13 -349 6 15 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -327 4 24 -327 6 26 air destroy