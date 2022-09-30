execute if score @e[limit=1,name="M@K"] pg1.4 matches 5..25 run particle portal -356 5 -8 0 0.3 0 0.4 20 force @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5..25 run particle portal -349 5 14 0 0.3 0 0.4 20 force @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5..25 run particle portal -327 5 25 0 0.3 0 0.4 20 force @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -356 5 -7 {Time:1,BlockState:{Name:grass_block},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -349 5 15 {Time:1,BlockState:{Name:grass_block},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -327 5 26 {Time:1,BlockState:{Name:grass_block},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 65 run summon falling_block -356 5 -8 {Time:1,BlockState:{Name:sand},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 65 run summon falling_block -349 5 14 {Time:1,BlockState:{Name:sand},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 65 run summon falling_block -327 5 25 {Time:1,BlockState:{Name:sand},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon falling_block -356 5 -9 {Time:1,BlockState:{Name:purpur_bricks},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon falling_block -349 5 13 {Time:1,BlockState:{Name:purpur_bricks},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 40 run summon falling_block -327 4 24 {Time:1,BlockState:{Name:purpur_bricks},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run summon falling_block -356 6 -9 {Time:1,BlockState:{Name:end_rod},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run summon falling_block -349 6 13 {Time:1,BlockState:{Name:end_rod},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 run summon falling_block -327 6 24 {Time:1,BlockState:{Name:end_rod},DropItem:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -356 4 -9 -356 6 -7 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -349 4 13 -349 6 15 air destroy
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run fill -327 4 24 -327 6 26 air destroy