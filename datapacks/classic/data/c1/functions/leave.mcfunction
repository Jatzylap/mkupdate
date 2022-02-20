tp @s[tag=!st0red,tag=C_B] -18 4 -25
tp @s[tag=!st0red,tag=C_C] -51 5 35
tp @s[tag=!st0red,tag=C_P] -77 8 85
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
scoreboard players reset @s
scoreboard players enable @s lobby

data merge block -78 9 81 {Text3:''}
data merge block -77 9 81 {Text3:''}
data merge block -76 9 81 {Text3:''}
data merge block -78 8 81 {Text3:''}
data merge block -77 8 81 {Text3:''}
data merge block -76 8 81 {Text3:''}
execute store result score @a[scores={mg3=1..}] c if entity @a[scores={mg3=1..}]
execute at @p[scores={mg3=1..,c=1..}] run data merge block -78 9 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg3=1..,c=1..}]","objective":"c"},"color":"gold"}'}
execute store result score @a[scores={mg5=0..}] c if entity @a[scores={mg5=0..}]
execute at @p[scores={mg5=0..,c=1..}] run data merge block -77 9 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg5=0..,c=1..}]","objective":"c"},"color":"gold"}'}
execute store result score @a[scores={mg6=0..}] c if entity @a[scores={mg6=0..}]
execute at @p[scores={mg6=0..,c=1..}] run data merge block -76 9 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg6=0..,c=1..}]","objective":"c"},"color":"gold"}'}
execute store result score @a[scores={mg7=0..}] c if entity @a[scores={mg7=0..}]
execute at @p[scores={mg7=0..,c=1..}] run data merge block -78 8 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg7=0..,c=1..}]","objective":"c"},"color":"gold"}'}
execute store result score @a[scores={mg9=0..}] c if entity @a[scores={mg9=0..}]
execute at @p[scores={mg9=0..,c=1..}] run data merge block -77 8 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg9=0..,c=1..}]","objective":"c"},"color":"gold"}'}
execute store result score @a[scores={mg10=1..}] c if entity @a[scores={mg10=1..}]
execute at @p[scores={mg10=1..,c=1..}] run data merge block -76 8 81 {Text3:'{"extra":[{"text":" playing...","color":"gold"}],"score":{"name":"@p[scores={mg10=1..,c=1..}]","objective":"c"},"color":"gold"}'}