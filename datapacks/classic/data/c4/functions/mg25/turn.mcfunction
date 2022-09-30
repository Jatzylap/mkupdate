execute at @s[team=mg25-black] if entity @e[name="M@K",limit=1,scores={mg25=..300}] run tellraw @a[scores={mg25=1..}] ["",{"text":"\nIt\'s ","color":"gray"},{"text":"Black","color":"dark_gray"},{"text":"\'s move!\n","color":"gray"}]
execute at @s[team=mg25-white] if entity @e[name="M@K",limit=1,scores={mg25=..300}] run tellraw @a[scores={mg25=1..}] ["",{"text":"\nIt\'s ","color":"gray"},{"text":"White"},{"text":"\'s move!\n","color":"gray"}]
execute at @s[team=mg25-black] if entity @e[name="M@K",limit=1,scores={mg25=301..}] run tellraw @a[scores={mg25=1..}] ["",{"text":"\nIt\'s ","color":"gray"},{"text":"Black","color":"dark_gray"},{"text":"\'s turn!\n","color":"gray"}]
execute at @s[team=mg25-white] if entity @e[name="M@K",limit=1,scores={mg25=301..}] run tellraw @a[scores={mg25=1..}] ["",{"text":"\nIt\'s ","color":"gray"},{"text":"White"},{"text":"\'s turn!\n","color":"gray"}]
execute as @a[tag=RGUplayers] at @s unless score @s mg25.2 matches 0.. run scoreboard players set @s mg25.2 0
tag @a remove RGUturn
tag @e[tag=mg25] remove moved
tag @e[tag=mg25] remove static
tag @e[tag=mg25] remove mg25_c
scoreboard players reset @a mg25.1
scoreboard players set @e[name="M@K",limit=1] mg25 301
tag @s add RGUturn
execute at @s[team=mg25-white] run tag @e[tag=mg25,team=mg25-white] remove new
execute at @s[team=mg25-black] run tag @e[tag=mg25,team=mg25-black] remove new
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] as @a[scores={mg25=1..}] at @s run playsound entity.firework_rocket.blast master @s ~ ~ ~ 100000 0
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] run particle end_rod ~ ~1 ~ 0 0 0 1 58 force @a[scores={mg25=1..}]
execute as @a[scores={mg25=1..}] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 100000 0