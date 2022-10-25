#Spectators
gamemode spectator @a[tag=SPmg24]
execute as @a[tag=SPmg24] at @s unless entity @s[x=784,y=2,z=-3,dx=155,dy=30,dz=127] run spreadplayers 862 61 2 60 under 9 false @s
team leave @a[scores={mg24=1..},tag=MMplayers,tag=SPmg24]
tag @a[scores={mg24=1..},tag=SPmg24] remove MMplayers

execute as @r[scores={mg24=1..},tag=MMplayers,tag=!st0red] at @s run function mk:store
tag @e[type=!player,type=!item,tag=!st0rage,x=784,y=2,z=-3,dx=155,dy=30,dz=127] add mg24
execute as @a[scores={mg24=1..,lobby=1..}] at @s run tag @s remove MMplayers
execute as @a[scores={mg24=1..,lobby=1..}] at @s run tag @s remove SPmg24
execute as @a[scores={mg24=1..,lobby=1..}] at @s run clear @s
execute as @a[scores={mg24=1..,lobby=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg24=1..,lobby=1..}] at @s run scoreboard players reset @s mg24
execute as @a[scores={mg24=1..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg24=1..,2=1..},tag=st0red] at @s run scoreboard players reset @s mg24

#Pre-Timer
scoreboard players add @e[name="M@K",limit=1] mg24.3 1
scoreboard players add @e[name="M@K",limit=1,tag=!mg24_start,scores={mg24.3=..200,mg24.5=0..}] mg24.4 1
scoreboard players remove @e[name="M@K",limit=1,scores={mg24.3=..200,mg24.4=20..,mg24.5=1..}] mg24.5 1
execute if entity @e[name="M@K",limit=1,scores={mg24.3=..240,mg24.5=1..,mg24.4=20..}] as @a[scores={mg24=1..}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 1000 0
execute if entity @e[name="M@K",limit=1,scores={mg24.3=..240,mg24.5=1..,mg24.4=20..}] as @a[scores={mg24=1..}] at @s run title @s title ["",{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg24.5"},"bold":true}]
scoreboard players set @e[name="M@K",limit=1,scores={mg24.4=20..}] mg24.4 0
execute store result bossbar mm_pink_gen value run scoreboard players get @e[name="M@K",limit=1] mg24.1
execute store result bossbar mm_green_gen value run scoreboard players get @e[name="M@K",limit=1] mg24.2
bossbar set mm_pink_gen players @a[scores={mg24=1..},x=786,y=3,z=55,dx=12,dy=4,dz=10]
bossbar set mm_green_gen players @a[scores={mg24=1..},x=925,y=3,z=55,dx=12,dy=4,dz=10]
#Timer
execute as @e[limit=1,name="M@K",scores={mg24.3=1200}] at @s run tellraw @a[scores={mg24=1..}] ["",{"text":"\n>","color":"gray"},{"text":" 4 minutes","color":"yellow"},{"text":" remaining...\n","color":"aqua"}]
execute as @e[limit=1,name="M@K",scores={mg24.3=2400}] at @s run tellraw @a[scores={mg24=1..}] ["",{"text":"\n>","color":"gray"},{"text":" 3 minutes","color":"yellow"},{"text":" remaining...\n","color":"aqua"}]
execute as @e[limit=1,name="M@K",scores={mg24.3=3600}] at @s run tellraw @a[scores={mg24=1..}] ["",{"text":"\n>","color":"gray"},{"text":" 2 minutes","color":"yellow"},{"text":" remaining...\n","color":"aqua"}]
execute as @e[limit=1,name="M@K",scores={mg24.3=4800}] at @s run tellraw @a[scores={mg24=1..}] ["",{"text":"\n>","color":"gray"},{"text":" 1 minute","color":"gold"},{"text":" remaining...\n","color":"aqua"}]
#Post-Timer
scoreboard players add @e[name="M@K",limit=1,scores={mg24.8=0..}] mg24.8 1

#Main
execute store result score #mg24-green mg24.7 run scoreboard players get @a[limit=1,team=mg24-green,tag=MMplayers] mg24.7
execute store result score #mg24-pink mg24.7 run scoreboard players get @a[limit=1,team=mg24-pink,tag=MMplayers] mg24.7
execute if score @e[name="M@K",limit=1] mg24.3 matches 190 run fill 798 3 63 798 3 57 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 200 run fill 798 4 63 798 4 57 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 210 run fill 798 5 63 798 5 57 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 220 run fill 798 6 63 798 6 57 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 230 run fill 798 7 63 798 7 57 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 190 run fill 925 3 57 925 3 63 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 200 run fill 925 4 57 925 4 63 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 210 run fill 925 5 57 925 5 63 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 220 run fill 925 6 57 925 6 63 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 230 run fill 925 7 57 925 7 63 air
execute if score @e[name="M@K",limit=1] mg24.3 matches 190 run playsound block.iron_door.close master @a[scores={mg24=1..}] 798 3 63 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 200 run playsound block.iron_door.close master @a[scores={mg24=1..}] 798 4 63 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 210 run playsound block.iron_door.close master @a[scores={mg24=1..}] 798 5 63 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 220 run playsound block.iron_door.close master @a[scores={mg24=1..}] 798 6 63 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 230 run playsound block.iron_door.close master @a[scores={mg24=1..}] 798 7 63 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 190 run playsound block.iron_door.close master @a[scores={mg24=1..}] 925 3 57 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 200 run playsound block.iron_door.close master @a[scores={mg24=1..}] 925 4 57 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 210 run playsound block.iron_door.close master @a[scores={mg24=1..}] 925 5 57 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 220 run playsound block.iron_door.close master @a[scores={mg24=1..}] 925 6 57 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 230 run playsound block.iron_door.close master @a[scores={mg24=1..}] 925 7 57 .8 2
execute if score @e[name="M@K",limit=1] mg24.3 matches 240 run function d2:mg24/post-init
stopsound @a[scores={mg24=1..}] * ambient.nether_wastes.additions

#easter eggs
execute unless block 894 5 71 target[power=13] unless block 894 5 71 target[power=14] unless block 894 5 71 target[power=15] run setblock 894 6 71 carved_pumpkin[facing=south]
execute if block 894 5 71 target[power=13] run setblock 894 6 71 jack_o_lantern[facing=south]
execute if block 894 5 71 target[power=14] run setblock 894 6 71 jack_o_lantern[facing=south]
execute if block 894 5 71 target[power=15] run setblock 894 6 71 jack_o_lantern[facing=south]
execute unless block 898 5 71 target[power=13] unless block 898 5 71 target[power=14] unless block 898 5 71 target[power=15] run setblock 898 6 71 carved_pumpkin[facing=south]
execute if block 898 5 71 target[power=13] run setblock 898 6 71 jack_o_lantern[facing=south]
execute if block 898 5 71 target[power=14] run setblock 898 6 71 jack_o_lantern[facing=south]
execute if block 898 5 71 target[power=15] run setblock 898 6 71 jack_o_lantern[facing=south]
execute unless block 898 5 50 target[power=13] unless block 898 5 50 target[power=14] unless block 898 5 50 target[power=15] run setblock 898 6 50 carved_pumpkin
execute if block 898 5 50 target[power=13] run setblock 898 6 50 jack_o_lantern
execute if block 898 5 50 target[power=14] run setblock 898 6 50 jack_o_lantern
execute if block 898 5 50 target[power=15] run setblock 898 6 50 jack_o_lantern
execute unless block 894 5 50 target[power=13] unless block 894 5 50 target[power=14] unless block 894 5 50 target[power=15] run setblock 894 6 50 carved_pumpkin
execute if block 894 5 50 target[power=13] run setblock 894 6 50 jack_o_lantern
execute if block 894 5 50 target[power=14] run setblock 894 6 50 jack_o_lantern
execute if block 894 5 50 target[power=15] run setblock 894 6 50 jack_o_lantern
execute as @a[scores={mg24=1..},tag=MMplayers] at @s if entity @s[x=912,y=4,z=30,dy=0.5] run effect give @s instant_damage 1 0 true
execute as @a[scores={mg24=1..},tag=MMplayers] at @s if entity @s[x=912,y=4,z=91,dy=0.5] run effect give @s instant_damage 1 0 true
execute unless block 829 5 50 target[power=13] unless block 829 5 50 target[power=14] unless block 829 5 50 target[power=15] run setblock 829 6 50 carved_pumpkin
execute if block 829 5 50 target[power=13] run setblock 829 6 50 jack_o_lantern
execute if block 829 5 50 target[power=14] run setblock 829 6 50 jack_o_lantern
execute if block 829 5 50 target[power=15] run setblock 829 6 50 jack_o_lantern
execute unless block 825 5 50 target[power=13] unless block 825 5 50 target[power=14] unless block 825 5 50 target[power=15] run setblock 825 6 50 carved_pumpkin
execute if block 825 5 50 target[power=13] run setblock 825 6 50 jack_o_lantern
execute if block 825 5 50 target[power=14] run setblock 825 6 50 jack_o_lantern
execute if block 825 5 50 target[power=15] run setblock 825 6 50 jack_o_lantern
execute unless block 825 5 71 target[power=13] unless block 825 5 71 target[power=14] unless block 825 5 71 target[power=15] run setblock 825 6 71 carved_pumpkin[facing=south]
execute if block 825 5 71 target[power=13] run setblock 825 6 71 jack_o_lantern[facing=south]
execute if block 825 5 71 target[power=14] run setblock 825 6 71 jack_o_lantern[facing=south]
execute if block 825 5 71 target[power=15] run setblock 825 6 71 jack_o_lantern[facing=south]
execute unless block 829 5 71 target[power=13] unless block 829 5 71 target[power=14] unless block 829 5 71 target[power=15] run setblock 829 6 71 carved_pumpkin[facing=south]
execute if block 829 5 71 target[power=13] run setblock 829 6 71 jack_o_lantern[facing=south]
execute if block 829 5 71 target[power=14] run setblock 829 6 71 jack_o_lantern[facing=south]
execute if block 829 5 71 target[power=15] run setblock 829 6 71 jack_o_lantern[facing=south]
execute as @a[scores={mg24=1..},tag=MMplayers] at @s if entity @s[x=811,y=4,z=30,dy=0.5] run effect give @s instant_damage 1 0 true
execute as @a[scores={mg24=1..},tag=MMplayers] at @s if entity @s[x=811,y=4,z=91,dy=0.5] run effect give @s instant_damage 1 0 true

#missiles
execute as @a[scores={mg24=1..,mg24.8=1..},tag=MMplayers,team=mg24-green] at @s run tag @e[type=firework_rocket,tag=!is_green,tag=!is_pink,distance=..1.5] add is_green
execute as @a[scores={mg24=1..,mg24.8=1..},tag=MMplayers,team=mg24-pink] at @s run tag @e[type=firework_rocket,tag=!is_green,tag=!is_pink,distance=..1.5] add is_pink
kill @e[type=item,nbt={Item:{tag:{MM:1}}}]
execute if score @e[name="M@K",limit=1] mg24.3 matches 240.. unless entity @a[tag=mg24_win] as @a[team=mg24-pink,tag=MMplayers] at @s unless data entity @s Inventory[{id:"minecraft:crossbow",tag:{MM:1}}] run give @s crossbow{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Missile Launcher ","color":"light_purple","italic":false,"bold":true,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true,"bold":false}]}'},Enchantments:[{id:quick_charge,lvl:4}],Unbreakable:1,HideFlags:55}
execute if score @e[name="M@K",limit=1] mg24.3 matches 240.. unless entity @a[tag=mg24_win] as @a[team=mg24-green,tag=MMplayers] at @s unless data entity @s Inventory[{id:"minecraft:crossbow",tag:{MM:1}}] run give @s crossbow{MM:1,display:{Name:'{"text":"@","color":"gold","obfuscated":true,"extra":[{"text":" Missile Launcher ","color":"green","italic":false,"bold":true,"obfuscated":false},{"text":"@","color":"gold","obfuscated":true,"bold":false}]}'},Enchantments:[{id:quick_charge,lvl:4}],Unbreakable:1,HideFlags:55}
scoreboard players reset @a mg24.8

#killer missiles
execute as @e[tag=mg24,tag=killer_missile] at @s unless entity @s[x=925,y=3,z=55,dx=12,dy=25,dz=10] run tag @s remove mg24_green
execute as @e[tag=mg24,tag=killer_missile] at @s unless entity @s[x=786,y=3,z=55,dx=12,dy=25,dz=10] run tag @s remove mg24_pink
tag @e[type=firework_rocket,x=784,y=2,z=-3,dx=155,dy=30,dz=127,nbt={ShotAtAngle:1b,FireworksItem:{tag:{Fireworks:{KillerMissile:1}}}}] add killer_missile 
tag @e[type=firework_rocket,x=925,y=3,z=55,dx=12,dy=4,dz=10,nbt={ShotAtAngle:1b}] add mg24_green
tag @e[type=firework_rocket,x=786,y=3,z=55,dx=12,dy=4,dz=10,nbt={ShotAtAngle:1b}] add mg24_pink
execute as @e[tag=mg24,tag=killer_missile] at @s run particle flame ^ ^ ^-0.2 0 0 0 0 1 force @a[scores={mg24=1..}]
execute as @e[tag=mg24,tag=killer_missile] at @s unless block ~ ~-1 ~ air run function d2:mg24/explode
execute as @e[tag=mg24,tag=killer_missile] at @s unless block ^ ^ ^0.4 air run function d2:mg24/explode
execute as @e[tag=mg24,tag=killer_missile,tag=is_green] at @s if entity @a[distance=..6.5,team=mg24-pink,tag=MMplayers] run function d2:mg24/explode
execute as @e[tag=mg24,tag=killer_missile,tag=is_pink] at @s if entity @a[distance=..6.5,team=mg24-green,tag=MMplayers] run function d2:mg24/explode
execute as @e[tag=mg24,tag=killer_missile] at @s store result score @s mg24.4 run data get entity @s LifeTime
execute as @e[tag=mg24,tag=killer_missile] at @s store result score @s mg24.5 run data get entity @s Life
execute as @e[tag=mg24,tag=killer_missile] at @s if score @s mg24.5 = @s mg24.4 run function d2:mg24/explode

# enter pink
execute if block 785 4 60 target[power=1] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=2] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=3] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=4] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=5] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=6] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=7] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=8] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=9] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 1
execute if block 785 4 60 target[power=10] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 2
execute if block 785 4 60 target[power=11] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 2
execute if block 785 4 60 target[power=12] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 2
execute if block 785 4 60 target[power=13] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 3
execute if block 785 4 60 target[power=14] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 3
execute if block 785 4 60 target[power=15] run scoreboard players remove @e[name="M@K",limit=1] mg24.1 3

# enter green
execute if block 938 4 60 target[power=1] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=2] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=3] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=4] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=5] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=6] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=7] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=8] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=9] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 1
execute if block 938 4 60 target[power=10] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 2
execute if block 938 4 60 target[power=11] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 2
execute if block 938 4 60 target[power=12] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 2
execute if block 938 4 60 target[power=13] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 3
execute if block 938 4 60 target[power=14] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 3
execute if block 938 4 60 target[power=15] run scoreboard players remove @e[name="M@K",limit=1] mg24.2 3

#generators
execute if score @e[name="M@K",limit=1] mg24.1 matches ..-1 run scoreboard players set @e[name="M@K",limit=1] mg24.1 0
execute if score @e[name="M@K",limit=1] mg24.2 matches ..-1 run scoreboard players set @e[name="M@K",limit=1] mg24.2 0
execute if block 791 3 60 polished_blackstone_pressure_plate if score @e[name="M@K",limit=1] mg24.1 matches 0 run function d2:mg24/break_pink
execute if block 931 3 60 polished_blackstone_pressure_plate if score @e[name="M@K",limit=1] mg24.2 matches 0 run function d2:mg24/break_green
execute if score @e[name="M@K",limit=1] mg24.1 matches 0 run scoreboard players add @e[name="M@K",limit=1] mg24.1 1
execute if score @e[name="M@K",limit=1] mg24.2 matches 0 run scoreboard players add @e[name="M@K",limit=1] mg24.2 1

#death
execute as @a[scores={mg24=1..,mg24.6=1..},tag=MMplayers] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0
execute as @a[scores={mg24=1..},tag=MMplayers,nbt={DeathTime:1s}] at @s unless entity @a[tag=mg24_win] run function d2:mg24/death

#counter
execute as @a[scores={mg24=1..},tag=MMplayers,team=mg24-green] at @s if score @e[name="M@K",limit=1] mg24.3 matches 240..6150 run title @s actionbar ["",{"text":"Player Kills: ","bold":true},{"score":{"name":"@s","objective":"mg24.7"},"color":"green","bold":true}]
execute as @a[scores={mg24=1..},tag=MMplayers,team=mg24-pink] at @s if score @e[name="M@K",limit=1] mg24.3 matches 240..6150 run title @s actionbar ["",{"text":"Player Kills: ","bold":true},{"score":{"name":"@s","objective":"mg24.7"},"color":"light_purple","bold":true}]

#end
execute unless entity @a[tag=mg24_win] as @a[team=mg24-pink,tag=MMplayers] at @s unless entity @a[team=mg24-green,tag=MMplayers] run function d2:mg24/end2
execute unless entity @a[tag=mg24_win] as @a[team=mg24-green,tag=MMplayers] at @s unless entity @a[team=mg24-pink,tag=MMplayers] run function d2:mg24/end2
execute as @e[name="M@K",limit=1] at @s if score @s mg24.3 matches 6150 run function d2:mg24/end

#draw title anim
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 0 run tag @a[scores={mg24=1..},tag=MMplayers,team=!] add mg24_win
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 14 run playsound ui.toast.challenge_complete master @a[scores={mg24=1..}] ~ ~ ~ 1000 1.2
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 0 run title @a[scores={mg24=1..}] times 0 20 36
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 0 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"         AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 2 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"        AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 4 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"       AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 6 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"      AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 8 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"    AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 10 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"   AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 12 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"  AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 14 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":" AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 16 run title @a[scores={mg24=1..}] title ["",{"text":"-","color":"gold","bold":true},{"text":" DR","color":"light_purple"},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 21 run title @a[scores={mg24=1..}] title ["",{"text":"- D","color":"gold","bold":true},{"text":"R","color":"light_purple"},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 23 run title @a[scores={mg24=1..}] title ["",{"text":"- DR","color":"gold","bold":true},{"text":"AW","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 25 run title @a[scores={mg24=1..}] title ["",{"text":"- DRA","color":"gold","bold":true},{"text":"W","color":"green"},{"text":" -","color":"gold"}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 26 run title @a[scores={mg24=1..}] title ["",{"text":"- DRAW -","color":"gold","bold":true}]
execute as @e[name="M@K",limit=1] at @s if score @s mg24.8 matches 20 run title @a[scores={mg24=1..}] subtitle ["",{"score":{"name":"#mg24-pink","objective":"mg24.7"},"color":"light_purple","bold":true},{"text":" = ","color":"gold","bold":true},{"score":{"name":"#mg24-green","objective":"mg24.7"},"color":"green","bold":true}]