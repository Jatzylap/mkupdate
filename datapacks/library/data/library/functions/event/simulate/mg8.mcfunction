execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -356 5 -8 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -349 5 14 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -327 5 25 barrier
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -356 4 -8 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -349 4 14 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run setblock -327 4 25 chest[facing=east]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon arrow -356 5.5 -6 {Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon arrow -349 5.5 16 {Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon arrow -327 5.5 27 {Tags:[sml0],Motion:[0.0d,0.05d,-1.0d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon arrow -356 5.5 -10 {Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon arrow -349 5.5 12 {Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon arrow -327 5.5 23 {Tags:[sml0],Motion:[0.0d,0.05d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -356 4 -8 -356 5 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -349 4 14 -349 5 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -327 4 25 -327 5 25 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run kill @e[tag=sml0]