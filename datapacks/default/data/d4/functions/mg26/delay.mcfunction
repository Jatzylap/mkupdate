execute in sister_dimension as @e[tag=magnet,tag=mg26] at @s run particle cloud ~ ~1 ~ .3 .3 .3 .2 900 force @a[scores={mg26=1..}]
execute in sister_dimension run fill 13 -1 -369 29 -1 -385 air replace redstone_block
execute in sister_dimension run kill @e[tag=magnet,tag=mg26]
execute in sister_dimension run kill @e[tag=q,tag=mg26]
execute as @a[scores={mg26=1..},tag=TCplayers] at @s run playsound ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 1000 1.2
execute as @a[scores={mg26=1..},tag=TCplayers] at @s run playsound ambient.underwater.loop.additions.rare master @s ~ ~ ~ 1000 1.2
execute as @a[scores={mg26=1..},tag=TCplayers] at @s if predicate 50-50 run playsound ambient.underwater.loop.additions.rare master @s ~ ~ ~ 1000 1.2
execute as @a[scores={mg26=1..},tag=TCplayers] at @s if predicate 50-50 run playsound ambient.underwater.loop.additions.ultra_rare master @s ~ ~ ~ 1000 1.2
execute as @a[scores={mg26=1..},tag=TCplayers] at @s if predicate 25-75 run playsound ambient.cave master @s ~ ~ ~ 1000 0.5
execute unless score @e[tag=mg26_start,limit=1,scores={mg26=1}] mg26.2 matches 7.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 6 -377 {Tags:[mg26,chest]}
execute unless score @e[tag=mg26_start,limit=1,scores={mg26=2}] mg26.2 matches 9.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 6 -377 {Tags:[mg26,chest]}
execute unless score @e[tag=mg26_start,limit=1,scores={mg26=3}] mg26.2 matches 7.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 6 -377 {Tags:[mg26,chest]}
execute if score @e[tag=mg26_start,limit=1,scores={mg26=1}] mg26.2 matches 7.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 3.875 -377 {Tags:[mg26,chest]}
execute if score @e[tag=mg26_start,limit=1,scores={mg26=2}] mg26.2 matches 9.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 3.875 -377 {Tags:[mg26,chest]}
execute if score @e[tag=mg26_start,limit=1,scores={mg26=3}] mg26.2 matches 7.. unless entity @e[tag=mg26,tag=chest] in sister_dimension run summon marker 21 3.875 -377 {Tags:[mg26,chest]}
execute as @e[tag=mg26_start,limit=1,scores={mg26=1}] at @s unless score @s mg26.2 matches 7.. run scoreboard players set @s mg26.1 0
execute as @e[tag=mg26_start,limit=1,scores={mg26=2}] at @s unless score @s mg26.2 matches 9.. run scoreboard players set @s mg26.1 0
execute as @e[tag=mg26_start,limit=1,scores={mg26=3}] at @s unless score @s mg26.2 matches 7.. run scoreboard players set @s mg26.1 0
execute unless score @e[tag=mg26_start,limit=1] mg26.1 matches 0.. run schedule function d4:mg26/win_delay 2s