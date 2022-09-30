execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -356 4 -9 {NoBasePlate:1,ArmorItems:[{},{},{},{Count:1,id:tnt}],Invulnerable:1,DisabledSlots:-1,Small:1,ShowArms:1,Tags:[sml0]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -349 4 13 {NoBasePlate:1,ArmorItems:[{},{},{},{Count:1,id:tnt}],Invulnerable:1,DisabledSlots:-1,Small:1,ShowArms:1,Tags:[sml0]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -327 4 24 {NoBasePlate:1,ArmorItems:[{},{},{},{Count:1,id:tnt}],Invulnerable:1,DisabledSlots:-1,Small:1,ShowArms:1,Tags:[sml0]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -356 4 -7 {NoBasePlate:1,Small:1,Invulnerable:1,Rotation:[180f],DisabledSlots:-1,ShowArms:1,Tags:[sml0,"_"]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -349 4 15 {NoBasePlate:1,Small:1,Invulnerable:1,DisabledSlots:-1,ShowArms:1,Tags:[sml0,"_"]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 90 run summon armor_stand -327 4 26 {NoBasePlate:1,Small:1,Invulnerable:1,DisabledSlots:-1,ShowArms:1,Tags:[sml0,"_"]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 65 as @e[tag=sml0,tag=_] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:tnt}]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 65 as @e[tag=sml0,tag=!_] at @s run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 70 as @e[tag=sml0,tag=_] at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;4304440],FadeColors:[I;9843760]}]}}}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 25 as @e[tag=sml0,tag=!_] at @s run data merge entity @s {ArmorItems:[{},{},{},{Count:1,id:tnt}]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 25 as @e[tag=sml0,tag=_] at @s run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 30 as @e[tag=sml0,tag=!_] at @s run summon firework_rocket ~ ~ ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;4304440],FadeColors:[I;9843760]}]}}}}
execute if score @e[limit=1,name="M@K"] pg1.4 matches 5 run kill @e[tag=sml0]