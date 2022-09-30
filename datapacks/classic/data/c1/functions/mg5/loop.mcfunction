#Spectators
gamemode spectator @a[tag=SPmg5]
execute as @a[tag=SPmg5,x=-5,y=6,z=35,distance=9..] at @s run tp -5 8 35

execute as @r[scores={mg5=0..},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg5=0..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg5=0..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg5=0..,lobby=1..}] at @s run tag @s remove SPmg5
execute as @a[scores={mg5=0..,lobby=1..}] at @s run scoreboard players reset @s mg5

#Main
kill @e[type=item,x=-5,y=6,z=35,distance=..20,nbt={Item:{id:"minecraft:petrified_oak_slab"}}]
execute as @e[type=area_effect_cloud,name="mg5/2"] at @s run summon snowball ~ 17.8 ~ {Tags:["-Avalanche-"]}
execute as @a[scores={mg5=1..,mg5.1=0},tag=SDplayers] at @s if block ~ 5 ~ air if entity @e[type=snowball,tag=-Avalanche-,dy=2] run function c1:mg5/death
gamemode spectator @a[scores={mg5.3=1..}]
execute as @a[scores={mg5.3=1..}] at @s unless entity @s[tag=SPmg5,x=-5,y=6,z=35,distance=..9] run tp -5 3 35
execute as @a[scores={mg5=1..},tag=SDplayers,tag=SDlonely] at @s run execute if entity @a[scores={mg5=1..},tag=SDplayers,tag=!SDlonely] run tag @a[scores={mg5=1..}] remove SDlonely
execute as @r[limit=1,scores={mg5=1..},tag=SDplayers] unless entity @a[scores={mg5=1..},tag=SDplayers,tag=SDlonely] run tag @s add SDlonely
tag @a[scores={mg5.3=1..}] remove SDlonely
tag @a[scores={mg5=0..,mg5.3=1..}] remove SDplayers
execute as @a[scores={mg5=1..},tag=SDlonely,tag=SDplayers,limit=1] at @s run execute unless entity @a[scores={mg5=1..},tag=!SDlonely,tag=SDplayers] run setblock -335 2 -56 redstone_block
execute as @e[name="M@K",limit=1,scores={mg5.2=115}] at @s run fill -339 2 -58 -341 2 -58 air replace redstone_block
execute as @e[name="M@K",limit=1,scores={mg5.2=115}] at @s run kill @e[type=area_effect_cloud,name="mg5/2"]
execute as @a[scores={mg5.2=5..}] at @s run data merge block -333 2 -51 {Command:"execute as @e[name=\"M@K\",limit=1,scores={mg5.2=92}] at @s run setblock -341 2 -58 redstone_block"}
bossbar set avalanche_countdown players @a[scores={mg5=0..},tag=SDplayers]
scoreboard players set @a[scores={mg5.1=1}] mg5.1 2
execute as @e[name="M@K",limit=1] at @s if entity @a[scores={mg5=1..},tag=SDplayers] run scoreboard players remove @s mg5.2 1
execute as @e[name="M@K",limit=1,scores={mg5.2=..-85}] at @s run fill -21 4 18 13 5 51 air replace petrified_oak_slab
execute as @e[name="M@K",limit=1,scores={mg5.2=..-85}] at @s run scoreboard players set @s mg5.2 115
spreadplayers -5 35 5 18 under 2 false @e[type=area_effect_cloud,name="mg5/2"]
execute as @a[scores={mg5.2=10..}] at @s run team modify mg5 friendlyFire true
effect clear @a[scores={mg5.2=10..}] weakness
execute as @a[scores={mg5.2=10..}] at @s if score @e[name="M@K",limit=1] mg5.2 matches 92 run title @a[scores={mg5=1..},tag=SDplayers] actionbar ["",{"text":"You may Punch now!","color":"aqua","bold":true}]
execute if score @e[name="M@K",limit=1] mg5.2 matches 92 run stopsound @a[scores={mg5=1..}] master item.elytra.flying