#NEXT ROUND
gamemode adventure @a[tag=PG]
tag @a[tag=PG] remove PG_
bossbar set pg_timer visible false
scoreboard players reset * pg1.4
title @a[tag=PG] reset
scoreboard players add @e[limit=1,name="M@K"] pg1.6 1
tag @a remove PGFinalist
tag @a remove v0ted

#Teleport
tag @a[tag=PG] add PG_
execute as @a[tag=PG_] at @s run function library:event/teleport
data merge block -326 8 -8 {Items:[]}
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -9 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -8 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T1] run data merge block -339 4 -7 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 13 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 14 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T2] run data merge block -332 4 15 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 24 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 25 {Text2:'',Text3:''}
execute if entity @a[tag=PG,tag=T3] run data merge block -310 4 26 {Text2:'',Text3:''}
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg2] run tp @s 104 2 -72
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=mg8] run scoreboard players set @e[limit=1,name="M@K"] mg8.3 115
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg20,tag=!mg23,tag=!mg24] run function c1:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg20] run function c2:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg16,tag=!mg20,tag=!mg23,tag=!mg24,tag=!mg25,tag=!mgc] run function c3:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg23,tag=!mg24,tag=!mg25] run function c4:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg20,tag=!mg23,tag=!mg24,tag=!mg25] run function d1:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg13,tag=!mg17,tag=!mg18,tag=!mg20,tag=!mg23,tag=!mg25] run function d2:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg20,tag=!mg23,tag=!mg24,tag=!mg25] run function d3:reload
execute as @p[tag=PG_] at @s if entity @e[tag=s,tag=PG,tag=!pre,nbt={Small:1b},tag=!mg2,tag=!mg4,tag=!mg8,tag=!mg11,tag=!mg13,tag=!mg16,tag=!mg17,tag=!mg18,tag=!mg20,tag=!mg23,tag=!mg24,tag=!mg25] run function d4:reload
execute unless data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"Random"}'} unless data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"In order"}'} run kill @e[tag=PG,nbt={Small:1b}]
kill @e[tag=s,tag=PG,nbt={Small:1b}]
tag @a remove PG_
tag @e[limit=1,name="M@K"] remove PGrounds
tag @e[limit=1,name="M@K"] remove PGtie