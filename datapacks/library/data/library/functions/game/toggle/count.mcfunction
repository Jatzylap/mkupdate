playsound entity.item_frame.rotate_item master @s ~ ~ ~ 1
execute as @e[tag=3vent,tag=focus,tag=entity] at @s unless score @s mgc-1.8 matches 65.. run scoreboard players add @s mgc-1.8 1
execute as @e[tag=3vent,tag=focus,tag=entity] at @s if score @s mgc-1.8 matches 65.. run scoreboard players set @s mgc-1.8 1