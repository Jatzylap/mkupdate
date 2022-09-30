scoreboard players set @s mg25 2
tag @a remove RGUturn
execute as @e[tag=mg25,type=!marker] at @s run data merge entity @s {Health:0,DeathTime:19s}
title @a[scores={mg25=1..}] title ["",{"selector":"@p[scores={mg25=2}]","bold":true}]
title @a[scores={mg25=1..}] subtitle ["",{"text":"won the race","color":"yellow"}]
execute as @a[scores={mg25=1..}] at @s run particle witch ~ ~ ~ 0 0 0 0.1 150 force @s
execute if entity @s[team=mg25-black] run summon firework_rocket 302 5 0 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;1644054],FadeColors:[I;14540253]}]}}}}
execute if entity @s[team=mg25-black] run summon firework_rocket 302 5 8 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;1644054],FadeColors:[I;14540253]}]}}}}
execute if entity @s[team=mg25-black] run summon firework_rocket 302 5 16 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;1644054],FadeColors:[I;14540253]}]}}}}
execute if entity @s[team=mg25-black] run summon firework_rocket 302 5 24 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;1644054],FadeColors:[I;14540253]}]}}}}
execute if entity @s[team=mg25-white] run summon firework_rocket 302 5 0 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14540253],FadeColors:[I;1644054]}]}}}}
execute if entity @s[team=mg25-white] run summon firework_rocket 302 5 8 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14540253],FadeColors:[I;1644054]}]}}}}
execute if entity @s[team=mg25-white] run summon firework_rocket 302 5 16 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14540253],FadeColors:[I;1644054]}]}}}}
execute if entity @s[team=mg25-white] run summon firework_rocket 302 5 24 {LifeTime:21,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14540253],FadeColors:[I;1644054]}]}}}}
xp add @s 65 points
execute store success score @s 3 run advancement grant @s only mk:achieve_all mg25
scoreboard players add @s[scores={3=1}] 7 1
scoreboard players add @s[tag=PG] pg1.2 1
schedule function c4:mg25/delay 4s