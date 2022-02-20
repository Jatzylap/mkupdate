#Spectators
gamemode spectator @a[tag=SPmg10]
execute as @a[tag=SPmg10] at @s unless entity @s[x=-13,y=2,z=122,dx=20,dz=20,dy=8] run tp -77 8 85
execute as @a[tag=SPmg10] at @s unless entity @s[x=-13,y=2,z=122,dx=20,dz=20,dy=8] run gamemode adventure
execute as @a[tag=SPmg10] at @s unless entity @s[x=-13,y=2,z=122,dx=20,dz=20,dy=8] run scoreboard players reset @s mg10
execute as @a[tag=SPmg10] at @s unless entity @s[x=-13,y=2,z=122,dx=20,dz=20,dy=8] run tag @s remove SPmg10

execute as @r[scores={mg10=1..},tag=!st0red] at @s run function mk:store
tag @e[tag=st0rage,x=-13,y=2,z=122,dx=20,dz=20,dy=8] add mg10
tp @e[tag=st0rage,tag=mg10] -2 6 133
execute as @a[scores={mg10=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg10=1..,lobby=1..},tag=st0red] at @s run tp @e[sort=random,limit=1,tag=st0rage,tag=mg10] @s
execute as @a[scores={mg10=1..,2=1..},tag=st0red] at @s run scoreboard players reset @s mg10

#Main
execute as @r[scores={mg10=1..},tag=CMplayers] at @s run particle note ~ ~ ~ 5 0.5 5 1 3 force @s
execute as @a[scores={mg10=1..,mg10.1=0},tag=CMplayers] at @s if entity @s[y=3,distance=..1] run function c1:mg10/death
execute as @a[scores={mg10=1..},tag=CMplayers,tag=CMlonely] at @s run execute if entity @a[scores={mg10=1..},tag=CMplayers,tag=!CMlonely] run tag @a[scores={mg10=1..}] remove CMlonely
execute as @r[limit=1,scores={mg10=1..},tag=CMplayers] unless entity @a[scores={mg10=1..},tag=CMplayers,tag=CMlonely] run tag @s add CMlonely
tag @a[scores={mg10=1..,mg10.2=1..}] remove CMplayers
tag @a[scores={mg10.2=1..}] remove CMlonely
execute as @a[scores={mg10=1..},tag=CMlonely,tag=CMplayers,limit=1] at @s run execute unless entity @a[scores={mg10=1..},tag=!CMlonely,tag=CMplayers] run setblock -310 2 -76 redstone_block
execute as @e[name="M@K",limit=1,scores={mg10.4=-51..}] at @s run scoreboard players remove @s mg10.4 1
kill @e[type=item,x=-13,y=2,z=122,dx=20,dz=20,dy=8]
kill @e[type=area_effect_cloud,x=-13,y=2,z=122,dx=20,dz=20,dy=9]
effect give @e[type=slime,name=mg10] speed 1 15 true
execute as @e[name="M@K",limit=1,scores={mg10.4=110..115}] at @s run setblock -317 2 -79 redstone_block
clear @a[scores={mg10=1..,mg10.2=1..}] #concrete{CPG:1b}
execute as @e[name="M@K",limit=1,scores={mg10.4=..100}] at @s run execute at @e[type=armor_stand,name=mg10,tag=x,limit=1] run setblock ~ ~ ~ redstone_block
execute store result bossbar cm_countdown value run scoreboard players get @e[name="M@K",limit=1] mg10.4
bossbar set cm_countdown players @a[scores={mg10=1..}]
execute as @e[name="M@K",limit=1,scores={mg10.3=5..}] at @s run data merge block -308 2 -74 {Command:"execute as @e[name=\"M@K\",limit=1,scores={mg10.4=..-50}] at @s run scoreboard players set @s mg10.4 120"}
execute if entity @e[name="M@K",limit=1,scores={mg10.3=5..}] run data merge block -310 2 -86 {Command:"execute as @r[scores={mg10=1..},tag=CMplayers,limit=1] at @s run summon sheep ~ ~2.5 ~ {CustomName:\"{\\\"text\\\":\\\"jeb_\\\"}\",Tags:[mg10],Invulnerable:1b,PersistenceRequired:1b,ActiveEffects:[{Id:1,Amplifier:3,Duration:100000}]}"}
#random fill
execute at @e[type=slime,name=mg10,tag=red] run fill ~-1 2 ~-1 ~1 2 ~1 red_concrete
execute at @e[type=slime,name=mg10,tag=yellow] run fill ~-1 2 ~-1 ~1 2 ~1 yellow_concrete
execute at @e[type=slime,name=mg10,tag=orange] run fill ~-1 2 ~-1 ~1 2 ~1 orange_concrete
execute at @e[type=slime,name=mg10,tag=pink] run fill ~-1 2 ~-1 ~1 2 ~1 pink_concrete
execute at @e[type=slime,name=mg10,tag=lime] run fill ~-1 2 ~-1 ~1 2 ~1 lime_concrete
execute at @e[type=slime,name=mg10,tag=green] run fill ~-1 2 ~-1 ~1 2 ~1 green_concrete
execute at @e[type=slime,name=mg10,tag=light_blue] run fill ~-1 2 ~-1 ~1 2 ~1 light_blue_concrete
execute at @e[type=slime,name=mg10,tag=cyan] run fill ~-1 2 ~-1 ~1 2 ~1 cyan_concrete
execute at @e[type=slime,name=mg10,tag=blue] run fill ~-1 2 ~-1 ~1 2 ~1 blue_concrete
execute at @e[type=slime,name=mg10,tag=magenta] run fill ~-1 2 ~-1 ~1 2 ~1 magenta_concrete
execute at @e[type=slime,name=mg10,tag=purple] run fill ~-1 2 ~-1 ~1 2 ~1 purple_concrete
execute at @e[type=slime,name=mg10,tag=light_grey] run fill ~-1 2 ~-1 ~1 2 ~1 light_gray_concrete
execute at @e[type=slime,name=mg10,tag=grey] run fill ~-1 2 ~-1 ~1 2 ~1 gray_concrete
execute at @e[type=slime,name=mg10,tag=white] run fill ~-1 2 ~-1 ~1 2 ~1 white_concrete
execute at @e[type=slime,name=mg10,tag=brown] run fill ~-1 2 ~-1 ~1 2 ~1 brown_concrete
execute at @e[type=slime,name=mg10,tag=black] run fill ~-1 2 ~-1 ~1 2 ~1 black_concrete
