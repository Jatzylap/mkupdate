execute if score @e[name="M@K",limit=1] mg24.1 matches ..99 run scoreboard players add @e[name="M@K",limit=1] mg24.1 1
execute if score @e[name="M@K",limit=1] mg24.1 matches 100 run fill 792 3 61 790 3 59 polished_blackstone_pressure_plate
execute if score @e[name="M@K",limit=1] mg24.1 matches 100 run particle composter 791.5 1 60.5 0.8 1 0.8 0 1000 force @a[scores={mg24=1..}]
execute if score @e[name="M@K",limit=1] mg24.1 matches 100 run tellraw @a[scores={mg24=1..}] ["",{"text":"\n> ","color":"gray"},{"text":"Pink Team","color":"light_purple"},{"text":"\'s missile generator is operational!\n","color":"yellow"}]
execute if score @e[name="M@K",limit=1] mg24.1 matches 100 run execute as @a[scores={mg24=1..}] at @s run playsound entity.villager.work_toolsmith master @s ~ ~ ~ 1000 0.7
execute if score @e[name="M@K",limit=1] mg24.1 matches 100 run schedule clear d2:mg24/repair_pink
execute if score @e[name="M@K",limit=1] mg24.1 matches ..99 run schedule function d2:mg24/repair_pink 6