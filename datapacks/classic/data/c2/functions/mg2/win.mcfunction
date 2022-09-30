execute as @a[team=mg2-blue,tag=mg2_win] at @s run bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true}]
execute as @a[team=mg2-yellow,tag=mg2_win] at @s run bossbar set sg_countdown name ["",{"text":"Team: Yellow","color":"yellow","bold":true}]
execute as @a[team=mg2-red,tag=mg2_win] at @s run bossbar set sg_countdown name ["",{"text":"Team: Red","color":"red","bold":true}]
execute as @a[tag=STGplayers,team=mg2-blue,scores={mg2=1..},tag=mg2_win] at @s run title @a[scores={mg2=1..}] title ["",{"text":"Blue Team Wins!","color":"blue"}]
execute as @a[tag=STGplayers,team=mg2-yellow,scores={mg2=1..},tag=mg2_win] at @s run title @a[scores={mg2=1..}] title ["",{"text":"Yellow Team Wins!","color":"yellow"}]
execute as @a[tag=STGplayers,team=mg2-red,scores={mg2=1..},tag=mg2_win] at @s run title @a[scores={mg2=1..}] title ["",{"text":"Red Team Wins!","color":"red"}]
xp add @a[scores={mg2.1=1..}] 30 points
execute as @a[team=mg2-blue,tag=mg2_win] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;3029133,3029133,3029133,3029133],FadeColors:[I;3029133,3029133,3029133]}]}}}}
execute as @a[team=mg2-yellow,tag=mg2_win] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11642407,11642407,11642407,11642407],FadeColors:[I;11642407,11642407,11642407]}]}}}}
execute as @a[team=mg2-red,tag=mg2_win] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;9843760,9843760,9843760,9843760],FadeColors:[I;9843760,9843760,9843760]}]}}}}
execute store result bossbar sg_countdown value if entity @a[scores={mg2=1..}]
execute as @a[tag=mg2_win] at @s store success score @s 3 run advancement grant @s only mk:achieve_all mg2
scoreboard players add @a[tag=mg2_win,scores={3=1}] 7 1
scoreboard players add @a[tag=PG,tag=mg2_win] pg1.2 1