execute as @e[name="M@K",limit=1,scores={mg9.5=..-200,mg9.6=2..}] at @s run fill 112 34 -55 105 34 -62 air replace barrier
execute as @e[name="M@K",limit=1,scores={mg9.5=..-200,mg9.6=2..}] at @s run fill 121 34 -62 128 34 -55 air replace barrier
execute as @e[name="M@K",limit=1,scores={mg9.6=2}] at @s run team join mg9 @r[scores={mg9=1..},tag=TTplayers]
execute as @e[name="M@K",limit=1,scores={mg9.6=3..4}] at @s run team join mg9 @r[scores={mg9=1..},tag=TTplayers]
execute as @e[name="M@K",limit=1,scores={mg9.6=5..}] at @s run team join mg9 @r[scores={mg9=1..},tag=TTplayers,limit=2]
playsound entity.player.levelup master @a[scores={mg9=1..},team=mg9,tag=TTplayers] ~ ~ ~ 10000 0.9
tellraw @a[scores={mg9=1..}] ["",{"text":"","color":"reset"},{"selector":"@a[scores={mg9=1..},team=mg9,tag=TTplayers]","color":"gray"},{"text":" is It!","color":"aqua"}]
scoreboard players set @e[name="M@K",limit=1] mg9.5 1000
title @a[team=mg9,scores={mg9=1..},tag=TTplayers] title ["",{"text":"You are It!","color":"aqua"}]
execute as @a[team=mg9,scores={mg9=1..},tag=TTplayers] at @s run summon firework_rocket ~ ~ ~ {LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;7047881],FadeColors:[I;9843760]}]}}}}