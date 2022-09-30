scoreboard players set @e[name="M@K",limit=1] mg24.1 1
function d2:mg24/repair_pink
fill 792 3 61 790 3 59 air
particle large_smoke 791.5 0.3 60.5 0.8 1 0.8 0 1000 force @a[scores={mg24=1..}]
tellraw @a[scores={mg24=1..},team=!mg24-pink] ["",{"text":"\n> ","color":"gray"},{"text":"Pink Team","color":"light_purple"},{"text":"\'s missile generator has been temporarily deactivated!\n","color":"yellow"}]
tellraw @a[scores={mg24=1..},team=mg24-pink,tag=MMplayers] ["",{"text":"\n> ","color":"gray"},{"text":"Your missile generator will recover in ","color":"light_purple"},{"text":"30 seconds","color":"aqua"},{"text":" (if damage ceases)\n","color":"light_purple"}]
title @a[scores={mg24=1..},team=mg24-pink] title [""]
title @a[scores={mg24=1..},team=mg24-pink] subtitle ["",{"text":"Your missile generator is down!","color":"light_purple"}]
execute as @a[scores={mg24=1..}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1000 1.5
schedule function d2:mg24/break_tune 4 append
schedule function d2:mg24/break_tune 8 append