execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. run title @a[scores={mg24=1..}] reset
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. as @a[tag=MMplayers,team=mg24-green,scores={mg24=1..},tag=mg24_win] at @s run title @a[scores={mg24=1..}] title ["",{"text":"Green Team Wins","color":"green"}]
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. as @a[tag=MMplayers,team=mg24-pink,scores={mg24=1..},tag=mg24_win] at @s run title @a[scores={mg24=1..}] title ["",{"text":"Pink Team Wins","color":"light_purple"}]
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. as @a[tag=MMplayers,team=mg24-green,scores={mg24=1..},tag=mg24_win] at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4304440],FadeColors:[I;4304440]}]}}}}
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. as @a[tag=MMplayers,team=mg24-pink,scores={mg24=1..},tag=mg24_win] at @s run summon firework_rocket ~ ~ ~ {LifeTime:20,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11751612],FadeColors:[I;11751612]}]}}}}
execute unless score @e[name="M@K",limit=1] mg24.8 matches 0.. as @a[scores={mg24=1..}] at @s run title @s subtitle ["",{"score":{"name":"@r[team=mg24-pink,tag=MMplayers]","objective":"mg24.7"},"color":"light_purple","bold":true},{"text":" - ","color":"gold","bold":true},{"score":{"name":"@r[team=mg24-green,tag=MMplayers]","objective":"mg24.7"},"color":"green","bold":true}]
xp add @a[tag=mg24_win] 100 points
scoreboard players reset * mg24.7
execute as @a[tag=mg24_win] at @s store success score @s 3 run advancement grant @s only mk:achieve_all mg24
scoreboard players add @a[tag=mg24_win,scores={3=1}] 7 1
scoreboard players add @a[tag=PG,tag=mg24_win] pg1.2 1
setblock -351 2 -42 air