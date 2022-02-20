title @a[scores={mg2=1..},tag=STGplayers] title ["",{"text":"GO!","color":"green","bold":true}]
execute as @e[tag=r0t,tag=mg2,tag=i] at @s run summon firework_rocket ~ ~-1 ~ {LifeTime:5,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute as @e[tag=r0t,tag=mg2,tag=i] at @s run particle totem_of_undying ~ ~-1 ~ 1 1 1 0 900 normal @a[scores={mg2=1..}]
playsound entity.player.levelup master @a[scores={mg2=1..},tag=STGplayers] ~ ~ ~ 100000 1
fill 435 165 19 433 165 17 air
fill 490 165 76 492 165 74 air
fill 435 165 117 433 165 119 air
forceload remove 411 -3 511 139
spawnpoint @a[scores={mg2=1..},team=mg2-blue,tag=STGplayers] 436 159 18
spawnpoint @a[scores={mg2=1..},team=mg2-yellow,tag=STGplayers] 491 159 73
spawnpoint @a[scores={mg2=1..},team=mg2-red,tag=STGplayers] 436 159 118
execute if score @e[name="M@K",limit=1] mg2 matches 0 run scoreboard players set @e[tag=r0t,tag=mg2] mg2.2 1
execute if score @e[name="M@K",limit=1] mg2 matches 1 run scoreboard players set @e[tag=r0t,tag=mg2,tag=!g] mg2.2 1
bossbar set sg_countdown color green
execute store result bossbar sg_countdown max if entity @a[scores={mg2=1..},tag=STGplayers]
execute at @a[team=!,tag=STGplayers,scores={mg2=1..}] unless entity @a[team=mg2-red] run tag @e[name="M@K",limit=1] add mg2X_
execute at @a[team=!,tag=STGplayers,scores={mg2=1..}] unless entity @a[team=mg2-blue] run tag @e[name="M@K",limit=1] add mg2_XX
execute at @a[team=!,tag=STGplayers,scores={mg2=1..}] unless entity @a[team=mg2-yellow] run tag @e[name="M@K",limit=1] add mg2_X
execute if entity @e[limit=1,name="M@K",tag=mg2X_] run function c2:mg2/teams/b-y
execute if entity @e[limit=1,name="M@K",tag=mg2_X] run function c2:mg2/teams/b-r
execute if entity @e[limit=1,name="M@K",tag=mg2_XX] run function c2:mg2/teams/y-r
tag @e remove mg2_X
tag @e remove mg2_XX
tag @e remove mg2X_
execute if entity @e[limit=1,name="M@K",tag=mg2_3] run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ✔ ","color":"green"}]