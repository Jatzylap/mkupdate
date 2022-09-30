scoreboard players reset @s mg23.8
tag @s add mg23_win
execute as @a[team=mg23-blue,tag=mg23_win] at @s run bossbar set ctf_countdown name ["",{"text":"Blue Team Win","color":"blue","bold":true}]
execute as @a[team=mg23-red,tag=mg23_win] at @s run bossbar set ctf_countdown name ["",{"text":"Red Team Win","color":"red","bold":true}]
execute as @a[tag=CTFplayers,team=mg23-blue,scores={mg23=1..},tag=mg23_win] at @s run title @a[scores={mg23=1..}] title ["",{"text":"Blue Team Wins!","color":"blue"}]
execute as @a[tag=CTFplayers,team=mg23-red,scores={mg23=1..},tag=mg23_win] at @s run title @a[scores={mg23=1..}] title ["",{"text":"Red Team Wins!","color":"red"}]
execute as @a[tag=CTFplayers,team=mg23-blue,scores={mg23=1..},tag=mg23_win] at @s run fill 88 25 -16 89 35 -9 blue_wool replace #wool
execute as @a[tag=CTFplayers,team=mg23-blue,scores={mg23=1..},tag=mg23_win] at @s run fill -75 25 -121 -76 36 -114 blue_wool replace #wool
execute as @a[tag=CTFplayers,team=mg23-red,scores={mg23=1..},tag=mg23_win] at @s run fill 88 25 -16 89 35 -9 red_wool replace #wool
execute as @a[tag=CTFplayers,team=mg23-red,scores={mg23=1..},tag=mg23_win] at @s run fill -75 25 -121 -76 36 -114 red_wool replace #wool
xp add @a[tag=mg23_win] 25 points
execute if entity @a[tag=mg23_win] as @a[scores={mg23=1..}] at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1000 0.7
execute if entity @a[team=mg23-blue,tag=mg23_win] as @a[scores={mg23=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;3029133,3029133,3029133,3029133],FadeColors:[I;3029133,3029133,3029133]}]}}}}
execute if entity @a[team=mg23-red,tag=mg23_win] as @a[scores={mg23=1..}] at @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;9843760,9843760,9843760,9843760],FadeColors:[I;9843760,9843760,9843760]}]}}}}
bossbar set ctf_countdown value 8400
execute as @a[tag=mg23_win] at @s store success score @s 3 run advancement grant @s only mk:achieve_all mg23
scoreboard players add @a[tag=mg23_win,scores={3=1}] 7 1
scoreboard players add @a[tag=PG,tag=mg23_win] pg1.2 1
schedule function c2:mg23/delay 5s