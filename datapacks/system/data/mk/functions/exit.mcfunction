execute at @s[tag=10bby,tag=!m-g] run function clear:chat
execute at @s[tag=m-g] run function clear:chat
execute at @s[tag=st0red] run function mk:restore
playsound entity.enderman.teleport master @s ~ ~ ~ 100000 1 0
effect clear @s
effect give @s resistance 100000 100 true
effect give @s saturation 1 255 true
effect give @s regeneration 1 255 true
tag @s[tag=!st0red] remove m-g
tag @s remove P0ft_pre
tag @s remove 10bby
tag @s remove mg0
execute at @s[tag=3xp0] run title @s title [""]
execute at @s[tag=3xp0] run title @s subtitle ["",{"text":"You were kicked from the Library...","color":"red"}]
execute at @s[tag=3xp0] run advancement grant @s only mk:get_expelled
tag @s remove 3xp0
tag @s remove draw0c
tag @s remove draw0d
tag @s remove draw0l
tag @s remove T1
tag @s remove T2
tag @s remove T3
tag @s remove PG
function clear:tools
team leave @s[tag=!draw0c,tag=!draw0d,tag=!draw0l]
execute at @s[team=,tag=!D_,tag=!C_,tag=!L_,tag=!3xp] run trigger lobby
execute at @s[team=,tag=!D_,tag=!C_,tag=!L_,tag=3xp] run tag @s add L_
execute in overworld run tp @s[tag=C_] -60 4 -8 -90 -15
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle large_smoke -60 5 -8 1 1 1 1 3000 force @a[tag=P0ft,tag=!N0,tag=C_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle end_rod -60 5 -8 1 1 1 1 1000 force @a[tag=P0ft,tag=!N0,tag=C_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle composter -60 5 -8 1 1 1 1 100 force @a[tag=P0ft,tag=!N0,tag=C_]
execute in overworld run tp @s[tag=D_] -113 4 -61 -180 -15
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle large_smoke -113 5 -61 1 1 1 1 3000 force @a[tag=P0ft,tag=!N0,tag=D_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle end_rod -113 5 -61 1 1 1 1 1000 force @a[tag=P0ft,tag=!N0,tag=D_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle composter -113 5 -61 1 1 1 1 100 force @a[tag=P0ft,tag=!N0,tag=D_]
execute in overworld run tp @s[tag=L_] -167 4 -8 90 -15
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle large_smoke -167 5 -8 1 1 1 1 3000 force @a[tag=P0ft,tag=!N0,tag=L_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle end_rod -167 5 -8 1 1 1 1 1000 force @a[tag=P0ft,tag=!N0,tag=L_]
execute at @s[tag=P0ft] unless score @s lobby matches 1.. run particle composter -167 5 -8 1 1 1 1 100 force @a[tag=P0ft,tag=!N0,tag=L_]
spawnpoint @s -113 13 -8
scoreboard players reset @s mg13
scoreboard players reset @s mg17
scoreboard players reset @s mg18
execute at @s[tag=!PG] run function c3:reset
tag @s remove L_
tag @s remove C_
tag @s remove D_
scoreboard players enable @s lobby
scoreboard players enable @s particle