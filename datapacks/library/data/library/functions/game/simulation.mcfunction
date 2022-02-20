execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -356 5 -8 {Time:1,BlockState:{Name:respawn_anchor}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -349 5 14 {Time:1,BlockState:{Name:respawn_anchor}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon falling_block -327 5 25 {Time:1,BlockState:{Name:respawn_anchor}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -356 5 -8 {LifeTime:9,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -349 5 14 {LifeTime:9,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 run summon firework_rocket -327 5 25 {LifeTime:9,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run particle cloud -356 4 -8 0.5 0.5 0.5 0.1 300 normal @a[tag=PG,tag=T1]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run particle cloud -349 4 14 0.5 0.5 0.5 0.1 300 normal @a[tag=PG,tag=T2]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run particle cloud -327 4 25 0.5 0.5 0.5 0.1 300 normal @a[tag=PG,tag=T3]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -356 4 -8 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -349 4 14 air
execute if score @e[limit=1,name="M@K"] pg1.4 matches 20 run setblock -327 4 25 air