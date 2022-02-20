setblock -305 2 -33 air
effect clear @a[scores={mg3=1..}]
clear @a #spleef_items{CPG:1b}
gamemode adventure @a[scores={mg3=1..}]
kill @e[type=item,nbt={Item:{tag:{CPG:1b}}}]
kill @e[tag=st0rage,tag=mg3]
tag @a[scores={mg3=1..}] remove st0red
bossbar remove spleef_countdown
scoreboard players reset @a mg3.1
scoreboard players reset @a mg3.2
tp @a[tag=!PG,scores={mg3=1..}] -77 8 85
tag @a remove SPmg3
tag @a remove SpleefPlayers
tag @a remove SpleefLonely
execute if entity @a[tag=PG,scores={mg3=1..}] run function library:event/schedule/next
scoreboard players reset @a mg3
data merge block -78 9 81 {Text3:'{"text":""}'}