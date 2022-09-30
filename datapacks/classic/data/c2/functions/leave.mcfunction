tag @s add l3ave
tp @s[tag=!st0red,tag=C_B] -18 4 -13
tp @s[tag=!st0red,tag=C_C] -51 5 47
tp @s[tag=!st0red,tag=C_P] -42 6 20
execute at @s[tag=PG] run function mk:exit
playsound block.beehive.exit master @s ~ ~ ~ 100000
tag @s remove 2
tag @s remove 4
tag @s remove 5
scoreboard players reset @s mg2
scoreboard players reset @s mg8
scoreboard players reset @s mg23
scoreboard players enable @s lobby
execute as @a[scores={mg2=1..}] store result score @s c if entity @s
execute as @a[x=316,y=3,z=-143,dx=38,dy=32,dz=27] store result score @s c if entity @s 
execute as @a[scores={mg23=1..}] store result score @s c if entity @s