#Main
execute unless entity @a[scores={mg4=1},dx=27,dy=6,dz=31,x=67,y=3,z=-32] run setblock -326 2 -49 redstone_block
execute as @a[scores={mg4=1..,mg4.1=1..}] at @s run scoreboard players set @s mg4.3 1
bossbar set fd_progress players @a[scores={mg4=1..}]
execute as @a[scores={mg4=1..,mg4.3=1..}] at @s run function c1:mg4/death
execute as @e[tag=firedodge,nbt={Small:1b}] at @s if block ~ ~1 ~ redstone_block run setblock ~ ~1 ~ cobblestone
tag @e[type=small_fireball,dx=27,dy=4,dz=31,x=67,y=3,z=-32] add mg4