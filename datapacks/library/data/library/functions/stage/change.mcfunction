tp @e[tag=b0ss,tag=p0ly] ~ -1000 ~
stopsound @a[tag=mg-1] master music_disc.pigstep
execute if entity @e[limit=1,name="M@K",tag=!mg-1s] run scoreboard players set @e[limit=1,name="M@K"] mg-1 65
execute if entity @e[name="M@K",limit=1,tag=mg-1s] run scoreboard players set @e[limit=1,name="M@K"] mg-1 0
scoreboard players add @a[tag=mg-1,tag=XPplayers] mg-1 1
tag @e[limit=1,name="M@K",tag=mg-1] add mg-1s
tag @e[limit=1,name="M@K",tag=mg-1s] remove mg-1
tag @e remove mg-1re
tag @s remove mg-1
tag @a remove XPplayers
scoreboard players set @e[limit=1,name="M@K"] 6 0
execute as @e[tag=mg-1bt] at @s unless entity @e[tag=b0ss,tag=p0ly,distance=..1.5] unless entity @a[tag=XPplayers,distance=..1.5] run tp @s ~ -1000 ~