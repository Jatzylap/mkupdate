execute store result score @e[limit=1,name="M@K"] mg8 if entity @a[x=316,y=3,z=-143,dx=38,dy=32,dz=27]
execute as @e[limit=1,name="M@K",scores={mg8=2,mg8.3=100..}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 2","color":"green"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute as @e[limit=1,name="M@K",scores={mg8=3,mg8.3=100..}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 3","color":"green"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute as @e[limit=1,name="M@K",scores={mg8=4,mg8.3=100..}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 4","color":"green"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute as @e[limit=1,name="M@K",scores={mg8=5,mg8.3=100..}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 5","color":"green"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute as @e[limit=1,name="M@K",scores={mg8=6..,mg8.3=100..}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 6","color":"gold"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute as @e[limit=1,name="M@K",scores={mg8=1,mg8.3=100..499}] at @s run bossbar set sw_timer name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" players (","color":"yellow"},{"text":" 1","color":"red"},{"text":"/6 ","color":"gold"},{"text":") Awaiting more players...","color":"yellow"}]
execute if entity @e[limit=1,name="M@K",scores={mg8=1,mg8.3=100..499}] run scoreboard players set @e[limit=1,name="M@K",scores={mg8=..1,mg8.3=100..}] mg8.3 500
execute if entity @e[limit=1,name="M@K",scores={mg8=1,mg8.3=100..499}] run tag @a remove SWplayers
execute as @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=1..500}] at @s run scoreboard players remove @s mg8.3 1
execute as @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=99..100}] at @s run tag @a[x=316,y=3,z=-143,dx=38,dy=32,dz=27,limit=6] add SWplayers
execute as @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=0}] at @s run setblock -349 2 -52 redstone_block
bossbar set sw_timer players @a[x=316,y=3,z=-143,dx=38,dy=32,dz=27,tag=!SWplayers]
execute as @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..100}] at @s run bossbar set sw_timer2 players @a[tag=SWplayers]
execute as @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..100}] at @s run bossbar set sw_timer name ["",{"text":"You will be watching: ","color":"yellow","bold":true},{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}]
execute if entity @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..100}] run bossbar set sw_timer color yellow
execute store result bossbar sw_timer2 value run scoreboard players get @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..500}] mg8.3
execute as @e[limit=1,name="M@K",scores={mg8.3=500}] at @s run bossbar set sw_timer name ["",{"text":"There aren't enough players to begin","color":"red","bold":true}]
setblock -350 2 -47 comparator[facing=west] keep
execute store result bossbar sw_timer value run scoreboard players get @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..500}] mg8.3
execute unless entity @a[team=mg8] run scoreboard players set @e[limit=1,name="M@K",scores={mg8=..0}] mg8.3 500
execute as @e[limit=1,name="M@K",scores={mg8=..0}] at @s run bossbar remove sw_timer
execute as @e[limit=1,name="M@K",scores={mg8=..0}] at @s unless entity @a[team=mg8] run bossbar remove sw_timer2