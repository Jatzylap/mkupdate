#Structure 1
execute at @s[tag=mg22_s1] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_stone_slab
execute at @s[tag=mg22_s1] run setblock ~ ~ ~ oak_wood[axis=z]
execute at @s[tag=mg22_s1] run summon marker ~ ~ ~ {Tags:[mg22,catapult]}
execute at @s[tag=mg22_s1] run summon armor_stand ~ ~1 ~ {Tags:[mg22,catapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,catapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:east},Name:"minecraft:grindstone"}}]}
execute at @s[tag=mg22_s1] run summon armor_stand ~-0.07 ~1.2 ~ {Tags:[mg22,catapult_p2],Rotation:[90f],NoGravity:1,DisabledSlots:-1,Invulnerable:1,Pose:{Head:[90f,0f,0f]},Invisible:1,Small:1,ArmorItems:[{},{},{},{id:spruce_fence,Count:1}]}
execute at @s[tag=mg22_s1] run summon armor_stand ~-0.48 ~0.75 ~ {Tags:[mg22,catapult_p3],Rotation:[90f],NoGravity:1,DisabledSlots:-1,Invulnerable:1,Pose:{Head:[90f,0f,0f]},Invisible:1,Small:1,ArmorItems:[{},{},{},{id:spruce_fence,Count:1}]}
execute at @s[tag=mg22_s1] run summon armor_stand ~-1 ~0.15 ~ {Tags:[mg22,catapult_p4],NoGravity:1,DisabledSlots:-1,Invulnerable:1,Invisible:1,Small:1,ArmorItems:[{},{},{},{id:stone,Count:1}]}
execute at @s[tag=mg22_s1] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 2
execute at @s[tag=mg22_s2] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_stone_slab
execute at @s[tag=mg22_s2] run setblock ~ ~ ~ oak_wood[axis=z]
execute at @s[tag=mg22_s2] run setblock ~ ~1 ~ andesite_wall
execute at @s[tag=mg22_s2] run summon marker ~ ~ ~ {Tags:[mg22,ballista]}
execute at @s[tag=mg22_s2] run summon armor_stand ~ ~0.54 ~ {Tags:[mg22,ballista_p1],Rotation:[-180f],DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{Count:1,id:skeleton_skull}]}
execute at @s[tag=mg22_s2] run summon armor_stand ~0.27 ~0.59 ~0.16 {Marker:1,NoBasePlate:1,NoGravity:1,ShowArms:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,Pose:{LeftArm:[-90f,33f,0f]},Tags:[mg22,ballista_p2],Rotation:[163f],HandItems:[{},{id:crossbow,Count:1}]}
execute at @s[tag=mg22_s2] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 3
execute at @s[tag=mg22_s3] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_stone_slab
execute at @s[tag=mg22_s3] run setblock ~ ~ ~ oak_wood[axis=z]
execute at @s[tag=mg22_s3] run setblock ~ ~1 ~ andesite_wall
execute at @s[tag=mg22_s3] run summon marker ~ ~ ~ {Tags:[mg22,x,double_ballista]}
execute at @s[tag=mg22_s3] run summon armor_stand ~ ~0.54 ~ {Tags:[mg22,dballista_p1],Rotation:[-180f],DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,ArmorItems:[{},{},{},{Count:1,id:wither_skeleton_skull}]}
execute at @s[tag=mg22_s3] run summon armor_stand ~ ~0.59 ~0.16 {Marker:1,NoBasePlate:1,NoGravity:1,ShowArms:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,Pose:{RightArm:[-90f,-55f,0f],LeftArm:[-90f,55f,0f]},Tags:[mg22,dballista_p2],Rotation:[-180f],HandItems:[{id:crossbow,Count:1},{id:crossbow,Count:1}]}
execute at @s[tag=mg22_s3] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 4
execute at @s[tag=mg22_s4] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_stone_slab
execute at @s[tag=mg22_s4] run setblock ~ ~ ~ obsidian
execute at @s[tag=mg22_s4] run summon marker ~ ~ ~ {Tags:[mg22,fireball_catapult]}
execute at @s[tag=mg22_s4] run summon armor_stand ~ ~1 ~ {Tags:[mg22,fcatapult_p1],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22,fcatapult_fb],NoGravity:1,Time:-10000000,BlockState:{Properties:{face:floor,facing:east},Name:"minecraft:grindstone"}}]}
execute at @s[tag=mg22_s4] run summon armor_stand ~-0.07 ~1.2 ~ {Tags:[mg22,fcatapult_p2],Rotation:[90f],NoGravity:1,DisabledSlots:-1,Invulnerable:1,Pose:{Head:[90f,0f,0f]},Invisible:1,Small:1,ArmorItems:[{},{},{},{id:nether_brick_fence,Count:1}]}
execute at @s[tag=mg22_s4] run summon armor_stand ~-0.48 ~0.75 ~ {Tags:[mg22,fcatapult_p3],Rotation:[90f],NoGravity:1,DisabledSlots:-1,Invulnerable:1,Pose:{Head:[90f,0f,0f]},Invisible:1,Small:1,ArmorItems:[{},{},{},{id:nether_brick_fence,Count:1}]}
execute at @s[tag=mg22_s4] run summon armor_stand ~-1 ~0.5 ~ {Tags:[mg22,fcatapult_p4],Marker:1,DisabledSlots:-1,Invisible:1,Invulnerable:1,NoGravity:1,Passengers:[{Count:1,id:fireball,Tags:[mg22],NoGravity:1}]}
execute at @s[tag=mg22_s4] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 5
execute at @s[tag=mg22_s5] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_stone_slab
execute at @s[tag=mg22_s5] run setblock ~ ~ ~ oak_wood
execute at @s[tag=mg22_s5] run summon marker ~ ~ ~ {Tags:[mg22,xx,mortar_cannon]}
execute at @s[tag=mg22_s5] run summon armor_stand ~ ~0.81 ~ {Tags:[mg22,mortar],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22],NoGravity:1,Time:-10000000,BlockState:{Name:"minecraft:cauldron"}}]}
execute at @s[tag=mg22_s5] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep


#Structure 6
execute at @s[tag=mg22_s6] run fill ~-1 ~ ~-1 ~1 ~ ~1 waxed_cut_copper_slab
execute at @s[tag=mg22_s6] run fill ~ ~ ~ ~ ~1 ~ andesite_wall
execute at @s[tag=mg22_s6] run summon marker ~ ~ ~ {Tags:[mg22,x,harming_dispenser]}
execute at @s[tag=mg22_s6] run summon armor_stand ~ ~0.62 ~ {Tags:[mg22,disp1],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:dispenser,Count:1}]}
execute at @s[tag=mg22_s6] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 7
execute at @s[tag=mg22_s7] run fill ~-1 ~ ~-1 ~1 ~ ~1 waxed_cut_copper_slab
execute at @s[tag=mg22_s7] run fill ~ ~ ~ ~ ~1 ~ cobbled_deepslate_wall
execute at @s[tag=mg22_s7] run summon marker ~ ~ ~ {Tags:[mg22,x,slowing_dispenser]}
execute at @s[tag=mg22_s7] run summon armor_stand ~ ~0.62 ~ {Tags:[mg22,disp2],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:dispenser,Count:1}]}
execute at @s[tag=mg22_s7] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 8
execute at @s[tag=mg22_s8] run fill ~-1 ~ ~-1 ~1 ~ ~1 waxed_cut_copper_slab
execute at @s[tag=mg22_s8] run setblock ~-1 ~ ~ dark_prismarine_stairs[facing=east]
execute at @s[tag=mg22_s8] run setblock ~1 ~ ~ dark_prismarine_stairs[facing=west]
execute at @s[tag=mg22_s8] run setblock ~ ~ ~-1 dark_prismarine_stairs[facing=south]
execute at @s[tag=mg22_s8] run setblock ~ ~ ~1 dark_prismarine_stairs
execute at @s[tag=mg22_s8] run setblock ~-1 ~1 ~ dark_prismarine_stairs[facing=east,half=top]
execute at @s[tag=mg22_s8] run setblock ~1 ~1 ~ dark_prismarine_stairs[facing=west,half=top]
execute at @s[tag=mg22_s8] run setblock ~ ~1 ~-1 dark_prismarine_stairs[facing=south,half=top]
execute at @s[tag=mg22_s8] run setblock ~ ~1 ~1 dark_prismarine_stairs[half=top]
execute at @s[tag=mg22_s8] run fill ~ ~ ~ ~ ~2 ~ prismarine_bricks
execute at @s[tag=mg22_s8] run summon marker ~ ~ ~ {Tags:[mg22,x,medusa_eye_tower]}
execute at @s[tag=mg22_s8] run summon guardian ~ ~3 ~ {NoAI:1,Silent:1,Tags:[mg22,medusa_eye],PersistenceRequired:1,Invulnerable:1,NoGravity:1,Silent:1,DeathLootTable:""}
execute at @s[tag=mg22_s8] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 9
execute at @s[tag=mg22_s9] run fill ~-1 ~ ~-1 ~1 ~ ~1 waxed_cut_copper_slab
execute at @s[tag=mg22_s9] run fill ~ ~ ~ ~ ~1 ~ sandstone_wall
execute at @s[tag=mg22_s9] run summon marker ~ ~ ~ {Tags:[mg22,toxic_machine]}
execute at @s[tag=mg22_s9] run summon armor_stand ~ ~0.62 ~ {Tags:[mg22,disp3],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:dispenser,Count:1}]}
execute at @s[tag=mg22_s9] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 10
execute at @s[tag=mg22_s10] run fill ~-1 ~ ~-1 ~1 ~ ~1 waxed_cut_copper_slab
execute at @s[tag=mg22_s10] run fill ~ ~ ~ ~ ~1 ~ blackstone_wall
execute at @s[tag=mg22_s10] run summon marker ~ ~ ~ {Tags:[mg22,x,flame_machine]}
execute at @s[tag=mg22_s10] run summon armor_stand ~ ~0.62 ~ {Tags:[mg22,disp4],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:dispenser,Count:1}]}
execute at @s[tag=mg22_s10] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 11
execute at @s[tag=mg22_s11] run fill ~-1 ~ ~-1 ~1 ~ ~1 snow[layers=4]
execute at @s[tag=mg22_s11] run fill ~-1 ~ ~ ~1 ~ ~ snow_block
execute at @s[tag=mg22_s11] run fill ~ ~ ~-1 ~ ~ ~1 snow_block
execute at @s[tag=mg22_s11] positioned ~ ~1 ~ run fill ~-1 ~ ~ ~1 ~ ~ snow[layers=4]
execute at @s[tag=mg22_s11] positioned ~ ~1 ~ run fill ~ ~ ~-1 ~ ~ ~1 snow[layers=4]
execute at @s[tag=mg22_s11] run setblock ~ ~1 ~ snow_block
execute at @s[tag=mg22_s11] run summon marker ~ ~ ~ {Tags:[mg22,x,snow_golem_tower]}
execute at @s[tag=mg22_s11] run summon snow_golem ~ ~2 ~ {Silent:1,NoAI:1,Tags:[mg22,snow_golem],Attributes:[{Base:0.0d,Name:generic.movement_speed}],Invulnerable:1,DeathLootTable:"",NoGravity:1,PersistenceRequired:1}
execute at @s[tag=mg22_s11] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 12
execute at @s[tag=mg22_s12] run fill ~-1 ~ ~ ~1 ~ ~ mossy_cobblestone_wall
execute at @s[tag=mg22_s12] run fill ~ ~ ~-1 ~ ~ ~1 mossy_cobblestone_wall
execute at @s[tag=mg22_s12] positioned ~ ~1 ~ run fill ~-1 ~ ~ ~1 ~ ~ cobbled_deepslate_slab
execute at @s[tag=mg22_s12] positioned ~ ~1 ~ run fill ~ ~ ~-1 ~ ~ ~1 cobbled_deepslate_slab
execute at @s[tag=mg22_s12] run setblock ~ ~ ~ iron_block
execute at @s[tag=mg22_s12] run setblock ~ ~1 ~ chiseled_deepslate
execute at @s[tag=mg22_s12] run summon marker ~ ~ ~ {Tags:[mg22,x,golem_tower]}
execute at @s[tag=mg22_s12] run summon iron_golem ~ ~2 ~ {Silent:1,NoAI:1,Tags:[mg22,golem],Attributes:[{Base:0.0d,Name:generic.movement_speed}],DeathLootTable:"",Invulnerable:1,NoGravity:1,PersistenceRequired:1}
execute at @s[tag=mg22_s12] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 13
execute at @s[tag=mg22_s13] run fill ~-1 ~ ~-1 ~1 ~ ~1 purpur_slab
execute at @s[tag=mg22_s13] run fill ~-1 ~ ~ ~1 ~ ~ lava_cauldron
execute at @s[tag=mg22_s13] run fill ~ ~ ~-1 ~ ~ ~1 lava_cauldron
execute at @s[tag=mg22_s13] run fill ~ ~ ~ ~ ~1 ~ crimson_hyphae
execute at @s[tag=mg22_s13] run setblock ~ ~2 ~ crimson_slab
execute at @s[tag=mg22_s13] run summon armor_stand ~1 ~3 ~ {Small:1,Tags:[mg22,candle],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22],NoGravity:1,Time:-10000000,BlockState:{Properties:{lit:true},Name:"minecraft:magenta_candle"}}]}
execute at @s[tag=mg22_s13] run summon armor_stand ~-1 ~3 ~ {Small:1,Tags:[mg22,candle],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22],NoGravity:1,Time:-10000000,BlockState:{Properties:{lit:true},Name:"minecraft:magenta_candle"}}]}
execute at @s[tag=mg22_s13] run summon armor_stand ~ ~3 ~-1 {Small:1,Tags:[mg22,candle],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22],NoGravity:1,Time:-10000000,BlockState:{Properties:{lit:true},Name:"minecraft:magenta_candle"}}]}
execute at @s[tag=mg22_s13] run summon armor_stand ~ ~3 ~1 {Small:1,Tags:[mg22,candle],Invisible:1,Invulnerable:1,NoGravity:1,Marker:1,Passengers:[{Count:1,id:falling_block,DropItem:0,Tags:[mg22],NoGravity:1,Time:-10000000,BlockState:{Properties:{lit:true},Name:"minecraft:magenta_candle"}}]}
execute at @s[tag=mg22_s13] run summon marker ~ ~ ~ {Tags:[mg22,x,witch_tower]}
execute at @s[tag=mg22_s13] run summon witch ~ ~2.5 ~ {Silent:1,NoAI:1,Tags:[mg22,witch],Attributes:[{Base:0.0d,Name:generic.movement_speed}],PersistenceRequired:1,Invulnerable:1,NoGravity:1,DeathLootTable:""}
execute at @s[tag=mg22_s13] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 14
execute at @s[tag=mg22_s14] run fill ~-1 ~ ~-1 ~1 ~ ~1 prismarine_wall
execute at @s[tag=mg22_s14] run fill ~-1 ~ ~ ~1 ~ ~ warped_slab
execute at @s[tag=mg22_s14] run fill ~ ~ ~-1 ~ ~ ~1 warped_slab
execute at @s[tag=mg22_s14] run fill ~ ~ ~ ~ ~1 ~ warped_hyphae
execute at @s[tag=mg22_s14] run setblock ~ ~2 ~ warped_slab
execute at @s[tag=mg22_s14] run setblock ~1 ~1 ~ warped_fence
execute at @s[tag=mg22_s14] run setblock ~-1 ~1 ~ warped_fence
execute at @s[tag=mg22_s14] run setblock ~ ~1 ~-1 warped_fence
execute at @s[tag=mg22_s14] run setblock ~ ~1 ~1 warped_fence
execute at @s[tag=mg22_s14] run setblock ~1 ~2 ~ prismarine_wall
execute at @s[tag=mg22_s14] run setblock ~-1 ~2 ~ prismarine_wall
execute at @s[tag=mg22_s14] run setblock ~ ~2 ~-1 prismarine_wall
execute at @s[tag=mg22_s14] run setblock ~ ~2 ~1 prismarine_wall
execute at @s[tag=mg22_s14] run setblock ~1 ~3 ~ red_candle[lit=true]
execute at @s[tag=mg22_s14] run setblock ~-1 ~3 ~ red_candle[lit=true]
execute at @s[tag=mg22_s14] run setblock ~ ~3 ~-1 red_candle[lit=true]
execute at @s[tag=mg22_s14] run setblock ~ ~3 ~1 red_candle[lit=true]
execute at @s[tag=mg22_s14] run summon marker ~ ~ ~ {Tags:[mg22,xx,wizard_tower]}
execute at @s[tag=mg22_s14] run summon evoker ~ ~2.5 ~ {Silent:1,NoAI:1,Tags:[mg22,wizard],Attributes:[{Base:0.0d,Name:generic.movement_speed}],Silent:1,PersistenceRequired:1,Invulnerable:1,NoGravity:1,DeathLootTable:""}
execute at @s[tag=mg22_s14] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Structure 15
execute at @s[tag=mg22_s15] run setblock ~-1 ~ ~-1 polished_blackstone_slab
execute at @s[tag=mg22_s15] run setblock ~-1 ~ ~1 polished_blackstone_slab
execute at @s[tag=mg22_s15] run setblock ~1 ~ ~-1 polished_blackstone_slab
execute at @s[tag=mg22_s15] run setblock ~1 ~ ~1 polished_blackstone_slab
execute at @s[tag=mg22_s15] run fill ~-1 ~ ~-1 ~1 ~ ~1 blackstone_wall keep
execute at @s[tag=mg22_s15] run fill ~ ~ ~ ~ ~1 ~ crying_obsidian
execute at @s[tag=mg22_s15] run setblock ~ ~2 ~ respawn_anchor[charges=4]
execute at @s[tag=mg22_s15] run setblock ~1 ~1 ~ polished_blackstone_slab[type=top]
execute at @s[tag=mg22_s15] run setblock ~-1 ~1 ~ polished_blackstone_slab[type=top]
execute at @s[tag=mg22_s15] run setblock ~ ~1 ~-1 polished_blackstone_slab[type=top]
execute at @s[tag=mg22_s15] run setblock ~ ~1 ~1 polished_blackstone_slab[type=top]
execute at @s[tag=mg22_s15] run summon marker ~ ~ ~ {Tags:[mg22,xx,warlock_tower]}
execute at @s[tag=mg22_s15] run summon illusioner ~ ~3 ~ {Silent:1,NoAI:1,Tags:[mg22,warlock],Attributes:[{Base:0.0d,Name:generic.movement_speed}],PersistenceRequired:1,Invulnerable:1,NoGravity:1,DeathLootTable:""}
execute at @s[tag=mg22_s15] run fill ~-1 ~1 ~-1 ~1 ~3 ~1 barrier keep

#Settings
effect give @e[type=pillager,tag=mg22] invisibility 1000000 9 true
execute at @s[tag=lvl1] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] add lvl1
execute at @s[tag=lvl2] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] add lvl2
execute at @s[tag=lvl2] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] remove lvl1
execute at @s[tag=lvl3] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] add lvl3
execute at @s[tag=lvl3] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] remove lvl2
execute at @s[tag=lvl3] run tag @e[limit=1,sort=nearest,tag=mg22,type=marker] remove lvl1
tellraw @p[scores={mg22=1..}] ["",{"text":"Structure successfully placed.","color":"gray"}]
playsound entity.villager.work_fletcher master @a[scores={mg22=1..}] ~ ~ ~ 0.5 1.3