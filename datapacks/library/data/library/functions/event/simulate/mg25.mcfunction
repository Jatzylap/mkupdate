execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon shulker -356 5 -6 {Tags:[sml0],Color:0,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon shulker -349 5 16 {Tags:[sml0],Color:0,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon shulker -327 5 27 {Tags:[sml0],Color:0,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 76 run summon shulker -356 5 -10 {Tags:[sml1],Color:15,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 76 run summon shulker -349 5 -14 {Tags:[sml1],Color:15,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 76 run summon shulker -327 5 -18 {Tags:[sml1],Color:15,NoAI:1,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 88 as @e[tag=sml0] at @s run tp @s ~ ~ ~-1
execute if score @e[limit=1,name="M@K"] pg1.4 matches 74 as @e[tag=sml1] at @s run tp @s ~ ~-1 ~1
execute if score @e[limit=1,name="M@K"] pg1.4 matches 62 as @e[tag=sml0] at @s run tp @s ~ ~-1 ~
execute if score @e[limit=1,name="M@K"] pg1.4 matches 50 as @e[tag=sml1] at @s run tp @s ~ ~1 ~1
execute if score @e[limit=1,name="M@K"] pg1.4 matches 38 as @e[tag=sml0] at @s run tp @s ~ ~1 ~-1
execute if score @e[limit=1,name="M@K"] pg1.4 matches 26 as @e[tag=sml1] at @s run tp @s ~ ~2 ~-1
execute if score @e[limit=1,name="M@K"] pg1.4 matches 23 as @e[tag=sml1] at @s run particle crit ~ ~ ~ 0 0 0 1 50 normal @a[tag=PG]
execute if score @e[limit=1,name="M@K"] pg1.4 matches 23 as @e[tag=sml0] at @s run tp @s ~ ~-1 ~2
execute if score @e[limit=1,name="M@K"] pg1.4 matches 23 as @e[tag=sml1] at @s run playsound item.axe.scrape master @a[tag=PG,tag=T1] -356 6 -8 1 1.5
execute if score @e[limit=1,name="M@K"] pg1.4 matches 23 as @e[tag=sml1] at @s run playsound item.axe.scrape master @a[tag=PG,tag=T2] -349 6 14 1 1.5
execute if score @e[limit=1,name="M@K"] pg1.4 matches 23 as @e[tag=sml1] at @s run playsound item.axe.scrape master @a[tag=PG,tag=T3] -327 6 25 1 1.5
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 as @e[tag=sml0] at @s run data merge entity @s {DeathTime:19s,Health:0}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 as @e[tag=sml1] at @s run data merge entity @s {DeathTime:19s,Health:0}