tag @a[tag=STGplayers,scores={b=1..,mg2=1..}] add STGu
execute as @a[scores={mg2=1..},tag=STGu] at @s if data entity @s {SelectedItem:{id:"minecraft:iron_ingot"}} store result score @s mg2.2 run data get entity @s SelectedItem.Count
execute as @a[scores={mg2=1..},tag=STGu] at @s if data entity @s {SelectedItem:{id:"minecraft:gold_ingot"}} store result score @s mg2.2 run data get entity @s SelectedItem.Count
execute as @a[scores={mg2=1..},tag=STGu] at @s if data entity @s {SelectedItem:{id:"minecraft:emerald"}} store result score @s mg2.2 run data get entity @s SelectedItem.Count
execute as @a[scores={mg2=1..},tag=STGu] at @s if data entity @s {SelectedItem:{id:"minecraft:diamond"}} store result score @s mg2.2 run data get entity @s SelectedItem.Count

#Level 2-3
execute at @s[tag=r0t,tag=mg2,tag=i,tag=lvl1,tag=lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 64.. run clear @p[tag=STGu,scores={mg2=1..}] iron_ingot 64
execute at @s[tag=r0t,tag=mg2,tag=g,tag=lvl1,tag=lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:gold_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 64.. run clear @p[tag=STGu,scores={mg2=1..}] gold_ingot 64
execute at @s[tag=r0t,tag=mg2,tag=g,tag=lvl1,tag=lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:gold_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 64.. run function c2:mg2/level
execute at @s[tag=r0t,tag=i,tag=mg2,tag=lvl1,tag=lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 64.. run function c2:mg2/level

execute at @s[tag=i,tag=r0t,tag=i,tag=mg2,tag=lvl1,tag=lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 64.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=g,tag=r0t,tag=mg2,tag=lvl1,tag=lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 64.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=mg2,tag=lvl1,tag=lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s run playsound block.redstone_torch.burnout master @s ~ ~ ~ 100000 2

#Level 1-2
execute at @s[tag=r0t,tag=mg2,tag=i,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 32.. run clear @p[tag=STGu,scores={mg2=1..}] iron_ingot 32
execute at @s[tag=r0t,tag=mg2,tag=g,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:gold_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 32.. run clear @p[tag=STGu,scores={mg2=1..}] gold_ingot 32
execute at @s[tag=r0t,tag=mg2,tag=d,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:diamond"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 32.. run clear @p[tag=STGu,scores={mg2=1..}] diamond 32
execute at @s[tag=r0t,tag=mg2,tag=e,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:emerald"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 16.. run clear @p[tag=STGu,scores={mg2=1..}] emerald 16

execute at @s[tag=r0t,tag=i,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 16.. run function c2:mg2/level
execute at @s[tag=r0t,tag=g,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:gold_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 32.. run function c2:mg2/level
execute at @s[tag=r0t,tag=d,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:diamond"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 32.. run function c2:mg2/level
execute at @s[tag=r0t,tag=e,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:emerald"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 16.. run function c2:mg2/level

execute at @s[tag=r0t,tag=i,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 16.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=g,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 32.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=d,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 32.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=e,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 16.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=mg2,tag=lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s run playsound block.redstone_torch.burnout master @s ~ ~ ~ 100000 2


#Level 0-1
execute at @s[tag=r0t,tag=mg2,tag=i,tag=!lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 16.. run clear @p[tag=STGu,scores={mg2=1..}] iron_ingot 16
execute at @s[tag=r0t,tag=i,tag=mg2,tag=!lvl1,tag=!lvl2,tag=!lvl3] if data entity @p[scores={mg2=1..},tag=STGu] {SelectedItem:{id:"minecraft:iron_ingot"}} if score @p[scores={mg2=1..},tag=STGu] mg2.2 matches 16.. run function c2:mg2/level

execute at @s[tag=i,tag=r0t,tag=mg2,tag=!lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s unless score @s mg2.2 matches 16.. run title @s actionbar ["",{"text":"You do not have enough of that item on your","color":"gold"},{"text":" main hand","color":"yellow"},{"text":" to upgrade!","color":"gold"}]
execute at @s[tag=r0t,tag=mg2,tag=!lvl1,tag=!lvl2,tag=!lvl3] run execute as @a[scores={mg2=1..},tag=STGu] at @s run playsound block.redstone_torch.burnout master @s ~ ~ ~ 100000 2


#Completed
execute at @s[tag=r0t,tag=mg2,tag=lvl1,tag=lvl2,tag=lvl3] run execute as @p[scores={mg2=1..},tag=STGu] at @s if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @s ["",{"text":"Egg","color":"aqua","bold":true},{"text":"Wars","color":"red","bold":true},{"text":"> "},{"text":"The generator is at its best!","color":"green"}]
execute at @s[tag=r0t,tag=mg2,tag=lvl1,tag=lvl2,tag=lvl3] run execute as @p[scores={mg2=1..},tag=STGu] at @s run playsound block.redstone_torch.burnout master @s ~ ~ ~ 100000 2

scoreboard players reset @p[scores={mg2=1..},tag=STGu] mg2.2
scoreboard players reset @p[scores={mg2=1..},tag=STGu] b
tag @p[scores={mg2=1..}] remove STGu