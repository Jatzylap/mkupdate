#Spectators
gamemode spectator @a[tag=SPmg3]
execute as @a[tag=SPmg3] at @s unless entity @s[x=-51,y=6,z=90,dx=36,dy=30,dz=36] run tp -32 27 108

execute as @r[scores={mg3=1..},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg3=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg3=1..,2=1..},tag=st0red] at @s run clear @s #spleef_items{CPG:1b}
execute as @a[scores={mg3=1..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg3=1..,lobby=1..}] at @s run tag @s remove SPmg3
execute as @a[scores={mg3=1..,lobby=1..}] at @s run scoreboard players reset @s mg3

#Main
execute as @a[scores={mg3=1..,mg3.1=0},tag=SpleefPlayers] at @s if block ~ ~ ~ lava run function c1:mg3/death
gamemode spectator @a[scores={mg3.2=1..}]
execute as @a[scores={mg3.2=1..}] at @s unless entity @s[x=-50,y=1,z=90,dx=36,dy=30,dz=36] run tp -32 27 108
execute if entity @a[scores={mg3=1..,mg3.1=0}] run item replace entity @a[scores={mg3=1..},tag=SpleefPlayers] hotbar.0 with diamond_shovel{HideFlags:15,Unbreakable:1,Enchantments:[{id:efficiency,lvl:1}],CanDestroy:[snow,snow_block],CPG:1b}
execute as @a[scores={mg3=1..},tag=SpleefPlayers] at @s if block ~ ~-1 ~ lava run particle large_smoke ~ ~ ~ 0.45 0.6 0.45 0 5 force @a[scores={mg3=1..}]
kill @e[type=item,x=-50,y=1,z=90,dx=36,dy=30,dz=36]
execute store result bossbar spleef_countdown value if entity @a[scores={mg3=1..},tag=!SpleefLonely,tag=SpleefPlayers]
bossbar set spleef_countdown players @a[scores={mg3=1..},tag=SpleefPlayers]
execute as @a[scores={mg3=1..},tag=SpleefPlayers,tag=SpleefLonely] at @s run execute if entity @a[scores={mg3=1..},tag=SpleefPlayers,tag=!SpleefLonely] run tag @a[scores={mg3=1..}] remove SpleefLonely
execute as @r[limit=1,scores={mg3=1..},tag=SpleefPlayers] unless entity @a[scores={mg3=1..},tag=SpleefPlayers,tag=SpleefLonely] run tag @s add SpleefLonely
execute as @a[scores={mg3=1..},tag=SpleefLonely,tag=SpleefPlayers,limit=1] at @s unless entity @a[scores={mg3=1..},tag=!SpleefLonely,tag=SpleefPlayers] run setblock -305 2 -33 redstone_block keep
tag @e[type=snowball,x=-50,y=1,z=90,dx=36,dy=30,dz=36] add SpleefBall
execute as @e[type=snowball,tag=SpleefBall] at @s if block ^ ^-0.5 ^0.3 snow_block run tag @s add Spleef_InGround
execute as @e[type=snowball,tag=SpleefBall] at @s if block ^ ^-0.5 ^0.3 snow_block run tag @s add Spleef_InGround
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^-0.3 ^0.1 ^ air replace snow
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^-0.3 ^-0.6 ^ air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^-0.3 ^0.3 ^ air replace snow
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^-0.3 ^0.1 ^ air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^0.3 ^ ^0.1 air replace snow
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^0.3 ^-0.1 ^ air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^ ^-0.2 ^0.3 air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^ ^ ^-0.3 air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^0.3 ^0.1 ^0.2 air replace snow_block
execute as @e[type=snowball,tag=SpleefBall] at @s run fill ^ ^ ^ ^0.3 ^-0.5 ^-0.1 air replace snow_block
execute as @a[scores={mg3=1..,mg3.3=1..},tag=SpleefPlayers] at @s run give @s snowball{CPG:1b}
scoreboard players reset @a mg3.3