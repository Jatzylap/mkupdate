#Spectators
gamemode spectator @a[tag=SPmg7]
execute as @a[tag=SPmg7] at @s unless entity @s[x=101,y=2,z=-31,dx=29,dz=28,dy=20] run tp -77 8 85
execute as @a[tag=SPmg7] at @s unless entity @s[x=101,y=2,z=-31,dx=29,dz=28,dy=20] run gamemode adventure
execute as @a[tag=SPmg7] at @s unless entity @s[x=101,y=2,z=-31,dx=29,dz=28,dy=20] run scoreboard players reset @s mg7
execute as @a[tag=SPmg7] at @s unless entity @s[x=101,y=2,z=-31,dx=29,dz=28,dy=20] run tag @s remove SPmg7

execute as @r[scores={mg7=0..},tag=!st0red] at @s run function mk:store
tag @e[tag=st0rage,x=101,y=2,z=-31,dx=29,dz=28,dy=20] add mg7
tp @e[tag=st0rage,tag=mg7] 115 18 -17
execute as @a[scores={mg7=0..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg7=0..,lobby=1..},tag=st0red] at @s run tp @e[sort=random,limit=1,tag=st0rage,tag=mg7] @s
execute as @a[scores={mg7=0..,lobby=1..},tag=st0red] at @s run scoreboard players reset @s mg7

#Main
kill @e[x=101,y=0,z=-31,dx=29,dz=28,dy=22,type=tnt]
kill @e[x=101,y=0,z=-31,dx=29,dz=28,dy=22,type=area_effect_cloud]
kill @e[x=101,y=2,z=-31,dx=29,dz=28,dy=2,type=falling_block]
kill @e[x=101,y=10,z=-31,dx=29,dz=28,dy=2,type=falling_block]
execute as @a[scores={mg7=1..,mg7.3=1..},tag=TRplayers] at @s run particle smoke ~ ~ ~ 1 0.4 1 0.1 3 normal @s
scoreboard players add @e[name="M@K",limit=1] mg7.4 1
execute if score @e[name="M@K",limit=1] mg7.4 matches 6.. as @a[scores={mg7=1..},tag=TRplayers] at @s run fill ~ ~ ~ ~ ~-2 ~ air replace tnt
execute as @e[name="M@K",limit=1,scores={mg7.4=6..}] at @s run execute as @a[scores={mg7=1..,mg7.3=50},tag=TRplayers,limit=1] at @s run summon creeper ~ ~-4.5 ~ {Invulnerable:1,Silent:1,NoGravity:1,ActiveEffects:[{Id:14b,Amplifier:1,Duration:9999,ShowParticles:0}],ignited:5s}
scoreboard players remove @a[scores={mg7=1..,mg7.3=0..},tag=TRplayers] mg7.3 2
scoreboard players set @a[scores={mg7=1..,mg7.3=600..},tag=TRplayers] mg7.3 50
execute as @a[scores={mg7=1..,mg7.3=..0},tag=TRplayers] at @s run fill ~-1 ~ ~-1 ~1 ~-3 ~1 air replace tnt
execute as @a[scores={mg7=1..,mg7.1=0},tag=TRplayers] at @s if entity @s[y=-5,dy=-9] run function c1:mg7/death
execute as @a[scores={mg7=1..},tag=TRplayers,tag=TRLonely] at @s run execute if entity @a[scores={mg7=1..},tag=TRplayers,tag=!TRLonely] run tag @a[scores={mg7=1..}] remove TRLonely
execute as @r[limit=1,scores={mg7=1..},tag=TRplayers] unless entity @a[scores={mg7=1..},tag=TRplayers,tag=TRLonely] run tag @s add TRLonely
tag @a[scores={mg7=1..,mg7.2=1..}] remove TRplayers
tag @a[scores={mg7.2=1..}] remove TRLonely
execute as @a[scores={mg7=1..},tag=TRLonely,tag=TRplayers,limit=1] at @s run execute unless entity @a[scores={mg7=1..},tag=!TRLonely,tag=TRplayers] run setblock -302 2 -67 redstone_block
scoreboard players set @a[scores={mg7.1=1}] mg7.1 2
execute as @r[scores={mg7=1..},tag=TRplayers] at @s run execute unless entity @a[tag=TRplayers,scores={mg7=1..},distance=0.01..] run execute as @a[limit=1,scores={mg7.1=1..}] at @s run setblock ~ 0 ~ sandstone replace