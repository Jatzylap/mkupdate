particle cloud ~ ~ ~ 0 0 0 0 1 force @s
execute if block ~ ~ ~ air unless entity @e[distance=..1.5,type=!armor_stand,type=!item_frame] positioned ^ ^ ^1 run function mk:w/e_shootloop2
execute positioned ~ ~-1.1 ~ positioned ^ ^ ^1 run kill @e[type=!player,type=!armor_stand,type=!item_frame,distance=..1]
execute as @p[scores={t=1..}] at @s run playsound entity.iron_golem.hurt master @a ~ ~ ~ 1 1.8