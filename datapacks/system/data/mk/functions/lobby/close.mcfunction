#Library Entry Slate
execute unless entity @s[tag=D_chabadu] unless entity @s[tag=C_chabadu] run summon shulker_bullet ~ ~1.2 ~ {Tags:[L_chabadub],Motion:[0.05d,0.4d]}
tag @s remove 0
data merge entity @s {CustomNameVisible:0,CustomName:''}

#Classic Entry Slate
execute if entity @e[tag=c0,tag=left] run fill -38 6 -13 -46 6 -3 spruce_wood[axis=y] replace air
execute if entity @e[tag=c0,tag=right] run fill -38 6 -13 -46 6 -3 spruce_wood[axis=y] replace air
execute if entity @e[tag=c0,tag=left] run scoreboard players reset @e[tag=C0] 4.1
execute if entity @e[tag=c0,tag=right] run scoreboard players reset @e[tag=C0] 4.1
execute if entity @e[tag=c0,tag=left] run kill @e[tag=c_spl4sh]
execute if entity @e[tag=c0,tag=right] run kill @e[tag=c_spl4sh]
execute unless data entity @e[limit=1,tag=CL0,x=-33,y=4,z=-8,dy=1] Item as @p[tag=C_] run function mk:lobby/gen

#Default Entry Slate
execute if entity @e[tag=d0,tag=left] run fill -107 6 -83 -118 6 -75 spruce_wood[axis=x] replace air
execute if entity @e[tag=d0,tag=right] run fill -107 6 -83 -118 6 -75 spruce_wood[axis=x] replace air
execute if entity @e[tag=d0,tag=left] run scoreboard players reset @e[tag=D0] 4.1
execute if entity @e[tag=d0,tag=right] run scoreboard players reset @e[tag=D0] 4.1
execute if entity @e[tag=d0,tag=left] run kill @e[tag=d_spl4sh]
execute if entity @e[tag=d0,tag=right] run kill @e[tag=d_spl4sh]
execute unless data entity @e[limit=1,tag=DL0,x=-113,y=4,z=-88,dy=1] Item as @p[tag=D_] run function mk:lobby/gen

execute if entity @e[tag=c0,tag=left] run tag @s remove c
execute if entity @e[tag=c0,tag=right] run tag @s remove c
execute if entity @e[tag=d0,tag=left] run tag @s remove c
execute if entity @e[tag=d0,tag=right] run tag @s remove c