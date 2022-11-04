setblock -299 15 72 warped_button
tag @e[type=armor_stand,x=-356,y=-13,z=71,dx=19,dy=35,dz=16] remove 3vent
tag @e[type=armor_stand,x=-356,y=-13,z=71,dx=19,dy=35,dz=16] remove focus

#Selected
execute as @e[tag=3vent,tag=sound,tag=target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=sound,tag=target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,sound,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=sound,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=sound,tag=target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=sound,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=sound,tag=target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=sound,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=sound,tag=target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=target,tag=sound] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=block,tag=target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=block,tag=target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,block,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=block,tag=target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=block,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=block,tag=target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=block,tag=target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=block,tag=target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=target,tag=block] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=entity,tag=target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=entity,tag=target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,entity,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=entity,tag=mgc_r3s] at @s store result score @s mgc-1.8 run data get entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] AbsorptionAmount
execute as @e[tag=entity,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=entity,tag=mgc_r3s] at @s store result score @s mgc-2 run data get entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] Attributes[{Name:"minecraft:generic.max_health"}].Base
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=entity,tag=target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=target,tag=entity] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=particle,tag=target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=particle,tag=target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,particle,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=particle,tag=target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=particle,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=particle,tag=target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=particle,tag=target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=particle,tag=target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=target,tag=particle] at @s unless data entity @s Passengers[0] run kill @s


#Unselected
execute as @e[tag=3vent,tag=sound,tag=!target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=sound,tag=!target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,sound,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=sound,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=sound,tag=!target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=sound,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=sound,tag=!target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=sound,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=sound,tag=!target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=!target,tag=sound] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=block,tag=!target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=block,tag=!target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,block,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=block,tag=!target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=block,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=block,tag=!target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=block,tag=!target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=block,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=block,tag=!target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=!target,tag=block] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=entity,tag=!target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=entity,tag=!target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,entity,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=entity,tag=!target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=entity,tag=mgc_r3s] at @s store result score @s mgc-1.8 run data get entity @e[limit=1,tag=entity,tag=!target,nbt={ShowArms:1b},sort=nearest] AbsorptionAmount
execute as @e[tag=entity,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=entity,tag=!target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=entity,tag=!target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=entity,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=entity,tag=!target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=!target,tag=entity] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=particle,tag=!target,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=particle,tag=!target,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,particle,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s ArmorItems set from entity @e[limit=1,tag=particle,tag=!target,nbt={ShowArms:1b},sort=nearest] ArmorItems
execute as @e[tag=particle,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=particle,tag=!target,nbt={ShowArms:1b},sort=nearest] DisabledSlots
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=particle,tag=!target,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=particle,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=particle,tag=!target,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=!target,tag=particle] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=button,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=button,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,button,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:armor_stand,Small:1,Invisible:1,Invulnerable:1,Tags:[3vent,gl0w,mgc-button],Team:mgc-button}]}
execute as @e[tag=button,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=button,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=button,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=button,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=button] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=start,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=start,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,start,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-start],Team:mgc-start}]}
execute as @e[tag=start,tag=mgc_r3s] at @s store result score @s mgc-1.6 run data get entity @e[limit=1,tag=start,nbt={ShowArms:1b},sort=nearest] AbsorptionAmount
execute as @e[tag=start,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=start,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=start,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=start,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=start] at @s unless data entity @s Passengers[0] run kill @s

execute as @e[tag=3vent,tag=end,tag=!mgc_r3s] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run data merge entity @s {ShowArms:1}
execute as @e[tag=3vent,tag=end,nbt={ShowArms:1b}] at @s unless entity @a[scores={mgc=-1..}] unless data entity @s Passengers[0] run summon armor_stand ~ ~ ~ {Tags:[3vent,end,mgc_r3s],NoGravity:1,Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-end],Team:mgc-end}]}
execute as @e[tag=end,tag=mgc_r3s] at @s store result score @s mgc-1.1 run data get entity @e[limit=1,tag=end,nbt={ShowArms:1b},sort=nearest,tag=ob.1] DisabledSlots
execute as @e[tag=end,tag=mgc_r3s] at @s store result score @s mgc-1.3 run data get entity @e[limit=1,tag=end,nbt={ShowArms:1b},sort=nearest,tag=ob.2] DisabledSlots
execute as @e[tag=end,tag=mgc_r3s] at @s store result score @s mgc-1.9 run data get entity @e[limit=1,tag=end,nbt={ShowArms:1b},sort=nearest] AbsorptionAmount
execute as @e[tag=end,tag=mgc_r3s] at @s run data modify entity @s Rotation set from entity @e[limit=1,tag=end,nbt={ShowArms:1b},sort=nearest] Rotation
execute as @e[tag=end,tag=mgc_r3s] at @s run data modify entity @s Tags set from entity @e[limit=1,tag=end,nbt={ShowArms:1b},sort=nearest] Tags
execute as @e[nbt={ShowArms:1b},tag=end] at @s unless data entity @s Passengers[0] run kill @s
tag @e[tag=3vent] remove mgc_r3s
kill @e[tag=3vent,tag=!start,tag=!end,tag=!entity,tag=!block,tag=!particle,tag=!sound,tag=!button,tag=!gl0w]
forceload remove -289 53 -309 73