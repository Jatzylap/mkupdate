#Black
execute unless entity @a[team=mg25-black,tag=RGUplayers] run particle entity_effect 284 1 6 1 1 1 0 35 normal @a[scores={mg25=1..}]
execute as @a[scores={mg25=1..},x=284,y=1,z=6,distance=..3,team=!mg25-black,tag=!SPmg25] at @s run title @s actionbar ["",{"text":"-- Chosen Black --","color":"gray","bold":true}]
execute as @a[scores={mg25=1..},x=284,y=1,z=6,distance=..3,team=!mg25-black,tag=!SPmg25] at @s unless entity @a[scores={mg25=1..},tag=RGUplayers] run team join mg25-black
execute if entity @a[scores={mg25=1..},team=mg25-black] if entity @a[scores={mg25=1..},team=mg25-white,x=283,y=2,z=17,dx=2,dy=18,dz=2] as @a[scores={mg25=1..},team=mg25-black,x=283,y=2,z=5,dx=2,dy=18,dz=2,tag=!SPmg25] at @s run tag @s add RGUplayers
execute if entity @a[scores={mg25=1..},team=mg25-black] if entity @a[scores={mg25=1..},team=mg25-white,x=283,y=2,z=17,dx=2,dy=18,dz=2] as @a[scores={mg25=1..},limit=1,x=283,y=2,z=5,dx=2,dy=18,dz=2,tag=!SPmg25] at @s unless entity @a[team=!,tag=RGUplayers,x=283,y=20,z=5,dx=2,dy=5,dz=2] run effect give @s levitation 1 15 true
execute as @a[scores={mg25=1..},x=283,y=20,z=5,dx=2,dy=5,dz=2,tag=!SPmg25] at @s run effect clear @s levitation
execute as @a[scores={mg25=1..},team=mg25-black,tag=!SPmg25] at @s if entity @s[y=20,dy=5] run tp @s 281 27 6

#White
execute unless entity @a[team=mg25-white,tag=RGUplayers] run particle effect 284 1 18 1 1 1 0 35 normal @a[scores={mg25=1..}]
execute as @a[scores={mg25=1..},x=284,y=1,z=18,distance=..3,team=!mg25-white,tag=!SPmg25] at @s run title @s actionbar ["",{"text":"-- Chosen White --","color":"gray","bold":true}]
execute as @a[scores={mg25=1..},x=284,y=1,z=18,distance=..3,team=!mg25-white,tag=!SPmg25] at @s unless entity @a[scores={mg25=1..},tag=RGUplayers] run team join mg25-white
execute if entity @a[scores={mg25=1..},team=mg25-black,x=283,y=2,z=5,dx=2,dy=18,dz=2] if entity @a[scores={mg25=1..},team=mg25-white] as @a[scores={mg25=1..},team=mg25-white,x=283,y=2,z=17,dx=2,dy=18,dz=2,tag=!SPmg25] at @s run tag @s add RGUplayers
execute if entity @a[scores={mg25=1..},team=mg25-black,x=283,y=2,z=5,dx=2,dy=18,dz=2] if entity @a[scores={mg25=1..},team=mg25-white] as @a[scores={mg25=1..},limit=1,x=283,y=2,z=17,dx=2,dy=18,dz=2,tag=!SPmg25] at @s unless entity @a[team=!,tag=RGUplayers,x=283,y=20,z=17,dx=2,dy=5,dz=2] run effect give @s levitation 1 15 true
execute as @a[scores={mg25=1..},x=283,y=20,z=17,dx=2,dy=5,dz=2,tag=!SPmg25] at @s run effect clear @s levitation
execute as @a[scores={mg25=1..},team=mg25-white,tag=!SPmg25] at @s if entity @s[y=20,dy=5] run tp @s 281 27 18
spawnpoint @a[scores={mg25=1..},team=mg25-black] 281 27 6
spawnpoint @a[scores={mg25=1..},team=mg25-white] 281 27 18
execute as @a[scores={lobby=1..}] at @s run tag @s remove RGUplayers
execute as @a[scores={2=1..}] at @s run tag @s remove RGUplayers
execute as @a[scores={mg25=1..},team=mg25-black,tag=RGUplayers] at @s if entity @s[y=25,dy=4] as @a[scores={mg25=1..},team=mg25-white,tag=RGUplayers] at @s if entity @s[y=25,dy=4] as @e[name="M@K",limit=1] at @s unless score @s mg25 matches 0.. run function c4:mg25/initiate