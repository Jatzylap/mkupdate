forceload add 131 -2 100 -32
setblock -302 2 -67 air
fill 101 0 -31 130 0 -3 tnt replace air
fill 101 6 -31 130 6 -3 tnt replace air
fill 102 16 -30 129 16 -3 tnt replace air
fill 101 1 -31 130 1 -3 sand replace air
fill 101 7 -31 130 7 -3 sand replace air
fill 102 17 -30 129 17 -3 sand replace air
effect clear @a[tag=TRplayers]
effect give @a[tag=TRplayers] resistance 3 255 true
effect give @a[tag=TRplayers] regeneration 1 255 true
gamemode adventure @a[scores={mg7=1..}]
kill @e[type=item,x=101,y=2,z=-31,dx=29,dz=28,dy=20]
kill @e[x=101,y=2,z=-31,dx=29,dz=28,dy=20,type=falling_block]
kill @e[tag=st0rage,tag=mg7]
tag @a[scores={mg7=1..}] remove st0red
tp @a[tag=!PG,scores={mg7=1..}] -77 8 85
scoreboard players reset @a mg7.2
scoreboard players reset * mg7.4
tag @a remove SPmg7
tag @a remove TRplayers
tag @a remove TRLonely
team remove mg7
execute if entity @a[tag=PG,scores={mg7=1..}] run function library:event/schedule/next
scoreboard players reset @a mg7
data merge block -78 8 81 {Text3:'{"text":""}'}
forceload remove 131 -2 100 -32