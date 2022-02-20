execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle ash -355 6 -8 1 1 1 0.1 10 normal @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle ash -349 6 14 1 1 1 0.1 10 normal @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches ..90 run particle ash -327 6 27 1 1 1 0.1 10 normal @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon small_fireball -356 5.5 -6 {Tags:[sfl0],Motion:[0.0d,0.02d,-0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon small_fireball -349 5.5 16 {Tags:[sfl0],Motion:[0.0d,0.02d,-0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon small_fireball -327 5.5 27 {Tags:[sfl0],Motion:[0.0d,0.02d,-0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon small_fireball -356 5.7 -10 {Tags:[sfl0],Motion:[0.0d,-0.04d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon small_fireball -349 5.7 12 {Tags:[sfl0],Motion:[0.0d,-0.04d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run summon small_fireball -327 5.7 23 {Tags:[sfl0],Motion:[0.0d,-0.04d,0.5d]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -356 5 -10 -356 5 -6 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -349 5 16 -349 5 12 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -327 5 27 -327 5 23 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run kill @e[tag=sfl0]