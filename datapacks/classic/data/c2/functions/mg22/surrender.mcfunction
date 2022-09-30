execute as @a[scores={mg22=1..}] at @s run playsound entity.wither.spawn master @s ~ ~ ~ 1000 0
execute as @a[scores={mg22=1..}] at @s run title @s title ["",{"text":"_","color":"gray"},{"text":"Game Over","color":"yellow"},{"text":"_","color":"gray"}]
fill 210 2 -167 210 5 -169 air replace spruce_fence
scoreboard players reset * mg22.3
scoreboard players reset * mg22.4
scoreboard players reset * mg22.6
setblock 196 3 -168 lever[face=wall,facing=east]
setblock 216 2 -200 deepslate_brick_wall
setblock 216 2 -148 deepslate_brick_wall
execute as @e[type=marker,tag=mg22] at @s run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep
bossbar set td_progress value 20
execute as @e[tag=mg22_mob] at @s run data merge entity @s {Health:0,DeathTime:19s}
kill @e[type=marker,x=-359,y=3,z=-77,distance=..2]
kill @e[tag=mg22_path]
tp @a[scores={mg22=1..},tag=TDviewers] 216 2 -168 90 0
tag @a remove TDviewers
tag @e[limit=1,name="M@K"] remove mg22_start
schedule function c2:mg22/reset 4s