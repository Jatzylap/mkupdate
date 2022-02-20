fill -356 4 -7 -356 6 -9 air
fill -349 4 15 -349 6 13 air
fill -327 4 26 -327 6 24 air
execute as @a[tag=PG] at @s run function clear:chat
scoreboard players reset * pg1.7
scoreboard players reset * pg1.6
scoreboard players reset * pg1.5
scoreboard players reset * pg1.4
scoreboard players reset * pg1.3
scoreboard players reset * pg1.2
scoreboard players reset * pg1.1
scoreboard players set @e[limit=1,name="M@K"] pg1 0
tag @a remove T1
tag @a remove T2
tag @a remove T3
tag @a remove PGFinalist
tag @a remove PG3rd
tag @a remove PG2nd
tag @a remove PGWinner
tag @e[tag=C0] remove u
tag @e[tag=D0] remove u
tag @e[limit=1,name="M@K"] remove PGresults
tag @e[limit=1,name="M@K"] remove PGtie
tag @e[limit=1,name="M@K"] remove PGvote
tag @e[limit=1,name="M@K"] remove PGbegin
tag @e[limit=1,name="M@K"] remove PGpause
kill @e[tag=PG,tag=!pre,nbt={Small:1b}]
kill @e[tag=p0d,nbt={Invisible:1b}]
data merge block -326 5 -4 {Text3:'{"color":"gold","score":{"name":"@e[limit=1,name=\\"M@K\\"]","objective":"pg1"}}'}
data merge block -326 4 -4 {Text1:'{"text":""}'}
data merge block -325 4 -4 {Text1:'{"text":"Round Type","color":"white","bold":true}'}
title @a[tag=PG] clear
execute as @a[tag=PG] at @s run scoreboard players set @s 2 1
tag @a remove PG
tag @a remove PG_
tag @a remove PG_1
tag @a remove PG_2
tag @a remove page2
tag @a remove page3
tag @a remove page4
tag @a remove v0ted
bossbar remove pg_timer