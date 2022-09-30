execute at @s[x=-67,y=5,z=76,distance=..10] run function c1:leave
execute at @s[x=99,y=2,z=-75,dx=10,dy=4,dz=13] run function c2:leave
execute at @s[x=-88,y=5,z=87,distance=..10] run function c2:leave
execute at @s[x=316,y=3,z=-143,dx=38,dy=32,dz=27] run function c2:leave
execute at @s[x=-31,y=5,z=-46,distance=..10] run function c3:leave
execute at @s[x=268,y=4,z=12,distance=..9] run function c4:leave
execute at @s[x=726,y=205,z=42,dx=39,dy=9,dz=42] run function d2:leave

execute at @s[tag=!l3ave,tag=10bby,tag=!m-g] run function clear:chat
execute at @s[tag=!l3ave,tag=m-g,tag=!st0red] run function clear:chat
execute at @s[tag=!l3ave,tag=st0red] run function mk:restore
playsound entity.enderman.teleport master @s[tag=!l3ave,tag=!st0red] ~ ~ ~ 100000 1 0
effect clear @s[tag=!l3ave]
effect give @s[tag=!l3ave] resistance 100000 100 true
effect give @s[tag=!l3ave] saturation 1 255 true
effect give @s[tag=!l3ave] regeneration 1 255 true
tag @s[tag=!st0red] remove m-g
tag @s[tag=!l3ave] remove P0ft_pre
tag @s[tag=!l3ave] remove 10bby
tag @s[tag=!l3ave] remove mg0
execute at @s[tag=!l3ave,tag=3xp0] run title @s title [""]
execute at @s[tag=!l3ave,tag=3xp0] run title @s subtitle ["",{"text":"You were kicked out of the Library...","color":"red"}]
execute at @s[tag=!l3ave,tag=3xp0] run advancement grant @s only mk:get_expelled
tag @s[tag=!l3ave] remove 3xp0
tag @s[tag=!l3ave] remove draw0c
tag @s[tag=!l3ave] remove draw0d
tag @s[tag=!l3ave] remove draw0l
tag @s[tag=!l3ave] remove T1
tag @s[tag=!l3ave] remove T2
tag @s[tag=!l3ave] remove T3
tag @s[tag=!l3ave] remove PG
function clear:tools
team leave @s[tag=!l3ave,tag=!draw0c,tag=!draw0d,tag=!draw0l]
execute at @s[tag=!l3ave,team=,tag=!D_,tag=!C_,tag=!L_,tag=!3xp] run trigger lobby
execute at @s[tag=!l3ave,team=,tag=!D_,tag=!C_,tag=!L_,tag=3xp] run tag @s add L_
execute in overworld run tp @s[tag=!l3ave,tag=C_] -60 4 -8 -90 -15
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle large_smoke ~ ~1 ~ 1 1 1 1 3000 force @a[tag=P0ft,tag=!N0]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle end_rod ~ ~1 ~ 1 1 1 1 1000 force @a[tag=P0ft,tag=!N0]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle composter ~ ~1 ~ 1 1 1 1 100 force @a[tag=P0ft,tag=!N0]
execute in overworld run tp @s[tag=!l3ave,tag=D_] -113 4 -61 -180 -15
execute in overworld run tp @s[tag=!l3ave,tag=L_] -167 4 -8 90 -15
scoreboard players reset @s[tag=m-g,nbt=!{SpawnForced:1b}] mgc
tp @s[tag=m-g,nbt=!{SpawnForced:1b}] -113 13 -8
spawnpoint @s[tag=!l3ave] -113 13 -8
scoreboard players reset @s[tag=!l3ave] mg13
scoreboard players reset @s[tag=!l3ave] mg17
scoreboard players reset @s[tag=!l3ave] mg18
execute at @s[tag=!l3ave,tag=!PG] run function c3:reset
tag @s[tag=!l3ave] remove L_
tag @s[tag=!l3ave] remove C_
tag @s[tag=!l3ave] remove D_
tag @s remove l3ave
scoreboard players enable @s lobby
scoreboard players enable @s particle