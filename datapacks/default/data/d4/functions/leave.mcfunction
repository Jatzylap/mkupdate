tag @s add l3ave
tp @s[tag=!st0red,tag=D_C] -163 4 -93
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
tag @s remove TCplayers
scoreboard players reset @s mg26
scoreboard players enable @s lobby
execute as @a[scores={mg26=1..}] store result score @s c if entity @s