execute as @e[tag=3vent,tag=entity] at @s if entity @a[scores={mgc=0..}] run setblock -299 184 63 air
execute as @e[tag=3vent,tag=block] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace barrier
execute as @e[tag=3vent,tag=mgc_s,tag=!mgc_t,tag=mgc_b] at @s if data entity @s ArmorItems[0].tag{id:"minecraft:fire_charge"} run execute as @e[tag=mgc_m0b,type=small_fireball,limit=1,sort=nearest] at @s run summon fireball ~ ~ ~ {Tags:[mgc_m0b]}
execute as @e[tag=3vent,tag=mgc_s,tag=!mgc_t,tag=mgc_b] at @s if data entity @s ArmorItems[0].tag{id:"minecraft:fire_charge"} run execute as @e[tag=mgc_m0b,type=small_fireball,sort=nearest,limit=1] at @s run kill
tag @e[type=!player,type=!marker,x=-299,y=185,z=63,distance=..9] add mgc_n
execute as @e[tag=3vent,tag=mgc_s,tag=target] at @s run tag @e[type=!player,x=-299,y=185,z=63,distance=..9] add target
execute as @e[tag=3vent,tag=mgc_s,scores={mgc-1.8=1..}] at @s store result entity @e[limit=1,type=!player,x=-299,y=185,z=63,distance=..9] Item.Count byte 1 run scoreboard players get @s mgc-1.8
execute as @e[tag=3vent,tag=mgc_s,scores={mgc-2=1..}] at @s store result entity @e[limit=1,type=!player,x=-299,y=185,z=63,distance=..9] Health float 1 run scoreboard players get @s mgc-2
execute if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"extra":[{"bold":false,"text":"Non-"},{"bold":true,"text":"Target"}],"text":"Kill "}'} if entity @e[tag=3vent,tag=!mgc_t,tag=mgc_s,tag=!target,limit=1] as @e[limit=1,type=!player,x=-296,y=200,z=63,distance=..20] at @s run summon armor_stand ~ ~ ~ {NoBasePlate:1,Invisible:1,Small:1,Invulnerable:1,Tags:[mgc_m0b_d]}
execute if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Target"}'} if entity @e[tag=3vent,tag=mgc_s,tag=!mgc_t,tag=target,limit=1] as @e[limit=1,type=!player,x=-296,y=200,z=63,distance=..20] at @s run summon armor_stand ~ ~ ~ {NoBasePlate:1,Invisible:1,Small:1,Invulnerable:1,Tags:[mgc_m0b_d_t]}
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s if entity @e[type=item,x=-296,y=200,z=63,distance=..20] run summon falling_block 0 99 0 {Time:1,Tags:[3vent_3ntity]}
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s run data modify entity @e[sort=nearest,limit=1,tag=!f0und,tag=3vent_3ntity] BlockState.Name set from entity @s ArmorItems[0].tag.id
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s run data modify entity @e[sort=nearest,limit=1,tag=!f0und,tag=3vent_3ntity] TileEntityData set from entity @s ArmorItems[0].tag.tag.BlockEntityTag
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s unless data entity @s ArmorItems[0].tag{id:"minecraft:sand"} store success score @e[limit=1,tag=3vent_3ntity,tag=!f0und] mgc-2 unless data entity @e[limit=1,tag=3vent_3ntity,tag=!f0und] BlockState{Name:"minecraft:sand"}
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s if data entity @s ArmorItems[0].tag{id:"minecraft:sand"} store success score @e[limit=1,tag=3vent_3ntity,tag=!f0und] mgc-2 if data entity @e[limit=1,tag=3vent_3ntity,tag=!f0und] BlockState{Name:"minecraft:sand"}
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s run tp @e[limit=1,tag=3vent_3ntity,tag=!f0und,scores={mgc-2=1}] @s
execute as @e[tag=3vent_3ntity,tag=!f0und,scores={mgc-2=1}] at @s run kill @e[type=item,x=-296,y=200,z=63,distance=..20]
execute as @e[tag=!mgc_t,tag=mgc_s,tag=3vent] at @s run tag @e[sort=nearest,limit=1,tag=!f0und,tag=3vent_3ntity] add f0und
kill @e[tag=3vent_3ntity,scores={mgc-2=0}]

tp @e[type=!player,x=-296,y=200,z=63,distance=..20] @e[tag=3vent,tag=mgc_s,limit=1]
tp @e[type=experience_orb,x=-309,y=21,z=53,dx=20,dy=3,dz=20] @e[tag=3vent,tag=mgc_s,limit=1]
tp @e[type=item,x=-309,y=21,z=53,dx=20,dy=3,dz=20] @e[tag=3vent,tag=mgc_s,limit=1]
execute as @e[type=armor_stand,tag=mgc-1r] at @s unless data block -290 15 57 {Text3:'{"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"NEVER"}'} run function library:game/loop/ray
setblock -299 186 63 air
execute if entity @e[tag=tr.5,tag=3vent] unless entity @e[tag=3vent,tag=target,tag=entity,tag=!mgc_ent] run tag @e[tag=3vent,tag=target] remove mgc_ent
execute unless entity @e[tag=3vent,tag=target,tag=entity,tag=!mgc_ent] if data block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Periodic"}'} run tag @e[tag=3vent,tag=target] remove mgc_ent
execute if entity @a[scores={mgc=-1..}] run setblock -299 184 63 air