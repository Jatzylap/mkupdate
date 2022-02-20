execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -356 4 -8 tnt
execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -349 4 14 tnt
execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -327 4 25 tnt
execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -356 5 -8 sand
execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -349 5 14 sand
execute if score @e[limit=1,name="M@K"] pg1.4 matches 80 run setblock -327 5 25 sand
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -356 4 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -349 4 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run setblock -327 4 25 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 25 run setblock -356 4 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 25 run setblock -349 4 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 25 run setblock -327 4 25 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run particle explosion_emitter -356 3 -8 0 0 0 0 1 normal @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run particle explosion_emitter -349 3 14 0 0 0 0 1 normal @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run particle explosion_emitter -327 3 25 0 0 0 0 1 normal @a[tag=PG,tag=T3]