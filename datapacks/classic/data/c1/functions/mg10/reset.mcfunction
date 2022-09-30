setblock -310 2 -76 air
effect clear @a[tag=CMplayers]
effect give @a[tag=CMplayers] saturation 1 255 true
gamemode adventure @a[scores={mg10=1..}]
stopsound @a[scores={mg10=1..}] master music_disc.blocks
clear @a[scores={mg10=1..}] #panel_blocks{CPG:1b}
tag @e[type=armor_stand,name=mg10] remove x
kill @e[type=slime,name=mg10]
tp @e[tag=!PG,tag=mg10] ~ -10000 ~
fill 6 2 124 -11 2 141 white_concrete replace #concrete
fill -312 3 -79 -312 3 -93 air replace redstone_block
data merge block -308 2 -74 {Command:"execute as @e[name=\"M@K\",limit=1,scores={mg10.4=..-50}] at @s run scoreboard players set @s mg10.4 200"}
data merge block -310 2 -86 {Command:""}
kill @e[type=item,x=-13,y=2,z=122,dx=20,dz=20,dy=8]
tp @a[scores={mg10=1..}] -77 8 85
execute as @a[scores={mg10=1..}] at @s run function mk:restore
scoreboard players reset @a mg10.1
scoreboard players reset @a mg10.2
scoreboard players reset * mg10.3
scoreboard players reset * mg10.4
tag @a remove SPmg10
tag @a remove CMplayers
tag @a remove CMlonely
tag @a remove CMpester
team remove mg10
execute if entity @a[tag=PG,scores={mg10=1..}] run function library:event/schedule/next
scoreboard players reset @a mg10
bossbar remove cm_countdown
data merge block -76 8 81 {Text3:'{"text":""}'}