#EXECUTED BY THE CHOSEN PAWN
tag @s remove mg25_c
scoreboard players set @p[tag=RGUturn] mg25.1 0
execute if block 301 5 0 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if block 301 5 8 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if block 301 5 16 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute if block 301 5 24 white_concrete run scoreboard players add @p[tag=RGUturn] mg25.1 1
execute store result score @e[name="M@K",limit=1] mg25.1 run scoreboard players get @p[tag=RGUturn] mg25.1
execute if entity @p[tag=RGUturn,scores={mg25.1=0}] run tag @s add static
execute at @s[tag=!static,team=mg25-white] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace white_shulker_box
execute at @s[tag=!static,team=mg25-black] run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace black_shulker_box
execute at @s[tag=mg25_wp1] unless entity @e[tag=mg25,tag=old_wp1] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp1]}
execute at @s[tag=mg25_wp2] unless entity @e[tag=mg25,tag=old_wp2] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp2]}
execute at @s[tag=mg25_wp3] unless entity @e[tag=mg25,tag=old_wp3] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp3]}
execute at @s[tag=mg25_wp4] unless entity @e[tag=mg25,tag=old_wp4] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp4]}
execute at @s[tag=mg25_wp5] unless entity @e[tag=mg25,tag=old_wp5] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp5]}
execute at @s[tag=mg25_wp6] unless entity @e[tag=mg25,tag=old_wp6] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp6]}
execute at @s[tag=mg25_wp7] unless entity @e[tag=mg25,tag=old_wp7] run summon marker ~ ~ ~ {Tags:[mg25,old,old_wp7]}
execute at @s[tag=mg25_bp1] unless entity @e[tag=mg25,tag=old_bp1] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp1]}
execute at @s[tag=mg25_bp2] unless entity @e[tag=mg25,tag=old_bp2] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp2]}
execute at @s[tag=mg25_bp3] unless entity @e[tag=mg25,tag=old_bp3] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp3]}
execute at @s[tag=mg25_bp4] unless entity @e[tag=mg25,tag=old_bp4] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp4]}
execute at @s[tag=mg25_bp5] unless entity @e[tag=mg25,tag=old_bp5] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp5]}
execute at @s[tag=mg25_bp6] unless entity @e[tag=mg25,tag=old_bp6] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp6]}
execute at @s[tag=mg25_bp7] unless entity @e[tag=mg25,tag=old_bp7] run summon marker ~ ~ ~ {Tags:[mg25,old,old_bp7]}
execute at @s[tag=static] run title @a[scores={mg25=1..}] title [""]
execute at @s[tag=static] run title @a[scores={mg25=1..}] subtitle ["",{"selector":"@p[tag=RGUturn]"},{"text":" did not move..."}]
tag @s add moved