setblock -350 2 -47 air
function c2:mg8/reload
effect clear @a[team=mg8]
effect give @a[team=mg8] saturation 1 255 true
effect give @a[team=mg8] regeneration 8 255 true
kill @e[tag=!PG,tag=mg8]
tag @a[team=mg8] remove st0red
scoreboard players reset @a mg8.1
scoreboard players reset @a mg8.2
scoreboard players reset * mg8.3
gamemode adventure @a[team=mg8]
tag @a remove SPmg8
tag @a remove SWplayers
tag @a remove SWlonely
scoreboard players reset * mg8
bossbar remove sw_timer
bossbar remove sw_timer2
spawnpoint @a[team=mg8] -18 4 -13
tag @a remove SWw_exit
scoreboard players set @e[limit=1,name="M@K"] mg8.3 500
setblock -350 2 -47 comparator[facing=west]
fill -347 2 -52 -351 2 -46 air replace redstone_block
tp @a[tag=!PG,team=mg8] -18 4 -13
execute if entity @a[tag=PG,team=mg8] run function library:event/schedule/next
team remove mg8
team remove mg8-1

data merge block -14 5 -14 {Text3:'{"text":""}'}