#TP to waiting area
execute if data block -326 4 -4 {Text3:'{"bold":true,"color":"green","text":"OVERWORLD"}'} run tag @s add T1
execute if data block -326 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"NETHER"}'} run tag @s add T2
execute if data block -326 4 -4 {Text3:'{"bold":true,"color":"aqua","text":"ENDER"}'} run tag @s add T3
tag @s remove T0
tag @s remove 4
tag @s remove 5
tp @s[tag=T1] -348 3 -8
tp @s[tag=T2] -341 3 14
tp @s[tag=T3] -319 3 25
spawnpoint @s[tag=T1] -348 3 -8
spawnpoint @s[tag=T2] -341 3 14
spawnpoint @s[tag=T3] -319 3 25
tag @s add PG
tag @s add m-g
scoreboard players set @s pg1.2 0
function clear:chat
tellraw @a[tag=PG,tag=T1] ["",{"selector":"@s","color":"green","bold":true},{"text":" has joined the ","color":"yellow"},{"text":"Party","color":"gold"}]
tellraw @a[tag=PG,tag=T2] ["",{"selector":"@s","color":"gold","bold":true},{"text":" has joined the ","color":"yellow"},{"text":"Party","color":"gold"}]
tellraw @a[tag=PG,tag=T3] ["",{"selector":"@s","color":"aqua","bold":true},{"text":" has joined the ","color":"yellow"},{"text":"Party","color":"gold"}]