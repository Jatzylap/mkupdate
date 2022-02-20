#IF AIR --> CONTINUE PATH
#GOES THROUGH --> A.S, ITEM or ITEM FRAME (UNLESS OTHER ENTITY ENCOUNTERED --> STOPS)

#particle cloud ~ ~ ~ 0 0 0 0 1 force @s
execute if block ~ ~ ~ air unless entity @e[distance=..1,type=!item,type=!armor_stand,type=!item_frame] positioned ^ ^ ^1 run function mk:w/e_ray
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:black_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ black_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:brown_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ brown_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:white_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ white_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:light_blue_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ light_blue_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:blue_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ blue_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:cyan_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ cyan_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:red_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ red_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:lime_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ lime_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:green_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ green_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:pink_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ pink_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:magenta_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ magenta_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:purple_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ purple_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:light_gray_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ light_gray_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:gray_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ gray_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:yellow_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ yellow_concrete replace #panel_blocks
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:orange_concrete"}] positioned ~ ~ ~ positioned ^ ^ ^1 run fill ~ ~ ~ ~ ~ ~ orange_concrete replace #panel_blocks

execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{fill:1,tool:1b}}},scores={t=1..}] run playsound block.grass.step master @s ~ ~ ~ 1 2