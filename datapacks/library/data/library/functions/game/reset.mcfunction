team remove mgc-sp
team remove mgc
stopsound @a[scores={mgc=-1..}] record
stopsound @a[tag=ed1t] record
effect clear @a[tag=ed1t]
tag @a[tag=ed1t] remove m-g
schedule clear library:game/loop/target
schedule clear library:game/loop/entity
schedule clear library:game/loop/entity/target
function library:game/loop/clear/target
scoreboard players reset * mgc-1
scoreboard players reset * mgc-2.1
scoreboard players reset @e[tag=3vent] mgc-1.4
function clear:chat
scoreboard players set @a[scores={mgc=1..}] mgc 0
gamemode adventure @a[scores={mgc=0}]
execute if data block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Store"}'} run clear @a[scores={mgc=0}]
execute if data block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Keep"}'} as @a[scores={mgc=0}] run function library:game/clear/player
tag @a[scores={mgc=-1..}] remove mg0
tag @a remove mgc_c
tag @a[scores={mgc=-1..}] remove m-g
tag @e[tag=3vent] remove mgc_ent
tag @e[tag=3vent] remove mgc_s
tag @e[tag=3vent] remove mgc_1r
tag @e[tag=3vent] remove mgc_nam3d
execute as @e[tag=3vent,tag=mgc-button] at @s run data merge entity @s {Marker:0}
tag @e[tag=3vent] remove mgc-button.g
tag @e[tag=3vent] remove mgc-button.t
tag @e[tag=3vent] remove mgc-block.s
tag @e[tag=3vent] remove mgc-block.g
tag @e[tag=3vent] remove mgc-particle.s
tag @e[tag=3vent] remove mgc-sound.s
tag @e[tag=3vent] remove press
tag @e[tag=3vent] remove mgc.p
tag @e[tag=mgc-spoint] remove mgc.p0s

execute as @e[tag=mgc_temp] at @s run data merge entity @s {Health:0,DeathTime:19s}
execute as @e[tag=mgc_m0b] at @s run tp ~ -1000 ~
kill @e[tag=3vent_bl0ck]
kill @e[tag=mgc_m0b_d]
kill @e[tag=mgc_m0b_d_t]
kill @e[tag=mgc-score]
kill @e[tag=mgc,type=marker]
kill @e[type=experience_orb,x=-307,y=-10,z=55,dx=16,dy=24,dz=16]
title @a[scores={mgc=0}] subtitle [""]
execute unless data block -301 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"OFF "}'} run title @a[scores={mgc=0}] title ["",{"selector":"@e[limit=1,tag=mgc_t1tle2]","color":"gold"}]
tellraw @a[tag=ed1t] ["",{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":" Resetting Game...","color":"aqua"}]
data merge block -302 14 54 {Lock:""}
data merge block -290 14 61 {Lock:""}
fill -316 2 69 -332 2 69 air replace repeater[delay=4,facing=east]
fill -291 16 59 -291 14 66 air replace barrier
fill -291 14 66 -290 16 66 air replace barrier
fill -291 16 59 -291 14 54 air replace barrier
fill -303 16 71 -307 14 71 air replace barrier
fill -308 14 55 -301 16 54 air replace barrier
fill -307 14 72 -308 16 66 air replace barrier
fill -300 16 54 -300 14 54 air replace barrier
setblock -317 2 69 air
setblock -299 15 72 air
execute unless blocks -335 2 57 -316 13 69 -299 14 63 masked run setblock -317 2 69 crimson_wall_sign[facing=north]{Text4:'{"text":"\\u26a0","color":"red","bold":true}',Text1:'{"text":"DO NOT PLACE","color":"white","bold":true}',Text2:'{"text":"ANYTHING HERE","bold":true,"color":"white"}',Text3:'{"text":"(","color":"white","extra":[{"text":"redstone signal","color":"green"},{"text":")","color":"white"}]}'} destroy
scoreboard players set @e[tag=end,tag=3vent] mgc-1.4 20
execute unless score @e[tag=end,tag=3vent,limit=1] mgc-1.1 matches 0.. run scoreboard players operation @e[tag=end,tag=3vent] mgc-1.4 *= @e[tag=end,tag=3vent,limit=1] mgc-1.3
execute unless score @e[tag=end,tag=3vent,limit=1] mgc-1.1 matches 0.. run scoreboard players operation @e[tag=end,tag=3vent] mgc-1.2 = @e[tag=end,tag=3vent,limit=1] mgc-1.4
scoreboard players set @e[tag=target,tag=3vent] mgc-1.4 20
execute unless score @e[tag=target,tag=3vent,limit=1] mgc-1.1 matches 0.. run scoreboard players operation @e[tag=target,tag=3vent] mgc-1.4 *= @e[tag=target,tag=3vent,limit=1] mgc-1.3
execute unless score @e[tag=target,tag=3vent,limit=1] mgc-1.1 matches 0.. run scoreboard players operation @e[tag=target,tag=3vent] mgc-1.2 = @e[tag=target,tag=3vent,limit=1] mgc-1.4
execute as @e[tag=3vent,tag=start] at @s run scoreboard players operation @s mgc-1.6 = @e[name="M@K",limit=1] mgc-1.6
scoreboard players reset * mgc-1
scoreboard players reset @e[tag=3vent] mgc-1.4
execute unless entity @e[tag=3vent,tag=count] run scoreboard players reset * mgc-1.4
scoreboard players reset * mgc-1.7
scoreboard players set @a[scores={mgc=0}] mgc -1
scoreboard players reset @a mgc-1.3
scoreboard players reset @a mgc-1.5
function library:game/clear/wall
bossbar remove mgc_time
bossbar remove mgc_time2
execute in overworld run forceload remove 0 0

forceload add -289 53 -309 73
forceload add -15 -25 -15 -1
forceload add -42 17
forceload add -50 59
forceload add -77 82
forceload add -48 35 -48 71
forceload add -78 -94 -102 -94
forceload add -66 -93
forceload add -132 -103
forceload add -40 -67
forceload add -163 -90 -127 -90

data merge block -15 6 -25 {Text3:''}
data merge block -15 6 -13 {Text3:''}
data merge block -15 6 -1 {Text3:''}
data merge block -42 8 17 {Text3:''}
data merge block -50 13 59 {Text3:''}
data merge block -77 10 82 {Text3:''}
data merge block -48 7 35 {Text3:''}
data merge block -48 7 47 {Text3:''}
data merge block -48 7 59 {Text3:''}
data merge block -48 7 71 {Text3:''}
data merge block -78 5 -94 {Text3:''}
data merge block -90 5 -94 {Text3:''}
data merge block -102 5 -94 {Text3:''}
data merge block -66 9 -93 {Text3:''}
data merge block -132 12 -103 {Text3:''}
data merge block -40 7 -67 {Text3:''}
data merge block -151 6 -90 {Text3:''}
data merge block -139 6 -90 {Text3:''}
data merge block -163 6 -90 {Text3:''}
data merge block -127 6 -90 {Text3:''}

forceload remove -15 -25 -15 -1
forceload remove -42 17
forceload remove -50 59
forceload remove -77 82
forceload remove -48 35 -48 71
forceload remove -78 -94 -102 -94
forceload remove -66 -93
forceload remove -132 -103
forceload remove -40 -67
forceload remove -163 -90 -127 -90

execute unless entity @a[scores={mgc=-1..}] run function library:game/exit
execute unless blocks -356 -10 71 -340 13 87 -299 14 63 masked unless entity @a[scores={mgc=-1..}] run schedule function library:game/reset/platform 7
execute unless entity @a[scores={mgc=-1..}] run schedule function library:game/reset/markers 35
execute if entity @a[scores={mgc=-1..}] run schedule function library:game/exit 85
execute unless blocks -356 -10 71 -340 13 87 -299 14 63 masked if entity @a[scores={mgc=-1..}] run schedule function library:game/reset/platform 87
execute if entity @a[scores={mgc=-1..}] run schedule function library:game/reset/markers 93