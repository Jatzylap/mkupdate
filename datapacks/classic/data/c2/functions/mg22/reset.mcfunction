tag @e[tag=mg22_start] remove mg22_start
execute in sister_dimension run fill 193 0 -221 267 4 -138 air replace #td_blocks
execute in sister_dimension run fill 210 2 -167 210 5 -169 air replace spruce_fence
execute in sister_dimension run setblock 216 2 -200 deepslate_brick_wall
execute in sister_dimension run setblock 216 2 -148 deepslate_brick_wall
execute in sister_dimension run setblock 196 3 -168 lever[face=wall,facing=east]
tag @a remove SPmg22
tag @a remove TDviewers
tag @a remove mg22_adv
execute in sister_dimension run kill @e[tag=mg22]
execute in sister_dimension run kill @e[type=area_effect_cloud,x=193,y=0,z=-221,dx=74,dy=3,dz=83]
execute in sister_dimension run kill @e[type=experience_orb,x=193,y=0,z=-221,dx=74,dy=3,dz=83]
execute in sister_dimension run kill @e[type=#minecraft:impact_projectiles,x=193,y=0,z=-221,dx=74,dy=3,dz=83]
execute in sister_dimension run kill @e[type=item,x=193,y=0,z=-221,dx=74,dy=3,dz=83]
execute in sister_dimension run kill @e[type=marker,x=216,y=90,z=-168,distance=..2]
execute in sister_dimension run kill @e[tag=mg22_path]
clear @a[scores={mg22=1..}] cod_spawn_egg{mg:22}
execute in overworld run tp @a[scores={mg22=1..}] -51 5 47
gamemode adventure @a[scores={mg22=1..}]

scoreboard players reset @a[scores={mg22=1..}] mk
scoreboard players reset @a mg22
scoreboard players reset * mg22.1
scoreboard players reset * mg22.2
scoreboard players reset * mg22.3
scoreboard players reset * mg22.4
scoreboard players reset * mg22.5
scoreboard players reset * mg22.6
execute in overworld run data merge block -47 5 47 {Text3:'{"text":""}'}