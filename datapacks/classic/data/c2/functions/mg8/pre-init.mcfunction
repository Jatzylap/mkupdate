bossbar add sw_timer ["",{"text":"There aren't enough players to begin","color":"red","bold":true}]
bossbar set sw_timer color green
bossbar add sw_timer2 ["",{"text":"You will be playing: ","color":"yellow","bold":true},{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}]
bossbar set sw_timer2 color green
execute store result bossbar sw_timer2 max run scoreboard players get @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..500}] mg8.3
execute store result bossbar sw_timer max run scoreboard players get @e[limit=1,name="M@K",scores={mg8=2..,mg8.3=..500}] mg8.3
bossbar set sw_timer2 name ["",{"text":"You will be playing: ","color":"yellow","bold":true},{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true}]
tag @a remove SWplayers