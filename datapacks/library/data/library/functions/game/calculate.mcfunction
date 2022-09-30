scoreboard players set @s mgc-1.2 20
scoreboard players operation @s mgc-1.2 *= @s mgc-1.3
execute as @e[tag=3vent,tag=start] at @s run scoreboard players operation @s mgc-1.6 = @e[name="M@K",limit=1] mgc-1.4