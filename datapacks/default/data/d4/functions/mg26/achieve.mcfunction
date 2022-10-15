kill @e[tag=q,tag=mg26]
execute in sister_dimension run particle portal 21 2.4 -377 .3 .3 .3 3 1111 force @a[scores={mg26=1..}]
execute in sister_dimension as @a[scores={mg26=1..}] at @s run playsound block.bell.resonate master @s ~ ~ ~ 1000
schedule function d4:mg26/chest_delay 40

execute in sister_dimension unless block 21 2 -377 air run setblock 21 2 -377 air
execute in sister_dimension run particle block polished_blackstone_pressure_plate 21.43 2.06 -376.45 .25 0 .25 5 25 normal @a[scores={mg26=1..}]
execute in sister_dimension run playsound block.stone.break master @a 21.48 2.00 -376.62 1 0.8
execute unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 3.875 -377 {Tags:[mg26,chest]}

function d4:mg26/reset-walls
function d4:mg26/reset-lights
bossbar set tc_progress name "..."
bossbar set tc_progress value 0
bossbar set tc_progress color white
execute in sister_dimension if score @s mg26 matches 1 run summon firework_rocket 21 2 -377 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;14384446],FadeColors:[I;14540253]}]}}}}
execute in sister_dimension if score @s mg26 matches 2 run summon firework_rocket 21 2 -377 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;3949738],FadeColors:[I;14540253]}]}}}}
execute in sister_dimension if score @s mg26 matches 3 run summon firework_rocket 21 2 -377 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:1,Colors:[I;4304440],FadeColors:[I;14540253]}]}}}}
execute if score @s mg26 matches 1 run tag @a[scores={mg26=1..},tag=TCplayers] add mg26_win1
execute if score @s mg26 matches 2 run tag @a[scores={mg26=1..},tag=TCplayers] add mg26_win2
execute if score @s mg26 matches 3 run tag @a[scores={mg26=1..},tag=TCplayers] add mg26_win3
xp add @a[tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] 200 points
execute as @a[tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] at @s run advancement grant @s only mk:achieve_all mg26
execute as @a[tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] at @s store success score @s 3 run advancement grant @s only mk:unlock_all mg26
execute if entity @a[scores={mg26=1..},tag=TCplayers,tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] run schedule function d4:mg26/end 3s

execute if score @s mg26 matches 1 run title @a[scores={mg26=1..},tag=TCplayers] title ["",{"text":"o__","color":"reset","bold":true},{"text":" HISTORY ","color":"gold","bold":true},{"text":" __o","color":"reset","bold":true}]
execute if score @s mg26 matches 2 run title @a[scores={mg26=1..},tag=TCplayers] title ["",{"text":"o__","color":"reset","bold":true},{"text":" GENERAL ","color":"blue","bold":true},{"text":" __o","color":"reset","bold":true}]
execute if score @s mg26 matches 3 run title @a[scores={mg26=1..},tag=TCplayers] title ["",{"text":"o__","color":"reset","bold":true},{"text":" LITERATURE ","color":"green","bold":true},{"text":" __o","color":"reset","bold":true}]
execute if score @s mg26 matches 1..3 run title @a[scores={mg26=1..},tag=TCplayers] subtitle ["",{"text":"i","color":"reset","obfuscated":true},{"text":" completed ","color":"yellow"},{"text":"i","color":"reset","obfuscated":true}]

scoreboard players reset @s mg26.1
scoreboard players reset @s mg26.2
tag @s remove mg26_start