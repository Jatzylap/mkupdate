tag @s add l3ave
execute in overworld run tp @s[tag=!st0red,tag=C_C] -51 5 71
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
tag @s remove RGUplayers
tag @s remove RGUturn
scoreboard players reset @s mg25
scoreboard players enable @s lobby
execute as @a[scores={mg25=1..}] store result score @s c if entity @s