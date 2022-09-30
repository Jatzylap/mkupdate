clear @a[scores={mg9=1..}]
effect clear @a[scores={mg9=1..}]
fill 103 19 -64 112 35 -55 air replace red_sand
fill 112 34 -55 105 34 -62 barrier replace air
fill 112 35 -55 105 35 -62 red_sand replace air
fill 130 19 -53 121 35 -62 air replace red_sand
fill 121 34 -62 128 34 -55 barrier replace air
fill 121 35 -62 128 35 -55 red_sand replace air
gamemode adventure @a[scores={mg9=1..}]
bossbar remove tt_timer
kill @e[x=95,y=19,z=-69,dx=43,dz=21,dy=21,type=falling_block]
kill @e[type=item,x=95,y=19,z=-69,dx=43,dz=21,dy=21]
tp @a[tag=!PG,scores={mg9=1..}] -77 8 85
execute as @a[scores={mg9=1..}] at @s run function mk:restore
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