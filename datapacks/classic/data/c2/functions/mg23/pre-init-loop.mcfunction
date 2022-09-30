execute as @a[tag=mk.10,scores={interact=1..}] at @s if entity @a[scores={mg23=1..},team=!,tag=CTFplayers] run tag @s add SPmg23
execute as @a[tag=mk.10,scores={interact=1..}] at @s if entity @a[scores={mg23=1..},team=!,tag=CTFplayers] run function clear:chat
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg23-red
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg23-blue
execute as @a[scores={2=1..}] at @s run tag @s remove mg23-red
execute as @a[scores={2=1..}] at @s run tag @s remove mg23-blue