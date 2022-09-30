execute if entity @e[tag=mg15_win] run advancement grant @s only mk:achieve_all mg15
execute if entity @e[tag=mg15_win] run execute store success score @s 3 run advancement grant @s only mk:unlock_all mg15
scoreboard players add @s[scores={mg15=1..,3=1}] 7 1
scoreboard players reset @s 3
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:1}}]}] at @s run tag @e[name="M@K",limit=1,tag=!mg15_win] add t0me1
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:2}}]}] at @s run tag @e[name="M@K",limit=1,tag=!mg15_win] add t0me2
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:3}}]}] at @s run tag @e[name="M@K",limit=1,tag=!mg15_win] add t0me3
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:4}}]}] at @s run tag @e[name="M@K",limit=1,tag=!mg15_win] add t0me4
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:1}}]}] at @s unless entity @e[name="M@K",tag=mg15_win] run tag @s add mg15-book
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:2}}]}] at @s unless entity @e[name="M@K",tag=mg15_win] run tag @s add mg15-book
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:3}}]}] at @s unless entity @e[name="M@K",tag=mg15_win] run tag @s add mg15-book
execute in void as @r[scores={mg15=1..},nbt={Inventory:[{tag:{tome:4}}]}] at @s unless entity @e[name="M@K",tag=mg15_win] run tag @s add mg15-book
execute as @e[name="M@K",limit=1,tag=t0me1,tag=t0me2,tag=t0me3,tag=t0me4] at @s run function d3:mg15/end
execute in void if entity @e[scores={mg15=1..}] run schedule function d3:mg15/loop 1