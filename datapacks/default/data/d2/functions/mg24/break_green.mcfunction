scoreboard players set @e[name="M@K",limit=1] mg24.2 1
function d2:mg24/repair_green
fill 933 3 59 931 3 61 air
particle large_smoke 932.5 0.3 60.5 0.8 1 0.8 0 1000 force @a[scores={mg24=1..}]
tellraw @a[scores={mg24=1..},team=!mg24-green] ["",{"text":"\n> ","color":"gray"},{"text":"Green Team","color":"green"},{"text":"\'s missile generator has been temporarily deactivated!\n","color":"yellow"}]
tellraw @a[scores={mg24=1..},team=mg24-green,tag=MMplayers] ["",{"text":"\n> ","color":"gray"},{"text":"Your missile generator will recover in ","color":"green"},{"text":"30 seconds","color":"aqua"},{"text":" (if damage ceases)\n","color":"green"}]
title @a[scores={mg24=1..},team=mg24-green] title [""]
title @a[scores={mg24=1..},team=mg24-green] subtitle ["",{"text":"Your missile generator is down!","color":"green"}]
execute as @a[scores={mg24=1..}] at @s run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1000 1.5
schedule function d2:mg24/break_tune 4 append
schedule function d2:mg24/break_tune 8 append