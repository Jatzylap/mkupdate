execute as @a[tag=mk.07,scores={interact=1..}] at @s if entity @a[scores={mg2=1..},team=!,tag=STGplayers] run tag @s add SPmg2
execute as @a[tag=mk.07,scores={interact=1..}] at @s if entity @a[scores={mg2=1..},team=!,tag=STGplayers] run function clear:chat
execute as @a[scores={mg2=1..},tag=!SPmg2,tag=!STGplayers] at @s unless entity @s[x=99,y=2,z=-75,dx=10,dy=4,dz=13] run scoreboard players reset @s mg2 
execute as @a[scores={mg2=1..},tag=!SPmg2,tag=!STGplayers] at @s unless entity @s[x=99,y=2,z=-75,dx=10,dy=4,dz=13] run scoreboard players reset @s mg2.1
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg2-ran1
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg2-ran2
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg2-ran3
execute as @a[scores={2=1..}] at @s run tag @s remove mg2-ran1
execute as @a[scores={2=1..}] at @s run tag @s remove mg2-ran2
execute as @a[scores={2=1..}] at @s run tag @s remove mg2-ran3
particle dust 1 0 0 0.5 109.8 3.5 -72 0 0 0 1.3 3 normal @a[tag=!N0]
particle dust 1 0 0 0.5 99.2 3.5 -71.5 0 0 0 1.3 3 normal @a[tag=!N0]

#Beds
execute if block 109 3 -72 lever[powered=false] run data merge block 109 4 -72 {Text1:'{"text":"---------------","color":"yellow","bold":true}',Text3:'{"text":"---------------","color":"yellow","bold":true}'}
execute if block 109 3 -72 lever[powered=false] run data merge block 109 2 -72 {Text1:'',Text3:''}
execute if block 109 3 -72 lever[powered=false] run setblock 104 2 -77 red_bed[facing=north]
execute if block 109 3 -72 lever[powered=false] run setblock 104 2 -78 red_bed[part=head,facing=north]
execute if block 109 3 -72 lever[powered=false] if score @e[name="M@K",limit=1] mg2 matches 1 run tellraw @a[scores={mg2=1..},tag=!STGplayers,tag=!SPmg2] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Confront each of the opposing Teams, and break their"},{"text":" Bed ","color":"red","bold":true},{"text":"before eliminating them to win! The strategy is up to you..."},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
execute if block 109 3 -72 lever[powered=false] run scoreboard players set @e[name="M@K",limit=1] mg2 0
#Eggs
execute if block 109 3 -72 lever[powered=true] run data merge block 109 2 -72 {Text1:'{"text":"---------------","color":"yellow","bold":true}',Text3:'{"text":"---------------","color":"yellow","bold":true}'}
execute if block 109 3 -72 lever[powered=true] run data merge block 109 4 -72 {Text1:'',Text3:''}
execute if block 109 3 -72 lever[powered=true] run setblock 104 2 -77 dragon_egg
execute if block 109 3 -72 lever[powered=true] run setblock 104 2 -78 air
execute if block 109 3 -72 lever[powered=true] if score @e[name="M@K",limit=1] mg2 matches 0 run tellraw @a[scores={mg2=1..},tag=!STGplayers,tag=!SPmg2] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Confront each of the opposing Teams, and break their"},{"text":" Protective Egg ","color":"dark_aqua","bold":true},{"text":"before eliminating them to win! The strategy is up to you..."},{"text":" \u21b2","color":"gold","bold":true},{"text":"\n"}]
execute if block 109 3 -72 lever[powered=true] run scoreboard players set @e[name="M@K",limit=1] mg2 1

#2-team
execute if block 99 3 -72 lever[powered=true] if data block 99 4 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"2"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran1
execute if block 99 3 -72 lever[powered=true] if data block 99 4 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"2"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran2
execute if block 99 3 -72 lever[powered=true] if data block 99 4 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"2"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran3
execute if block 99 3 -72 lever[powered=false] as @a[scores={mg2=1..},tag=!STGplayers] at @s run scoreboard players set @s mg2.1 2
execute unless entity @a[scores={mg2=1..},team=!] if block 99 3 -72 lever[powered=false] run loot replace block 104 7 -62 container.0 loot c2:random/2-team
#3-team
execute if block 99 3 -72 lever[powered=false] if data block 99 2 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"3"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran1
execute if block 99 3 -72 lever[powered=false] if data block 99 2 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"3"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran3
execute if block 99 3 -72 lever[powered=false] if data block 99 2 -72 {Text2:'{"bold":true,"underlined":true,"color":"yellow","text":"3"}'} run tag @a[scores={mg2=1..},tag=!STGplayers] remove mg2-ran2
execute if block 99 3 -72 lever[powered=true] as @a[scores={mg2=1..},tag=!STGplayers] at @s run scoreboard players set @s mg2.1 3
execute unless entity @a[scores={mg2=1..},team=!] if block 99 3 -72 lever[powered=true] run loot replace block 104 7 -62 container.0 loot c2:random/3-team

execute as @r[scores={mg2=1..},tag=!STGplayers] at @s run function c2:mg2/failsafe