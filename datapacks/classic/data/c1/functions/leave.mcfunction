tag @s add l3ave
tp @s[tag=!st0red,tag=C_B] -18 4 -25
tp @s[tag=!st0red,tag=C_C] -51 5 35
tp @s[tag=!st0red,tag=C_P] -77 8 85
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
scoreboard players reset @s mg3
scoreboard players reset @s mg5
scoreboard players reset @s mg6
scoreboard players reset @s mg7
scoreboard players reset @s mg9
scoreboard players reset @s mg10
scoreboard players enable @s lobby
execute as @a[scores={mg3=1..}] store result score @s c if entity @s
execute as @a[scores={mg5=0..}] store result score @s c if entity @s
execute as @a[scores={mg6=0..}] store result score @s c if entity @s
execute as @a[scores={mg7=0..}] store result score @s c if entity @s
execute as @a[scores={mg9=0..}] store result score @s c if entity @s
execute as @a[scores={mg10=1..}] store result score @s c if entity @s
