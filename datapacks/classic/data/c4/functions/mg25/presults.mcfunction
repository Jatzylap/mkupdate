execute if score @p[tag=RGUturn] mg25.1 < @r[tag=RGUplayers,tag=!RGUturn] mg25.1 as @r[tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/turn
execute if score @p[tag=RGUturn] mg25.1 > @r[tag=RGUplayers,tag=!RGUturn] mg25.1 as @p[tag=RGUturn] at @s run function c4:mg25/turn
execute if score @p[tag=RGUturn] mg25.1 = @r[tag=RGUplayers,tag=!RGUturn] mg25.1 as @r[tag=RGUplayers,tag=!RGUturn] at @s run scoreboard players set @e[name="M@K",limit=1] mg25 179
execute if score @p[tag=RGUturn] mg25.1 = @r[tag=RGUplayers,tag=!RGUturn] mg25.1 as @r[tag=RGUplayers,tag=!RGUturn] at @s run tag @a remove RGUturn
execute if entity @p[tag=RGUturn,scores={mg25.1=0..}] as @p[tag=RGUplayers,tag=!RGUturn] at @s unless score @s mg25.1 matches 0.. run scoreboard players set @e[name="M@K",limit=1] mg25 210
execute if entity @p[tag=RGUturn,scores={mg25.1=0..}] as @p[tag=RGUplayers,tag=!RGUturn] at @s unless score @s mg25.1 matches 0.. run function c4:mg25/pre-turn