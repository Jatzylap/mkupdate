#Spectators
gamemode spectator @a[tag=SPmg8]
execute as @a[tag=SPmg8,x=405,y=38,z=-138,distance=45..] at @s run tp @s 405 38 -138
execute as @a[team=mg8,tag=SWplayers] at @s run tp @a[tag=SPmg8,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 405 38 -138
tag @a[tag=SPmg8] remove SWplayers
tag @a[tag=SPmg8] remove SWlonely
team join mg8 @a[tag=SPmg8]
execute as @e[type=villager,name="SkyWars Exit"] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.1 4 normal @a[team=mg8,tag=SPmg8]
execute as @e[type=villager,name="SkyWars Exit"] at @s run tag @a[team=mg8,tag=SPmg8,distance=..3] add SWw_exit
execute as @a[team=mg8,tag=SPmg8,tag=SWw_exit] at @s run scoreboard players set @s lobby 1
tag @a[tag=SWw_exit] remove SPmg8
gamemode adventure @a[tag=SWw_exit]
team leave @a[tag=SWw_exit]
tag @a remove SWw_exit

execute as @r[team=mg8,tag=!st0red] at @s run function mk:store
tag @e[type=!player,type=!villager,x=367,y=0,z=-173,dx=73,dy=99,dz=70] add mg8
tp @e[tag=st0rage,tag=mg8] 332 28 -135
execute as @a[team=mg8,scores={lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[team=mg8,scores={lobby=1..},tag=st0red] at @s run tp @e[sort=random,limit=1,tag=st0rage,tag=mg8] @s
execute as @a[team=mg8,scores={2=1..},tag=st0red] at @s run team leave

#Main
scoreboard players remove @e[limit=1,name="M@K"] mg8.3 1
execute as @e[limit=1,name="M@K",scores={mg8.3=3900..4000}] at @s run setblock -348 2 -49 redstone_block keep
execute as @e[limit=1,name="M@K",scores={mg8.3=..50}] at @s unless entity @a[team=mg8,tag=SWplayers,scores={mg8.1=1..}] run setblock -347 2 -49 redstone_block keep
bossbar set sw_timer2 players @a[team=mg8]
execute as @a[team=mg8,tag=SWplayers,scores={mg8.1=0}] at @s if entity @s[y=2,distance=..3] run title @s title ""
execute as @a[team=mg8,tag=SWplayers,scores={mg8.1=0}] at @s if entity @s[y=2,distance=..3] run title @s subtitle ["",{"text":"You are now watching the game","color":"gold"}]
execute as @a[team=mg8,tag=SWplayers,scores={mg8.1=0}] at @s if entity @s[y=2,distance=..3] run tellraw @a[team=mg8] ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":"> "},{"selector":"@s","bold":true},{"text":" has been eliminated from the game","color":"yellow"}]
execute as @a[team=mg8,tag=SWplayers,scores={mg8.1=0}] at @s if entity @s[y=2,distance=..3] run tag @s add SPmg8
execute as @a[team=mg8,tag=SWplayers,tag=SWlonely] at @s run execute if entity @a[team=mg8,tag=SWplayers,tag=!SWlonely] run tag @a[team=mg8] remove SWlonely
execute as @r[limit=1,team=mg8,tag=SWplayers] unless entity @a[team=mg8,tag=SWplayers,tag=SWlonely] run tag @s add SWlonely
execute as @a[team=mg8,tag=SWlonely,tag=SWplayers,limit=1] at @s run execute unless entity @a[team=mg8,tag=!SWlonely,tag=SWplayers] run function c2:mg8/win
execute store result bossbar sw_timer2 value run scoreboard players get @e[limit=1,name="M@K",scores={mg8.3=1..8000}] mg8.3
execute as @a[team=mg8,tag=SWplayers,scores={mg8.5_1=1..}] at @s run give @s oak_log{SW:1b}
execute as @a[team=mg8,tag=SWplayers,scores={mg8.5_2=1..}] at @s run give @s stripped_oak_log{SW:1b}
execute as @a[team=mg8,tag=SWplayers,scores={mg8.5_3=1..}] at @s run give @s oak_planks{SW:1b}
execute as @a[team=mg8,tag=SWplayers,scores={mg8.5_4=1..}] at @s run give @s cobblestone{SW:1b}
scoreboard players reset @a[team=mg8] mg8.5_1
scoreboard players reset @a[team=mg8] mg8.5_2
scoreboard players reset @a[team=mg8] mg8.5_3
scoreboard players reset @a[team=mg8] mg8.5_4
execute as @a[team=mg8,tag=SWplayers,scores={mg8.4=1..}] at @s run tag @s add SPmg8
execute as @a[team=mg8] at @s run scoreboard players reset @s mg8.4
execute as @e[type=villager,name="SkyWars Exit",limit=1] at @s run spreadplayers ~ ~ 0 70 false @e[type=area_effect_cloud,tag=SW_TNT]
execute unless entity @a[team=mg8,tag=SWplayers] run function c2:mg8/reset