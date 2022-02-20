setblock -335 2 -56 air
scoreboard players reset @a mg5.1
stopsound @a[scores={mg5=1..}] master item.elytra.flying
scoreboard players reset @a mg5.3
kill @e[type=area_effect_cloud,name="mg5/2"]
tag @a remove SPmg5
tag @a remove SDlonely
tag @a remove SDplayers
scoreboard players reset * mg5.2
kill @e[type=area_effect_cloud,name="mg5"]
fill -21 4 18 13 5 51 air replace petrified_oak_slab
kill @e[type=item,x=-21,y=1,z=18,dx=34,dy=5,dz=33]
kill @e[type=snowball,tag=-Avalanche-]
kill @e[tag=st0rage,tag=mg5]
tag @a[scores={mg5=1..}] remove st0red
data merge block -333 2 -51 {Command:"execute as @e[name=\"M@K\",limit=1,scores={mg5.2=92}] at @s run setblock -339 2 -58 redstone_block"}
bossbar remove avalanche_countdown
tp @a[tag=!PG,scores={mg5=1..}] -77 8 85
gamemode adventure @a[scores={mg5=1..}]
execute if entity @a[tag=PG,scores={mg5=1..}] run function library:event/schedule/next
scoreboard players reset @a mg5
team remove mg5
data merge block -77 9 81 {Text3:'{"text":""}'}