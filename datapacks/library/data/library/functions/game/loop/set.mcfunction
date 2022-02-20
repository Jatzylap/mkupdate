execute at @s[tag=!mgc_r] run summon armor_stand ~ ~ ~ {Tags:[mgc-1r],Marker:1,NoGravity:1,Invisible:1,NoBasePlate:1,Small:1}
execute at @s[tag=!mgc_r] run tp @e[sort=nearest,tag=mgc-1r,limit=1] @s

execute at @s[tag=!target,tag=mgc_s] run data merge block -299 185 63 {Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_n,mgc_m0b],PersistenceRequired:1,DeathLootTable:""}}}]}
execute at @s[tag=!target,tag=mgc_s,tag=mgc_h] run data merge block -299 185 63 {Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_n,mgc_m0b,mgc_h],PersistenceRequired:1,DeathLootTable:""}}}]}
execute at @s[tag=target,tag=mgc_s] run data merge block -299 185 63 {Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_n,mgc_m0b,target],PersistenceRequired:1,DeathLootTable:""}}}]}
execute at @s[tag=target,tag=mgc_s,tag=mgc_h] run data merge block -299 185 63 {Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_n,mgc_m0b,target,mgc_h],PersistenceRequired:1,DeathLootTable:""}}}]}

execute at @s[tag=mgc_g,tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag merge value {NoGravity:1}
execute at @s[tag=mgc_d,tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Invulnerable:1}
execute at @s[tag=mgc_k,tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Attributes:[{Base:100d,Name:generic.knockback_resistance}]}
execute at @s[tag=mgc_m,tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Attributes:[{Base:0d,Name:generic.movement_speed}]}
execute at @s[tag=mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:slime_spawn_egg"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:3}
execute at @s[tag=mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:slime_spawn_egg"} if predicate 50-50 run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:2}
execute at @s[tag=mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:magma_cube_spawn_egg"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:3}
execute at @s[tag=mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:magma_cube_spawn_egg"} if predicate 50-50 run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:2}
execute at @s[tag=!mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:slime_spawn_egg"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:1}
execute at @s[tag=!mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:slime_spawn_egg"} if predicate 50-50 run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:0}
execute at @s[tag=!mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:magma_cube_spawn_egg"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:1}
execute at @s[tag=!mgc_b,tag=mgc_s] if data entity @s ArmorItems[0].tag{id:"minecraft:magma_cube_spawn_egg"} if predicate 50-50 run data modify block -299 185 63 Items[0].tag.EntityTag merge value {Size:0}

execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{head:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {ArmorItems:[{},{},{},{}]}
execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{chest:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {ArmorItems:[{},{},{},{}]}
execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{legs:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {ArmorItems:[{},{},{},{}]}
execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{feet:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {ArmorItems:[{},{},{},{}]}
execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{mainhand:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {HandItems:[{},{}]}
execute at @s[tag=mgc_s] unless data entity @s ArmorItems[1].tag{offhand:"?"} run data modify block -299 185 63 Items[0].tag.EntityTag merge value {HandItems:[{},{}]}
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.ArmorItems[3] merge from entity @s ArmorItems[1].tag.head
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.ArmorItems[2] merge from entity @s ArmorItems[1].tag.chest
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.ArmorItems[1] merge from entity @s ArmorItems[1].tag.legs
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.ArmorItems[0] merge from entity @s ArmorItems[1].tag.feet
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.HandItems[0] merge from entity @s ArmorItems[1].tag.mainhand
execute at @s[tag=mgc_s] run data modify block -299 185 63 Items[0].tag.EntityTag.HandItems[1] merge from entity @s ArmorItems[1].tag.offhand
data modify block -299 185 63 Items[0] merge from entity @s[tag=mgc_s] ArmorItems[0].tag
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:minecart"}]} run setblock -299 186 63 rail
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:chest_minecart"}]} run setblock -299 186 63 rail
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:furnace_minecart"}]} run setblock -299 186 63 rail
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:hopper_minecart"}]} run setblock -299 186 63 rail
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:command_block_minecart"}]} run setblock -299 186 63 rail
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:oak_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:spruce_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:jungle_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:acacia_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:dark_oak_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 if data block -299 185 63 {Items:[{Slot:0b,id:"minecraft:birch_boat"}]} run setblock -299 186 63 water
execute if score @e[name="M@K",limit=1] mgc matches ..99 unless entity @e[tag=end,tag=3vent,scores={mgc-1.5=0}] run setblock -299 184 63 redstone_block
execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} if score @e[name="M@K",limit=1] mgc matches 99 run tellraw @a[scores={mgc=1..}] ["",{"text":"\nEntity limit (","color":"red"},{"text":"100","color":"yellow","bold":true},{"text":") has been reached!","color":"red"}]

execute unless entity @e[tag=3vent,tag=entity,tag=target] if entity @e[tag=3vent,tag=entity,tag=!mgc_ent] run schedule function library:game/loop/entity 7
execute if entity @e[tag=3vent,tag=entity,tag=target,tag=!mgc_ent] unless entity @e[tag=3vent,tag=tr.5] run schedule function library:game/loop/entity 7
execute if entity @e[tag=3vent,tag=target,tag=!tr.1,tag=!tr.2,tag=!tr.3,tag=!tr.4,tag=!tr.5] run function library:game/loop/target

setblock -299 184 63 air
execute if score @s mgc matches 1 run tag @s add mgc_ent
tag @s remove c0n
#cosmetics
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:purple_dye"} run particle portal ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:magenta_dye"} run particle witch ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:white_dye"} run summon lightning_bolt ~ ~1 ~
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:black_dye"} run particle smoke ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:orange_dye"} run particle lava ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:red_dye"} run particle heart ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:lime_dye"} run particle composter ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:green_dye"} run particle note ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:blue_dye"} run particle warped_spore ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:cyan_dye"} run particle splash ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:light_blue_dye"} run particle soul_fire_flame ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:yellow_dye"} run particle flame ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:gray_dye"} run particle explosion ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:light_gray_dye"} run particle cloud ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]
execute unless entity @e[tag=!mgc_ent,tag=entity,tag=3vent] positioned ~ ~-1 ~ if data entity @e[limit=1,sort=random,tag=3vent,tag=particle,distance=..1] ArmorItems[0].tag{id:"minecraft:brown_dye"} run particle block dirt ~ ~0.5 ~ 0 0 0 0.1 5 force @a[scores={mgc=1..}]