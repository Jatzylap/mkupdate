#Classic Entry Slate
execute if entity @s[tag=C_] run execute as @e[tag=C_chabadu] at @s run summon shulker_bullet ~ ~1.2 ~ {Tags:[C_chabadub],Motion:[-0.05d,0.4d]}

#Default Entry Slate
execute if entity @s[tag=D_] run execute as @e[tag=D_chabadu] at @s run summon shulker_bullet ~ ~1.2 ~ {Tags:[D_chabadub],Motion:[0.0d,0.4d,0.05d]}

execute if entity @s[tag=C_] run tag @e[tag=C_chabadu] add c
execute if entity @s[tag=D_] run tag @e[tag=D_chabadu] add c
execute if entity @s[tag=C_] as @a[tag=C_] at @s run function clear:chat
execute if entity @s[tag=D_] as @a[tag=D_] at @s run function clear:chat 
execute if entity @s[tag=C_] run tag @a[tag=C_] remove C_B
execute if entity @s[tag=C_] run tag @a[tag=C_] remove C_C
execute if entity @s[tag=C_] run tag @a[tag=C_] remove C_D
execute if entity @s[tag=C_] run tag @a[tag=C_] remove C_P
execute if entity @s[tag=C_] run tag @a[tag=C_] remove C_X
execute if entity @s[tag=D_] run tag @a[tag=D_] remove D_B
execute if entity @s[tag=D_] run tag @a[tag=D_] remove D_C
execute if entity @s[tag=D_] run tag @a[tag=D_] remove D_D
execute if entity @s[tag=D_] run tag @a[tag=D_] remove D_P
execute if entity @s[tag=D_] run tag @a[tag=D_] remove D_X
execute if entity @s[tag=!C_,tag=!D_] run function clear:chat
function mk:lobby/gen