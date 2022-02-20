team remove mgc
tag @e[tag=3vent] remove mgc.sp
effect clear @a[scores={mgc=-1..}]
tag @a[scores={mgc=-1..}] remove C_
tag @a[scores={mgc=-1..}] remove D_
tag @a[scores={mgc=-1..}] remove L_
tag @a[scores={mgc=-1..}] remove l0se
tag @e[tag=3vent] remove mgc_ent
tag @e[tag=3vent] remove c0n
execute as @a[scores={mgc=-1..}] at @s run function mk:restore
execute as @a[scores={mgc=-1..}] at @s run spawnpoint @s -113 14 -8
execute as @a[scores={mgc=-1..},tag=!PG] at @s unless data block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":true,"color":"aqua","text":" MANUAL"}],"text":""}'} unless score @s lobby matches 1.. run function mk:exit
execute unless blocks -356 2 71 -340 13 87 -299 14 63 masked run fill -307 0 71 -291 11 55 air
execute unless blocks -356 1 88 -335 1 100 -299 14 63 masked run fill -337 2 57 -316 12 69 air
execute as @e[tag=3vent,tag=start] at @s run scoreboard players operation @s mgc-1.6 = @e[name="M@K",limit=1] mgc-1.4
execute if entity @a[tag=PG,scores={mgc=-1..}] run function library:event/schedule/next
scoreboard players reset * mgc
execute as @e[tag=end,tag=3vent] at @s unless score @e[tag=end,tag=3vent,limit=1] mgc-1.1 matches 0.. run function library:game/calculate
execute as @e[tag=target,tag=3vent] at @s unless score @e[tag=end,tag=3vent,limit=1] mgc-1.1 matches 0.. run function library:game/calculate
scoreboard players reset @e[tag=3vent] mgc-1.4
scoreboard players reset * mgc-1.5
scoreboard players reset @e[limit=1,name="M@K"] mgc-1.8
schedule function library:game/clear/generate 1