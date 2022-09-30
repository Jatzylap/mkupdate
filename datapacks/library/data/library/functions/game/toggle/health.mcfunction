playsound entity.item_frame.rotate_item master @s ~ ~ ~ 1
tag @e[tag=3vent,tag=focus,tag=entity] remove mgc_h
execute as @e[tag=3vent,tag=focus,tag=entity] at @s if score @s mgc-2 matches 0.. unless score @s mgc-2 matches 201.. run scoreboard players add @s mgc-2 1
execute as @e[tag=3vent,tag=focus,tag=entity] at @s unless score @s mgc-2 matches 0.. run scoreboard players set @s mgc-2 0
execute as @e[tag=3vent,tag=focus,tag=entity] at @s if score @s mgc-2 matches 0 run tag @s add mgc_h
execute as @e[tag=3vent,tag=focus,tag=entity] at @s if score @s mgc-2 matches 201.. run scoreboard players reset @s mgc-2