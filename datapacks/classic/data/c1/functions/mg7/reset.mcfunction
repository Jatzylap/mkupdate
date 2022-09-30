execute as @a[scores={mg7=1..}] at @s run function mk:restore
execute in overworld run fill 101 0 -31 130 0 -3 tnt keep
execute in overworld run fill 101 6 -31 130 6 -3 tnt keep
execute in overworld run fill 102 16 -30 129 16 -3 tnt keep
execute in overworld run fill 101 1 -31 130 17 -3 air replace sand
execute in overworld run fill 101 1 -31 130 17 -3 air replace sandstone
execute in overworld run fill 101 1 -31 130 1 -3 sand keep
execute in overworld run fill 101 7 -31 130 7 -3 sand keep
execute in overworld run fill 102 17 -30 129 17 -3 sand keep
execute in overworld run setblock -302 2 -67 air
effect clear @a[tag=TRplayers]
effect give @a[tag=TRplayers] resistance 3 255 true
effect give @a[tag=TRplayers] regeneration 1 255 true
gamemode adventure @a[scores={mg7=1..}]
kill @e[type=item,x=101,y=2,z=-31,dx=29,dz=28,dy=20]
kill @e[x=101,y=2,z=-31,dx=29,dz=28,dy=20,type=falling_block]
tp @a[tag=!PG,scores={mg7=1..}] -77 8 85
execute in overworld run fill -314 2 -64 -300 2 -64 repeater[facing=west,delay=4,powered=false] keep
scoreboard players reset @a mg7.1
scoreboard players reset @a mg7.2
scoreboard players reset * mg7.4
tag @a remove SPmg7
tag @a remove TRplayers
tag @a remove TRLonely
team remove mg7
execute if entity @a[tag=PG,scores={mg7=1..}] run function library:event/schedule/next
scoreboard players reset @a mg7
execute in overworld run data merge block -78 8 81 {Text3:'{"text":""}'}
execute in overworld run forceload remove 131 -2 100 -32