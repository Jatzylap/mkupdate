kill @s
scoreboard players reset @e[limit=1,name="M@K"] mg19
scoreboard players reset @e[limit=1,name="M@K"] mg19.1
kill @e[type=experience_orb,x=-13,y=25,z=-40,dx=55,dy=40,dz=50]
execute as @e[type=!player,type=!item,type=!area_effect_cloud,x=-13,y=25,z=-40,dx=55,dy=40,dz=50] at @s run tp @s ~ -1000 ~
execute as @a[scores={mg19=1..}] at @s run playsound block.conduit.attack.target master @s ~ ~ ~ 1000 1
execute as @a[scores={mg19=1..}] at @s run playsound block.iron_door.open master @s ~ ~ ~ 1000 1

#PLAINS
execute if entity @a[scores={mg19=1..},tag=mg19_1] run setblock 10 47 -13 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_1] run setblock 10 47 -19 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_1] run data merge block 13 48 -14 {LootTable:"c1:box/tier1"}
#DESERT
execute if entity @a[scores={mg19=1..},tag=mg19_2] run setblock 10 47 -19 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_2] run setblock 17 48 -17 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_2] run data merge block 13 48 -14 {LootTable:"c1:box/tier2"}
#GLACIER
execute if entity @a[scores={mg19=1..},tag=mg19_3] run setblock 17 48 -17 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_3] run setblock 16 47 -13 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_3] run data merge block 13 48 -14 {LootTable:"c1:box/tier3"}
#WASTELAND
execute if entity @a[scores={mg19=1..},tag=mg19_4] run setblock 16 47 -13 redstone_torch
execute if entity @a[scores={mg19=1..},tag=mg19_4] run setblock 15 30 -4 redstone_block
execute if entity @a[scores={mg19=1..},tag=mg19_4] run data merge block 13 48 -14 {LootTable:"c1:box/tier4"}
tag @a[scores={mg19=1..},tag=mg19_4] add mg19_win

execute unless entity @a[tag=mg19_win] run tag @a remove mg19_1
execute unless entity @a[tag=mg19_win] run tag @a remove mg19_2
execute unless entity @a[tag=mg19_win] run tag @a remove mg19_3
execute unless entity @a[tag=mg19_win] run tag @a remove mg19_4