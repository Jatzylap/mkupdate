kill @e[tag=mg2,tag=STG_Ender]
summon ender_dragon 439 166 68 {DragonPhase:20,Invulnerable:1b,Tags:[STG_Ender]}
summon ender_dragon 440 168 135 {DragonPhase:20,Invulnerable:1b,Tags:[STG_Ender]}
summon ender_dragon 442 168 1 {DragonPhase:20,Invulnerable:1b,Tags:[STG_Ender]}
summon ender_dragon 508 168 69 {DragonPhase:20,Invulnerable:1b,Tags:[STG_Ender]}
execute if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @a[scores={mg2=1..},team=!] ["",{"text":"Bed","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"Timer end reached! Dragons have now been released!","color":"yellow","bold":true}]
execute if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @a[scores={mg2=1..},team=!] ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"Timer end reached! Dragons have now been released!","color":"yellow","bold":true}]
execute if score @e[name="M@K",limit=1] mg2 matches 0 run setblock 440 159 135 air destroy
execute if score @e[name="M@K",limit=1] mg2 matches 0 run setblock 508 158 69 air destroy
execute if score @e[name="M@K",limit=1] mg2 matches 0 run setblock 442 159 1 air destroy
execute if score @e[name="M@K",limit=1] mg2 matches 1 run setblock 440 163 135 air destroy
execute if score @e[name="M@K",limit=1] mg2 matches 1 run setblock 508 163 69 air destroy
execute if score @e[name="M@K",limit=1] mg2 matches 1 run setblock 442 163 1 air destroy