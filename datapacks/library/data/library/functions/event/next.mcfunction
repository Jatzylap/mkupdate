#NEXT ROUND
gamemode adventure @a[tag=PG]
tag @a[tag=PG] remove PG_
tag @a[tag=PG] remove PG_1
bossbar set pg_timer visible false
scoreboard players reset * pg1.4
title @a[tag=PG] reset
scoreboard players add @e[limit=1,name="M@K"] pg1.6 1
title @a[tag=PG,tag=PGFinalist] title ["",{"text":" You are out of the game!","color":"red","bold":true}]
playsound entity.wither.spawn master @a[tag=PG,tag=PGFinalist] ~ ~ ~ 10000 1.5
tag @a remove PGFinalist
tag @a remove v0ted

#Choice (random/order/vote)
execute if score @e[limit=1,name="M@K"] pg1.5 matches 1.. unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} unless entity @e[tag=PGtie,limit=1,name="M@K"] run tag @a[tag=PG] add PG_1
execute as @a[tag=PG,limit=1] at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} if entity @e[tag=PGtie,limit=1,name="M@K"] run tag @s add PG_
execute as @a[tag=PG_1] at @s run function library:play-random
kill @e[limit=1,tag=s,tag=PG,nbt={Small:1b}]

#Game decision
execute if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} run tag @a[tag=PG,limit=1] add PG_
execute as @a[tag=PG_] at @s run function library:play-random
data merge block -326 8 -8 {Items:[]}
tag @a remove PG_
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -9 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -8 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -7 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 13 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 14 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 15 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 24 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 25 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 26 {Text2:'',Text3:''}
execute if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run kill @e[tag=PG,nbt={Small:1b}]
execute at @p[tag=PG_1] run function c1:reload
execute at @p[tag=PG_1] run function c2:reload
execute at @p[tag=PG_1] run function c3:reload
execute at @p[tag=PG_1] run function c4:reload
execute at @p[tag=PG_1] run function d1:reload
execute at @p[tag=PG_1] run function d2:reload
execute at @p[tag=PG_1] run function d3:reload
tag @e[limit=1,name="M@K"] remove PGrounds
tag @e[limit=1,name="M@K"] remove PGtie