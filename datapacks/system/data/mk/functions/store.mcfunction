# FUNCTION PERFORMED BY '@r[sort=arbitrary,tag=!st0red]' RIGHT BEFORE TP FROM WAITING AREA
# effect give @s slowness 1 9 true
# effect give @s slow_falling 1 9 true
# effect give @s jump_boost 1 145 true
execute unless score @s 5 matches 0 run summon armor_stand ~ ~ ~ {Marker:1,Invulnerable:1b,Invisible:1,Small:1,Tags:[st0rage],ArmorItems:[{id:chest,Count:1b,tag:{BlockEntityTag:{Items:[]}}},{id:chest,Count:1b,tag:{BlockEntityTag:{Items:[]}}}]}
execute store result score @s 5 run data get entity @s UUID[0]
execute store result score @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[0].tag.BlockEntityTag.Items[1].Slot unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[1].Slot run scoreboard players get @s 5
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[0].tag.BlockEntityTag.Items[1].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[0].tag.BlockEntityTag.Items append from entity @s Inventory[{}]
execute run item replace entity @s hotbar.0 with air
execute run item replace entity @s hotbar.1 with air
execute run item replace entity @s hotbar.2 with air
execute run item replace entity @s hotbar.3 with air
execute run item replace entity @s hotbar.4 with air
execute run item replace entity @s hotbar.5 with air
execute run item replace entity @s hotbar.6 with air
execute run item replace entity @s hotbar.7 with air
execute run item replace entity @s hotbar.8 with air
execute run item replace entity @s inventory.0 with air
execute run item replace entity @s inventory.1 with air
execute run item replace entity @s inventory.2 with air
execute run item replace entity @s inventory.3 with air
execute run item replace entity @s inventory.4 with air
execute run item replace entity @s inventory.5 with air
execute run item replace entity @s inventory.6 with air
execute run item replace entity @s inventory.7 with air
execute run item replace entity @s inventory.8 with air
execute run item replace entity @s inventory.9 with air
execute run item replace entity @s inventory.10 with air
execute run item replace entity @s inventory.11 with air
execute run item replace entity @s inventory.12 with air
execute run item replace entity @s inventory.13 with air
execute run item replace entity @s inventory.14 with air
execute run item replace entity @s inventory.15 with air
execute run item replace entity @s inventory.16 with air
execute run item replace entity @s inventory.17 with air
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[0].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[0]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[1].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[1]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[2].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[2]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[3].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[3]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[4].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[4]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[5].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[5]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[6].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[6]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[7].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[7]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[8].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[8]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[9].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[9]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[10].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[10]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[11].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[11]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[12].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[12]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 unless data entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items[13].Slot run data modify entity @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] ArmorItems[1].tag.BlockEntityTag.Items append from entity @s Inventory[13]
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[0].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[0].Slot set value 0b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[1].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[1].Slot set value 1b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[2].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[2].Slot set value 2b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[3].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[3].Slot set value 3b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[4].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[4].Slot set value 4b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[5].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[5].Slot set value 5b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[6].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[6].Slot set value 6b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[7].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[7].Slot set value 7b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[8].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[8].Slot set value 8b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[9].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[9].Slot set value 9b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[10].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[10].Slot set value 10b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[11].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[11].Slot set value 11b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[12].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[12].Slot set value 12b
execute if score @s 5 = @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] 5 as @e[limit=1,tag=st0rage,sort=nearest,tag=!st0red] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[13].Slot run data modify entity @s ArmorItems[1].tag.BlockEntityTag.Items[13].Slot set value 13b
clear @s
execute as @e[tag=st0rage,tag=!st0red] at @s in overworld run tp @s -313 9 -8
tag @e[tag=st0rage,tag=!st0red] add st0red
tag @s add st0red