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
execute as @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] at @s store result score @e[limit=1,name="M@K",tag=!mg2-ran] mg2.1 if entity @s

#Beds
execute if block 109 3 -72 lever[powered=false] run data merge block 109 4 -72 {Text1:'{"text":"---------------","color":"yellow","bold":true}',Text3:'{"text":"---------------","color":"yellow","bold":true}'}
execute if block 109 3 -72 lever[powered=false] run data merge block 109 2 -72 {Text1:'',Text3:''}
execute if block 109 3 -72 lever[powered=false] run setblock 104 2 -77 red_bed[facing=north]
execute if block 109 3 -72 lever[powered=false] run setblock 104 2 -78 red_bed[part=head,facing=north]
execute if block 109 3 -72 lever[powered=false] run scoreboard players set @e[name="M@K",limit=1] mg2 0
#Eggs
execute if block 109 3 -72 lever[powered=true] run data merge block 109 2 -72 {Text1:'{"text":"---------------","color":"yellow","bold":true}',Text3:'{"text":"---------------","color":"yellow","bold":true}'}
execute if block 109 3 -72 lever[powered=true] run data merge block 109 4 -72 {Text1:'',Text3:''}
execute if block 109 3 -72 lever[powered=true] run setblock 104 2 -77 dragon_egg
execute if block 109 3 -72 lever[powered=true] run setblock 104 2 -78 air
execute if block 109 3 -72 lever[powered=true] run scoreboard players set @e[name="M@K",limit=1] mg2 1

#2 Teams
execute if block 99 3 -72 lever[powered=false] as @a[scores={mg2=1..},tag=!STGplayers] at @s run scoreboard players set @s mg2.1 2
execute unless entity @a[scores={mg2=1..},team=!] if block 99 3 -72 lever[powered=false] unless entity @e[limit=1,name="M@K",tag=mg2-ran] run loot insert 104 7 -62 loot c2:2-team
#3 Teams
execute if block 99 3 -72 lever[powered=true] as @a[scores={mg2=1..},tag=!STGplayers] at @s run scoreboard players set @s mg2.1 3
execute unless entity @a[scores={mg2=1..},team=!] if block 99 3 -72 lever[powered=true] unless entity @e[limit=1,name="M@K",tag=mg2-ran] run loot insert 104 7 -62 loot c2:3-team

#Sort
execute unless entity @a[scores={mg2=1..},team=!] run scoreboard players operation @e[limit=1,name="M@K"] mg2.1 /= @a[scores={mg2=1..},tag=!STGplayers] mg2.1
execute unless entity @a[scores={mg2=1..},team=!] run tag @e[limit=1,name="M@K",scores={mg2.1=1..}] add mg2-ran
execute unless entity @a[scores={mg2=1..},team=!] run scoreboard players remove @e[limit=1,name="M@K",tag=mg2-ran] mg2.1 1
execute unless entity @a[scores={mg2=1..},team=!] if data block 104 7 -62 Items[{tag:{mg2:1}}] at @e[limit=1,name="M@K",tag=mg2-ran] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1 
execute unless entity @a[scores={mg2=1..},team=!] if data block 104 7 -62 Items[{tag:{mg2:2}}] at @e[limit=1,name="M@K",tag=mg2-ran] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2 
execute unless entity @a[scores={mg2=1..},team=!] if data block 104 7 -62 Items[{tag:{mg2:3}}] at @e[limit=1,name="M@K",tag=mg2-ran] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3 

#2 Teams
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=false] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2

#3 Teams
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] unless entity @a[scores={mg2=1..},tag=mg2-ran2] unless entity @a[scores={mg2=1..},tag=mg2-ran3] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] unless entity @a[scores={mg2=1..},tag=mg2-ran1] unless entity @a[scores={mg2=1..},tag=mg2-ran3] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] unless entity @a[scores={mg2=1..},tag=mg2-ran1] unless entity @a[scores={mg2=1..},tag=mg2-ran2] run loot insert 104 7 -62 loot c2:2-team
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran1] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran2] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if entity @a[scores={mg2=1..},tag=mg2-ran3] if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @r[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2

execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if data block 104 7 -62 Items[{tag:{mg2:1}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran1
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if data block 104 7 -62 Items[{tag:{mg2:2}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran2
execute if block 99 3 -72 lever[powered=true] unless entity @a[scores={mg2=1..},team=!] as @e[limit=1,name="M@K",scores={mg2.1=..-1}] at @s if data block 104 7 -62 Items[{tag:{mg2:3}}] run tag @a[scores={mg2=1..},tag=!STGplayers,tag=!mg2-ran1,tag=!mg2-ran2,tag=!mg2-ran3] add mg2-ran3

execute as @e[limit=1,name="M@K"] at @s if score @s mg2.1 matches ..-1 run data merge block 104 7 -62 {Items:[]}
execute as @e[limit=1,name="M@K"] at @s if score @s mg2.1 matches ..-1 run tag @s remove mg2-ran