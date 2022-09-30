data merge block -76 9 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg6"}}'}
scoreboard players enable @a[scores={mg6=0..}] lobby

tag @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!VFplayers] add VFplayers
effect clear @a[scores={mg6=0..}]
tp @a[scores={mg6=0..}] 100 46 -17
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove VFplayers
team modify mg6 friendlyFire false
scoreboard players reset @a mg6.1
effect give @a[scores={mg6=0..}] regeneration 1 255 true
effect give @a[scores={mg6=0..}] resistance 100000 100 true
effect give @a[scores={mg6=0..}] fire_resistance 100000 100 true
spreadplayers 100 -17 5 8 false @a[scores={mg6=0..}]
gamemode adventure @a[scores={mg6=0..},tag=VFplayers]
execute unless entity @a[scores={mg6=0}] run summon marker 100 46 -17 {CustomName:"{\"text\":\"mg6\"}"}

setblock -337 2 -63 redstone_block