data merge block -78 9 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg3"}}'}
scoreboard players enable @a[scores={mg3=1..}] lobby

fill -15 25 91 -50 25 125 snow_block keep
fill -15 14 91 -50 14 125 snow_block keep
fill -15 3 91 -50 3 125 snow_block keep
tag @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SpleefPlayers] add SpleefPlayers
effect clear @a[scores={mg3=1..}]
tp @a[scores={mg3=1..}] -32 27 108
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove SpleefPlayers
scoreboard players reset @a mg3.1
effect give @a[scores={mg3=1..}] resistance 100000 100 true
effect give @a[scores={mg3=1..}] fire_resistance 100000 100 true
gamemode adventure @a[scores={mg3=1..},tag=SpleefPlayers]
setblock -312 2 -41 redstone_block