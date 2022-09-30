#Structure 1
execute at @s[tag=catapult_p1] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1] eyes
execute at @s[tag=catapult_p1] store result score @e[limit=1,tag=catapult,sort=nearest] mg22 run data get entity @s Rotation[0]
execute if score @s[tag=catapult] mg22 matches -180..-91 as @e[tag=catapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:north} run kill
execute if score @s[tag=catapult] mg22 matches -90..0 as @e[tag=catapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:east} run kill
execute if score @s[tag=catapult] mg22 matches 1..90 as @e[tag=catapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:south} run kill
execute if score @s[tag=catapult] mg22 matches 91..179 as @e[tag=catapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:west} run kill
execute unless data entity @s[tag=catapult_p1] Passengers run kill
execute if score @s[tag=catapult] mg22 matches -180..-91 unless entity @e[tag=catapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,catapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,catapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=catapult] mg22 matches -90..0 unless entity @e[tag=catapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,catapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,catapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:east},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=catapult] mg22 matches 1..90 unless entity @e[tag=catapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,catapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,catapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:south},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=catapult] mg22 matches 91..179 unless entity @e[tag=catapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,catapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,catapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:west},Name:"minecraft:grindstone"}}]}
execute at @s[tag=catapult_p1] positioned ~ 2.2 ~0.07 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=catapult_p2] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 1.75 ~0.48 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=catapult_p3] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 1.15 ~1 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=catapult_p4] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~-0.07 2.2 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=catapult_p2] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~-0.48 1.75 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=catapult_p3] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~-1 1.15 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=catapult_p4] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 2.2 ~-0.07 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=catapult_p2] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 1.75 ~-0.48 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=catapult_p3] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 1.15 ~-1 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=catapult_p4] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~0.07 2.2 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=catapult_p2] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~0.48 1.75 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=catapult_p3] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~1 1.15 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=catapult_p4] ~ ~ ~
execute at @s[tag=catapult_p1] positioned ~ 2.2 ~0.07 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p2] {Rotation:[0f]}
execute at @s[tag=catapult_p1] positioned ~ 1.75 ~0.48 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p3] {Rotation:[0f]}
execute at @s[tag=catapult_p1] positioned ~ 1.15 ~1 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p4] {Rotation:[0f]}
execute at @s[tag=catapult_p1] positioned ~-0.07 2.2 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p2] {Rotation:[90f]}
execute at @s[tag=catapult_p1] positioned ~-0.48 1.75 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p3] {Rotation:[90f]}
execute at @s[tag=catapult_p1] positioned ~-1 1.15 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p4] {Rotation:[90f]}
execute at @s[tag=catapult_p1] positioned ~ 2.2 ~-0.07 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p2] {Rotation:[180f]}
execute at @s[tag=catapult_p1] positioned ~ 1.75 ~-0.48 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p3] {Rotation:[180f]}
execute at @s[tag=catapult_p1] positioned ~ 1.15 ~-1 if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p4] {Rotation:[180f]}
execute at @s[tag=catapult_p1] positioned ~0.07 2.2 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p2] {Rotation:[-90f]}
execute at @s[tag=catapult_p1] positioned ~0.48 1.75 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p3] {Rotation:[-90f]}
execute at @s[tag=catapult_p1] positioned ~1 1.15 ~ if score @e[limit=1,tag=catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=catapult_p4] {Rotation:[-90f]}

#Structures 2-3
execute at @s[tag=ballista_p1] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1] eyes
execute store result entity @s[tag=ballista_p2] Rotation[0] float 1 run data get entity @e[tag=ballista_p1,sort=nearest,limit=1] Rotation[0]
execute at @s[tag=dballista_p1] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1] eyes
execute store result entity @s[tag=dballista_p2] Rotation[0] float 1 run data get entity @e[tag=dballista_p1,sort=nearest,limit=1] Rotation[0]

#Structure 4
execute at @s[tag=fcatapult_p1] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=fcatapult_p1] store result score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 run data get entity @s Rotation[0]
execute if score @s[tag=fireball_catapult] mg22 matches -180..-91 as @e[tag=fcatapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:north} run kill
execute if score @s[tag=fireball_catapult] mg22 matches -90..0 as @e[tag=fcatapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:east} run kill
execute if score @s[tag=fireball_catapult] mg22 matches 1..90 as @e[tag=fcatapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:south} run kill
execute if score @s[tag=fireball_catapult] mg22 matches 91..179 as @e[tag=fcatapult_fb,distance=..2] unless data entity @s BlockState.Properties{facing:west} run kill
execute unless data entity @s[tag=fcatapult_p1] Passengers run kill
execute if score @s[tag=fireball_catapult] mg22 matches -180..-91 unless entity @e[tag=fcatapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,fcatapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,fcatapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=fireball_catapult] mg22 matches -90..0 unless entity @e[tag=fcatapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,fcatapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,fcatapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:east},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=fireball_catapult] mg22 matches 1..90 unless entity @e[tag=fcatapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,fcatapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,fcatapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:south},Name:"minecraft:grindstone"}}]}
execute if score @s[tag=fireball_catapult] mg22 matches 91..179 unless entity @e[tag=fcatapult_p1,distance=..2] run summon armor_stand ~ ~1 ~ {Tags:[mg22,fcatapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,fcatapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:west},Name:"minecraft:grindstone"}}]}
execute at @s[tag=fcatapult_p1] positioned ~ 2.2 ~0.07 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=fcatapult_p2] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 1.75 ~0.48 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=fcatapult_p3] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 1.15 ~1 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run tp @e[sort=nearest,limit=1,tag=fcatapult_p4] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~-0.07 2.2 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=fcatapult_p2] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~-0.48 1.75 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=fcatapult_p3] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~-1 1.15 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run tp @e[sort=nearest,limit=1,tag=fcatapult_p4] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 2.2 ~-0.07 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=fcatapult_p2] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 1.75 ~-0.48 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=fcatapult_p3] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 1.15 ~-1 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run tp @e[sort=nearest,limit=1,tag=fcatapult_p4] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~0.07 2.2 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=fcatapult_p2] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~0.48 1.75 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=fcatapult_p3] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~1 1.15 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run tp @e[sort=nearest,limit=1,tag=fcatapult_p4] ~ ~ ~
execute at @s[tag=fcatapult_p1] positioned ~ 2.2 ~0.07 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p2] {Rotation:[0f]}
execute at @s[tag=fcatapult_p1] positioned ~ 1.75 ~0.48 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p3] {Rotation:[0f]}
execute at @s[tag=fcatapult_p1] positioned ~ 1.15 ~1 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -180..-91 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p4] {Rotation:[0f]}
execute at @s[tag=fcatapult_p1] positioned ~-0.07 2.2 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p2] {Rotation:[90f]}
execute at @s[tag=fcatapult_p1] positioned ~-0.48 1.75 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p3] {Rotation:[90f]}
execute at @s[tag=fcatapult_p1] positioned ~-1 1.15 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches -90..0 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p4] {Rotation:[90f]}
execute at @s[tag=fcatapult_p1] positioned ~ 2.2 ~-0.07 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p2] {Rotation:[180f]}
execute at @s[tag=fcatapult_p1] positioned ~ 1.75 ~-0.48 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p3] {Rotation:[180f]}
execute at @s[tag=fcatapult_p1] positioned ~ 1.15 ~-1 if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 1..90 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p4] {Rotation:[180f]}
execute at @s[tag=fcatapult_p1] positioned ~0.07 2.2 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p2] {Rotation:[-90f]}
execute at @s[tag=fcatapult_p1] positioned ~0.48 1.75 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p3] {Rotation:[-90f]}
execute at @s[tag=fcatapult_p1] positioned ~1 1.15 ~ if score @e[limit=1,tag=fireball_catapult,sort=nearest] mg22 matches 91..179 run data merge entity @e[sort=nearest,limit=1,tag=fcatapult_p4] {Rotation:[-90f]}

#Structures 6-10
execute at @s[tag=disp1] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=disp2] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=disp3] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=disp4] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=medusa_eye] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1] eyes
execute at @s[tag=medusa_eye] unless entity @e[tag=mg22_start] run tp @s ~ ~ ~ facing entity @p

#Structures 11-15
execute at @s[tag=snow_golem] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1] eyes
execute at @s[tag=golem] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=witch] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=candle] positioned ~ 3.8 ~ run tp @s ^0.2 ^ ^ facing entity @e[tag=mg22,tag=witch,sort=nearest,limit=1]
execute at @s[tag=candle] run tp @s ^-0.2 ^ ^0.08 facing entity @e[tag=mg22,tag=witch,sort=nearest,limit=1]
execute at @s[tag=candle] run particle small_flame ~ ~0.5 ~ 0 0 0 0 1 force @a[scores={mg22=1..}]
execute at @s[tag=wizard] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]
execute at @s[tag=warlock] run tp @s ~ ~ ~ facing entity @e[tag=mg22_mob,sort=nearest,limit=1]