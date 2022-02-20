execute as @a[scores={mg18=1..},gamemode=!spectator] at @s if entity @s[x=290,y=0,z=137,dx=-11,dy=101,dz=10] unless block ~ ~-1 ~ stone_brick_stairs unless block ~ ~-1 ~ stone_bricks unless block ~ ~-0.5 ~ stone_brick_slab unless block ~ ~-0.5 ~ stone_brick_stairs unless block ~ ~-1 ~ stone unless block ~ ~-1 ~ grass_block run particle entity_effect ~ ~ ~ 0.2 0 0.2 1 1 force @a[scores={mg18=1..}]
execute as @a[scores={mg18=1..},gamemode=!spectator] at @s unless block ~ ~-1 ~ air run particle totem_of_undying ^ ^ ^ 0.2 0.1 0.2 0.1 2

execute as @a[scores={mg18=1..},x=285,y=0,z=142,dy=-3] at @s run effect give @s slow_falling 2 1 true
spawnpoint @a[scores={mg18=1..},x=285,y=0,z=142,dy=-3] 300 145 180
execute as @a[scores={mg18=1..},x=285,y=-2,z=142,dy=-3] at @s run tp @s 300.5 147 180.0 90 0

execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s run summon firework_rocket 293 2.3 180 {LifeTime:8,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;15435844]}]}}}}
execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s run summon firework_rocket 293 2.3 179 {LifeTime:13,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4b,Trail:1b,Colors:[I;14602026]}]}}}}
execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s run summon firework_rocket 296 2.3 179 {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;4312372]}]}}}}
execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s run summon firework_rocket 296 2.3 180 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Trail:1b,Colors:[I;11743532]}]}}}}

execute as @a[scores={mg18=1..},tag=!Win,x=290,y=3,z=176,dx=9,dz=7] at @s run function c3:mg18/end
scoreboard players add @a[scores={mg18=1..},tag=Win] mg18 1
execute as @a[scores={mg18=1..},tag=Win,tag=!PG] at @s if score @s mg18 matches 58 run function mk:exit
execute as @a[scores={mg18=1..},tag=Win] at @s if score @s mg18 matches 58 run function c3:reset
execute if entity @a[scores={mg18=1..}] run schedule function c3:mg18/loop 1