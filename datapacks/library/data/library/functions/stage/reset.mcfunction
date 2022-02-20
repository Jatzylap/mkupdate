execute as @e[tag=p0ly,tag=6,tag=b0ss] at @s run playsound entity.panda.pre_sneeze master @a ~ ~ ~ 2 0
execute as @e[tag=p0ly,tag=6,tag=b0ss] at @s run effect give @e[tag=p0ly,tag=0] invisibility 2 10 true
execute as @e[tag=p0ly,tag=6,tag=b0ss] at @s run particle end_rod ~ ~-1 ~ 0.2 0.5 0.2 0.5 1600 normal @a
tag @e[tag=p0ly,tag=6,tag=b0ss] add 0
tag @e[tag=p0ly,tag=b0ss] remove 6
stopsound @a[tag=mg-1] master music_disc.pigstep
tag @a[tag=mg-1] add m-g
effect clear @a[tag=mg-1]
team remove mg-1
tag @e remove mg-1
tag @e remove mg-1re
tag @e remove mg-1s
tag @a remove mg-1x
tag @a remove XPplayers
scoreboard players reset @e[limit=1,name="M@K"] 6
scoreboard players reset * mg-1
scoreboard players reset * mg-1.4
kill @e[tag=mg-1b]
kill @e[tag=mg-1bc]
kill @e[tag=mg-1bp]
tp @e[tag=mg-1bt] ~ -1000 ~
tp @e[tag=mg-1c] ~ -1000 ~
bossbar remove mg-1