execute as @e[tag=q,tag=mg26] at @s run data merge entity @s {CustomNameVisible:0,DisabledSlots:-1}
execute in sister_dimension run setblock 21 2 -377 air
particle block polished_blackstone_pressure_plate 21.43 2.06 -376.45 .25 0 .25 5 25 normal @a[scores={mg26=1..}]
playsound block.stone.break master @a 21.48 2.00 -376.62 1 0.8
summon marker 21 3.875 -377 {Tags:[mg26,magnet]}
tag @e[tag=q,tag=mg26] add mg26_rev
execute as @a[scores={mg26=1..},tag=TCplayers] at @s run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 1000 0.6
execute if score @e[name="M@K",limit=1] mg26 matches 1 run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;14384446],FadeColors:[I;14540253]}]}}}}
execute if score @e[name="M@K",limit=1] mg26 matches 2 run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;3949738],FadeColors:[I;14540253]}]}}}}
execute if score @e[name="M@K",limit=1] mg26 matches 3 run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;4304440],FadeColors:[I;14540253]}]}}}}
title @a[scores={mg26=1..},tag=TCplayers] title [""]
title @a[scores={mg26=1..},tag=TCplayers] subtitle ["",{"text":"✔","color":"green","bold":true},{"text":" Correct!","color":"white"}]
execute if score @e[name="M@K",limit=1] mg26 matches 1.. run schedule function d4:mg26/delay 5s