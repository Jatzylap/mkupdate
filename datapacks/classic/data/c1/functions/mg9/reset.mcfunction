clear @a[scores={mg9=1..}]
effect clear @a[scores={mg9=1..}]
fill 103 19 -64 112 35 -55 air replace red_sand
fill 112 34 -55 105 34 -62 barrier replace air
fill 112 35 -55 105 35 -62 red_sand replace air
gamemode adventure @a[scores={mg9=1..}]
bossbar remove tt_timer
kill @e[x=95,y=19,z=-69,dx=27,dz=28,dy=21,type=falling_block]
kill @e[type=item,x=95,y=19,z=-69,dx=27,dz=28,dy=21]
kill @e[tag=st0rage,tag=mg9]
tag @a[scores={mg9=1..}] remove st0red
tp @a[tag=!PG,scores={mg9=1..}] -77 8 85
scoreboard players reset @a mg9.2
scoreboard players reset * mg9.6
scoreboard players reset * mg9.5
tag @a remove SPmg9
tag @a remove TNTtag
tag @a remove TTplayers
team remove mg9
execute if entity @a[tag=PG,scores={mg9=1..}] run function library:event/schedule/next
scoreboard players reset @a mg9
data merge block -77 8 81 {Text3:'{"text":""}'}