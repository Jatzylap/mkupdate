#Spectators
gamemode spectator @a[tag=SPmg9]
execute as @a[tag=SPmg9] at @s unless entity @s[x=95,y=19,z=-69,dx=27,dz=28,dy=21] run tp 109.0 38 -58.0

execute as @r[scores={mg9=1..},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg9=0..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg9=0..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg9=0..,lobby=1..}] at @s run tag @s remove SPmg9
execute as @a[scores={mg9=0..,lobby=1..}] at @s run scoreboard players reset @s mg9

#Main
kill @e[x=95,y=19,z=-69,dx=27,dz=28,dy=21,type=item]
execute as @a[tag=TTplayers,team=mg9,scores={mg9=1..,mg9.3=1..},tag=TTplayers] at @s run tag @a[tag=TTplayers,team=!mg9,scores={mg9=1..,mg9.4=1..},distance=..6] add TNTtag
execute as @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag] at @s run team leave @a[tag=TTplayers,team=mg9,distance=..6,scores={mg9=1..,mg9.3=1..}]
team join mg9 @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag,limit=1]
execute as @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag] at @s run tellraw @a[scores={mg9=1..}] ["",{"text":"","color":"reset"},{"selector":"@a[scores={mg9=1..},tag=TTplayers,tag=TNTtag]","color":"aqua"},{"text":" is It!","color":"aqua"}]
playsound entity.arrow.hit_player master @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag] ~ ~ ~ 1 0 1
execute as @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag] at @s run summon firework_rocket ~ ~ ~ {LifeTime:2,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:0,Trail:0,Colors:[I;4304440],FadeColors:[I;9843760]}]}}}}
gamemode spectator @a[tag=TTplayers,scores={mg9=1..,mg9.2=1..}]
execute as @a[scores={mg9=1..,mg9.2=1..}] at @s unless entity @s[x=95,y=19,z=-69,dx=27,dz=28,dy=21] run tp 109.0 36 -58.0
execute as @e[name="M@K",limit=1,scores={mg9.5=-1..0}] at @s run function c1:mg9/death
execute as @e[name="M@K",limit=1,scores={mg9.5=..-200}] at @s run function c1:mg9/wave
execute as @e[name="M@K",limit=1,scores={mg9.6=1}] at @s run setblock -334 2 -77 redstone_block
title @a[scores={mg9=1..},team=mg9,tag=TTplayers] actionbar ["",{"text":"You are It!","color":"red","bold":true},{"text":" Tag someone before the TNT timer runs out!","color":"aqua"}]
execute as @e[name="M@K",limit=1,scores={mg9.5=1..,mg9.6=2..}] at @s run title @a[scores={mg9=1..},tag=TTplayers,team=!mg9] actionbar ["",{"text":"Run away!","color":"green"},{"text":" Try not to get tagged with TNT!","color":"aqua"}]
tag @a[scores={mg9=1..},tag=TTplayers,tag=TNTtag] remove TNTtag
item replace entity @a[scores={mg9=1..},tag=TTplayers,team=mg9] armor.head with tnt{Enchantments:[{id:binding_curse,lvl:1}],HideFlags:15,CPG:1b}
execute as @a[scores={mg9=1..},tag=TTplayers,team=mg9] at @s run particle smoke ~ ~1.5 ~ 0 0 0 0 0 normal @a[scores={mg9=1..}]
effect give @a[scores={mg9=1..},tag=TTplayers,team=mg9] speed 1 3 true
item replace entity @a[scores={mg9=1..},tag=TTplayers,team=!mg9] armor.head with air
effect give @a[scores={mg9=1..},tag=TTplayers,team=!mg9] speed 1 1 true
effect give @a[scores={mg9=1..}] instant_health 1 1 true
gamemode spectator @a[scores={mg9=1..,mg9.2=1..}]
effect give @a[scores={mg9=1..}] saturation 1 100 true
item replace entity @a[scores={mg9=1..},tag=TTplayers,team=mg9] hotbar.0 with tnt{CPG:1b,display:{Name:"{\"text\":\"You are It!\",\"color\":\"red\",\"italic\":false}"}}
clear @a[scores={mg9=1..},tag=TTplayers,team=!mg9] tnt{display:{Name:"{\"text\":\"You are It!\",\"color\":\"red\",\"italic\":false}"}}
scoreboard players reset @a[scores={mg9=1..,mg9.3=1..},tag=TTplayers] mg9.3
scoreboard players reset @a[scores={mg9=1..,mg9.4=1..},tag=TTplayers] mg9.4
scoreboard players remove @e[name="M@K",limit=1,scores={mg9.5=-200..}] mg9.5 1
execute store result bossbar tt_timer value run scoreboard players get @e[name="M@K",limit=1,scores={mg9.5=0..}] mg9.5
execute store result score @e[name="M@K",limit=1] mg9.6 if entity @a[scores={mg9=1..},tag=TTplayers]
tag @a[scores={mg9=1..,mg9.2=1..},tag=TTplayers] remove TTplayers
bossbar set tt_timer players @a[scores={mg9=1..}]