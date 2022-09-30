kill @e[type=item,x=81,y=42,z=-36,dx=39,dy=5,dz=40]
clear @a[scores={mg6=1..}]
setblock -324 2 -66 air
effect clear @a[scores={mg6=1..}]
effect give @a[scores={mg6=1..}] fire_resistance 15 1 true
effect give @a[scores={mg6=1..}] saturation 1 255 true
gamemode adventure @a[scores={mg6=1..}]
kill @e[type=item,nbt={Item:{tag:{CPG:1b}}}]
kill @e[name=mg6]
kill @e[name="mg6/2"]
fill 119 45 -37 79 45 3 brown_terracotta
tp @a[tag=!PG,scores={mg6=1..}] -77 8 85
execute as @a[scores={mg6=1..}] at @s run function mk:restore
scoreboard players reset @a mg6.2
scoreboard players reset * mg6.4
scoreboard players reset * mg6.3
execute in overworld run fill -336 2 -63 -322 2 -63 repeater[delay=4,facing=west,powered=false] keep
tag @a remove SPmg6
tag @a remove VFplayers
tag @a remove VFLonely
team remove mg6
execute if entity @a[tag=PG,scores={mg6=1..}] run function library:event/schedule/next
scoreboard players reset @a mg6
data merge block -76 9 81 {Text3:'{"text":""}'}