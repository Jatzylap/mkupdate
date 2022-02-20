tag @a remove mg19_3
kill @e[type=experience_orb,x=13,y=25,z=-40,dx=28,dy=43,dz=26]
kill @e[type=item,x=13,y=25,z=-40,dx=28,dy=43,dz=26]
execute as @e[type=!player,type=!area_effect_cloud,x=13,y=25,z=-40,dx=28,dy=43,dz=26] at @s run tag @s add dd_submerge
execute as @e[tag=dd_submerge] at @s run data merge entity @s {Invulnerable:1,NoAI:1,Silent:1}
clear @s #dd_items{mg:19}
setblock 14 57 -18 target
setblock 17 48 -17 redstone_torch
scoreboard players reset @e[name="M@K"] mg19
scoreboard players reset @e[name="M@K"] mg19.1

fill 25 30 -4 25 30 19 air replace redstone_block