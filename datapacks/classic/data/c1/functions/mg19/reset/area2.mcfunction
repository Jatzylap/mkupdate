tag @a remove mg19_2
kill @e[type=experience_orb,x=-12,y=25,z=-40,dx=25,dy=43,dz=26]
kill @e[type=item,x=-12,y=25,z=-40,dx=25,dy=43,dz=26]
execute as @e[type=!player,type=!area_effect_cloud,x=-12,y=25,z=-40,dx=25,dy=43,dz=26] at @s run tag @s add dd_submerge
execute as @e[tag=dd_submerge] at @s run data merge entity @s {Invulnerable:1,NoAI:1,Silent:1}
clear @s #dd_items{mg:19}
setblock 9 57 -15 target
setblock 10 47 -19 redstone_torch
scoreboard players reset @e[name="M@K"] mg19
scoreboard players reset @e[name="M@K"] mg19.1

fill 31 30 -4 33 30 19 air replace redstone_block