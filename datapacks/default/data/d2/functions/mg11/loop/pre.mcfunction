execute as @a[x=-98,y=7,z=-185,dy=3,dz=1,scores={mg11=1..}] at @s unless entity @s[tag=LCplayers] if block ~ ~-1 ~ redstone_lamp run fill ~ ~ ~ ~ ~-1 ~ redstone_lamp[lit=true] replace redstone_lamp[lit=false]
execute as @a[scores={mg11=1..}] at @s unless block ~ ~-1 ~ redstone_lamp run setblock -98 7 -185 redstone_lamp
execute as @a[scores={mg11=1..},tag=!LCplayers] at @s if block ~ ~-1 ~ redstone_lamp run setblock -320 4 -96 redstone_block keep
execute as @a[x=-100,y=7,z=-185,dy=3,dz=1,scores={mg11=1..}] at @s unless entity @s[tag=LCplayers] if block ~ ~-1 ~ redstone_lamp run fill ~ ~ ~ ~ ~-1 ~ redstone_lamp[lit=true] replace redstone_lamp[lit=false]
execute as @a[scores={mg11=1..}] at @s unless block ~ ~-1 ~ redstone_lamp run setblock -100 7 -185 redstone_lamp
execute as @a[scores={mg11=1..},tag=!LCplayers] at @s if block ~ ~-1 ~ redstone_lamp run setblock -320 4 -96 redstone_block keep
execute as @a[x=-102,y=7,z=-185,dy=3,dz=1,scores={mg11=1..}] at @s unless entity @s[tag=LCplayers] if block ~ ~-1 ~ redstone_lamp run fill ~ ~ ~ ~ ~-1 ~ redstone_lamp[lit=true] replace redstone_lamp[lit=false]
execute as @a[scores={mg11=1..}] at @s unless block ~ ~-1 ~ redstone_lamp run setblock -102 7 -185 redstone_lamp
execute as @a[scores={mg11=1..},tag=!LCplayers] at @s if block ~ ~-1 ~ redstone_lamp run setblock -320 4 -96 redstone_block keep
execute as @a[scores={mg11=1..}] at @s if block -98 7 -185 redstone_lamp[lit=true] if block -100 7 -185 redstone_lamp[lit=true] run setblock -320 4 -95 redstone_block keep
execute as @a[scores={mg11=1..}] at @s if block -98 7 -185 redstone_lamp[lit=true] if block -102 7 -185 redstone_lamp[lit=true] run setblock -320 4 -95 redstone_block keep
execute as @a[scores={mg11=1..}] at @s if block -100 7 -185 redstone_lamp[lit=true] if block -102 7 -185 redstone_lamp[lit=true] run setblock -320 4 -95 redstone_block keep