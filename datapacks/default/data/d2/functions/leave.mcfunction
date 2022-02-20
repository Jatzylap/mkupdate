tp @s[tag=!st0red,tag=D_B] -90 3 -97
tp @s[tag=!st0red,tag=D_C] -51 5 47
tp @s[tag=!st0red,tag=D_P] -42 6 20
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
team leave @s
scoreboard players reset @s
scoreboard players enable @s lobby

data merge block -90 4 -93 {Text3:''}
execute store result score @a[scores={mg16=1..}] c if entity @a[scores={mg16=1..}]
execute at @p[scores={mg16=1..,c=1..}] run data merge block -90 4 -93 {Text3:'{"score":{"name":"@p[scores={mg16=1..,c=1..}]","objective":"c"},"color":"gold"}'}