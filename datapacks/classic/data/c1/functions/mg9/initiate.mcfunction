data merge block -77 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg9"}}'}
scoreboard players enable @a[scores={mg9=0..}] lobby

tag @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TTplayers] add TTplayers
effect clear @a[scores={mg9=0..}]
execute if predicate 50-50 run tp @a[scores={mg9=0..}] 109.0 36 -58.0
spawnpoint @a[scores={mg9=0..},tag=TTplayers,x=95,y=19,z=-69,dx=43,dz=21,dy=21] 109 36 -58
spawnpoint @a[scores={mg9=0..},tag=TTplayers,x=-73,y=2,z=69,dx=13,dy=3,dz=13] 125 36 -58
execute as @a[scores={mg9=0..},tag=TTplayers,x=-73,y=2,z=69,dx=13,dy=3,dz=13] at @s run tp @s 125.0 36 -58.0
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove TTplayers
team modify mg9 friendlyFire false
team modify mg9 color red
bossbar add tt_timer ["",{"text":"TNT","color":"red","bold":true},{"text":" Timer","color":"gold","bold":true}]
bossbar set tt_timer color red
bossbar set tt_timer max 1000
scoreboard players reset @a mg9.1
gamemode adventure @a[scores={mg9=0..},tag=TTplayers]

setblock -337 2 -74 redstone_block