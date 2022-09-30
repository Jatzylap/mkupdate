execute as @a[scores={mg18=1..},gamemode=!spectator] at @s unless block ~ ~-1 ~ air if entity @s[x=290,y=0,z=137,dx=-11,dy=101,dz=10] unless block ~ ~-1 ~ stone_brick_stairs unless block ~ ~-1 ~ stone_bricks unless block ~ ~-0.5 ~ stone_brick_slab unless block ~ ~-0.5 ~ stone_brick_stairs unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ grass_block run particle totem_of_undying ^ ^ ^ 0.2 0.1 0.2 0.1 2 force @a[scores={mg18=1..}]
execute as @a[scores={mg18=1..,j=1..},gamemode=!spectator] at @s if block ~ ~-1 ~ air if entity @s[x=290,y=0,z=137,dx=-11,dy=101,dz=10] unless block ~ ~-0.5 ~ stone_brick_slab unless block ~ ~-0.5 ~ stone_brick_stairs run scoreboard players add @s mg18 1
execute as @a[scores={mg18=60..,j=20..}] at @s run effect give @s jump_boost 3 2
execute as @a[scores={mg18=60..,j=20..}] at @s run playsound block.bell.resonate master @s ~ ~ ~ 1 2
execute as @a[scores={mg18=60..,j=20..}] at @s run effect give @s speed 1 0 true
execute as @a[scores={mg18=60..,j=20..}] at @s run scoreboard players set @s mg18 1
execute as @a[scores={mg18=1..,j=20..}] at @s run scoreboard players reset @s j
execute as @a[scores={mg18=1..},gamemode=!spectator] at @s unless block ~ ~-1 ~ air run particle entity_effect ~ ~ ~ 0.2 0 0.2 1 1
spawnpoint @a[scores={mg18=1..},x=285,y=0,z=142,dy=-3] 300 145 180
execute as @a[scores={mg18=1..},x=285,y=0,z=142,dy=-2] at @s run effect give @s blindness 2 9 true
execute as @a[scores={mg18=1..},x=285,y=-4,z=142,dy=-3] at @s run effect give @s regeneration 1 255 true
execute as @a[scores={mg18=1..},x=285,y=-4,z=142,dy=-3] at @s run tp @s 299 159 180 90 90
scoreboard players reset @a[scores={mg18=1..},x=299,y=146,z=180,distance=..3] d
execute as @a[scores={mg18=1..},x=285,y=-2,z=142,dy=-3] at @s run scoreboard players set @s mg18 1
execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s unless score @s d matches 1.. run function c3:mg18/end
scoreboard players add @a[scores={mg18=1..},tag=Win] mg18 1
execute as @a[scores={mg18=1..},tag=Win,tag=!PG] at @s if score @s mg18 matches 98 run function mk:exit
execute as @a[scores={mg18=1..},tag=Win] at @s if score @s mg18 matches 98 run function c3:reset
execute if entity @a[scores={mg18=1..}] run schedule function c3:mg18/loop 1