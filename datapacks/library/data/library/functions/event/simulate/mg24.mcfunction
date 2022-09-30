execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -356 5 -8 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -349 5 14 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -327 5 25 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -356 4 -8 target
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -349 4 14 target
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -327 4 25 target
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -356 5.5 -6 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -349 5.5 16 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -327 5.5 27 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon firework_rocket -356 5.5 -10 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon firework_rocket -349 5.5 12 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon firework_rocket -327 5.5 23 {LifeTime:8,Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -356 4 -8 -356 5 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -349 4 14 -349 5 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -327 4 25 -327 5 25 air