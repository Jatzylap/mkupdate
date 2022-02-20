setblock -324 2 -66 air
effect clear @a[scores={mg6=1..}]
effect give @a[scores={mg6=1..}] fire_resistance 15 1 true
effect give @a[scores={mg6=1..}] saturation 1 255 true
gamemode adventure @a[scores={mg6=1..}]
kill @e[type=item,nbt={Item:{tag:{CPG:1b}}}]
kill @e[name=mg6]
kill @e[name="mg6/2"]
kill @e[type=item,x=100,y=46,z=-17,distance=..18]
kill @e[tag=st0rage,tag=mg6]
tag @a[scores={mg6=1..}] remove st0red
fill 119 45 -37 79 45 3 brown_terracotta
tp @a[tag=!PG,scores={mg6=1..}] -77 8 85
scoreboard players reset @a mg6.2
scoreboard players reset * mg6.4
scoreboard players reset * mg6.3
tag @a remove SPmg6
tag @a remove VFplayers
tag @a remove VFLonely
team remove mg6
execute if entity @a[tag=PG,scores={mg6=1..}] run function library:event/schedule/next
scoreboard players reset @a mg6
data merge block -76 9 81 {Text3:'{"text":""}'}