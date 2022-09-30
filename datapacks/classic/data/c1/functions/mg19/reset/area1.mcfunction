tag @a remove mg19_1
kill @e[type=experience_orb,x=-13,y=25,z=-14,dx=26,dy=43,dz=24]
kill @e[type=item,x=-13,y=25,z=-14,dx=26,dy=43,dz=24]
execute as @e[type=!player,type=!area_effect_cloud,x=-13,y=25,z=-14,dx=26,dy=43,dz=24] at @s run tag @s add dd_submerge
execute as @e[tag=dd_submerge] at @s run data merge entity @s {Invulnerable:1,NoAI:1,Silent:1}
clear @s #dd_items{mg:19}
setblock 12 55 -10 target
setblock 10 47 -13 redstone_torch
scoreboard players reset @e[name="M@K"] mg19
scoreboard players reset @e[name="M@K"] mg19.1

fill 37 30 -4 37 30 19 air replace redstone_block