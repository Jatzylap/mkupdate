#Spectators
gamemode spectator @a[tag=SPmg1]
execute as @a[tag=SPmg1,x=13,y=3,z=-46,distance=20..] at @s run tp -51 5 47
execute as @a[tag=SPmg1,x=13,y=3,z=-46,distance=20..] at @s run gamemode adventure
execute as @a[tag=SPmg1,x=13,y=3,z=-46,distance=20..] at @s run scoreboard players reset @s mg1
execute as @a[tag=SPmg1,x=13,y=3,z=-46,distance=20..] at @s run tag @s remove SPmg1

#Main
execute as @e[type=zombie_villager,x=-19,y=1,z=-67,dx=51,dy=3,dz=41] at @s run tag @s add TeamZombie
execute store result score #VillagersLeft mg1.1 if entity @e[tag=TeamVillager]
execute as @a[scores={mg1=1..}] at @s if entity @e[tag=TeamVillager,tag=Survived] run title @s actionbar ["",{"text":"- ","color":"green","bold":true},{"score":{"name":"@s","objective":"mg1.2"},"color":"yellow","bold":true},{"text":" Gold","color":"gold","bold":true},{"text":"        -        "},{"score":{"name":"#VillagersLeft","objective":"mg1.1"},"color":"yellow","bold":true},{"text":"/8","color":"green"},{"text":" Villagers ","color":"red","bold":true},{"text":" - ","color":"green","bold":true}]
execute unless entity @a[scores={mg1=1..}] run kill @e[tag=TeamVillager]
execute as @a[scores={mg1=1..,mg1.4=1..},nbt={Inventory:[{id:"minecraft:gold_ingot",tag:{DTV:1b}}]},limit=1] at @s run scoreboard players add @s mg1.2 1
playsound entity.arrow.hit_player master @a[scores={mg1=1..,mg1.4=1..}] ~ ~ ~ 100000 2
clear @a[scores={mg1=1..}] gold_ingot{DTV:1b}
scoreboard players reset @a[scores={mg1=1..,mg1.4=1..}] mg1.4
bossbar set dtv_progress players @a[scores={mg1=1..}]
execute as @e[type=item,x=-19,y=1,z=-67,dx=51,dy=3,dz=41] at @s run data merge entity @s {DTV:1b}
execute as @e[type=item,x=28,y=1,z=-81,dx=19,dy=3,dz=17] at @s run data merge entity @s {DTV:1b}

#door-breaking mechanics
execute as @e[tag=TeamZombie] at @s if block ^ ^1 ^1 oak_door run scoreboard players add @s mg1.5 1
execute as @e[tag=TeamZombie] at @s unless block ^ ^1 ^1 oak_door run scoreboard players reset @s mg1.5
execute as @e[tag=TeamZombie,scores={mg1.5=10..11}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=20..21}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=1..}] at @s if entity @e[tag=TeamZombie,scores={mg1.5=20..21}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie,scores={mg1.5=30..31}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=40..41}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=1..}] at @s if entity @e[tag=TeamZombie,scores={mg1.5=40..41}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie,scores={mg1.5=50..51}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=60..61}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=1..}] at @s if entity @e[tag=TeamZombie,scores={mg1.5=60..61}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie,scores={mg1.5=70..71}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=80..81}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=1..}] at @s if entity @e[tag=TeamZombie,scores={mg1.5=80..81}] run particle block oak_door ^ ^1.5 ^1 0 0 0 1 10 force @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie,scores={mg1.5=90..91}] at @s run playsound entity.zombie.attack_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=100..101}] at @s run playsound entity.zombie.break_wooden_door master @a ~ ~ ~ 1
execute as @e[tag=TeamZombie,scores={mg1.5=100..}] at @s run particle block oak_door ^ ^1.5 ^1 0 0.5 0 1 50 force @a[scores={mg1=1..}]
execute as @e[tag=TeamZombie,scores={mg1.5=100..101}] at @s run fill ~ ~ ~ ^ ^1 ^1 air replace oak_door