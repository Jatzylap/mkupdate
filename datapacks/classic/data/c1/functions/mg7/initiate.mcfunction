#Debug
kill @e[x=101,y=2,z=-31,dx=29,dz=28,dy=20,type=tnt]
execute in overworld run forceload add 131 -2 100 -32

data merge block -78 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg7"}}'}
scoreboard players enable @a[scores={mg7=0..}] lobby

tag @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TRplayers] add TRplayers
effect clear @a[scores={mg7=0..}]
tp @a[scores={mg7=0..}] 115 18 -17
team modify mg7 friendlyFire false
scoreboard players reset @a mg7.1
scoreboard players set @a[scores={mg7=0..},tag=TRplayers] mg7.3 300
effect give @a[scores={mg7=0..}] regeneration 1 255 true
effect give @a[scores={mg7=0..}] resistance 100000 100 true
spreadplayers 115 -17 3 6 under 18 false @a[scores={mg7=0..}]
spawnpoint @a[scores={mg7=0..}] 115 18 -17
gamemode adventure @a[scores={mg7=0..},tag=TRplayers]

setblock -315 2 -64 redstone_block