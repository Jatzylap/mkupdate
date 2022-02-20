execute in parallel_aether run playsound entity.arrow.hit_player master @a[scores={mg21=1..}] ~ ~ ~ 100000 2
execute in parallel_aether run stopsound @a[scores={mg14=1..}] master music.menu
advancement grant @a[tag=CTM2achieve] only mk:achieve_all mg21
advancement grant @a[tag=CTM2achieve] only mk:unlock_all mg21
team leave @a[tag=CTM2achieve]
execute in parallel_aether run setblock 171 152 180 air
execute in parallel_aether run setblock 217 110 197 air
execute in parallel_aether run setblock 124 144 226 air
execute in parallel_aether run forceload add 153 187
execute in parallel_aether run forceload add 161 187
execute in parallel_aether run forceload add 162 130 159 130

execute in parallel_aether run setblock 155 225 127 structure_block[mode=load]{ignoreEntities:1b,integrity:1.0f,metadata:"",mirror:"NONE",mode:"LOAD",name:"library:mg21_d",posX:0,posY:1,posZ:0,powered:0b,rotation:"NONE",showair:0b,showboundingbox:0b,sizeX:8,sizeY:5,sizeZ:10}
execute in parallel_aether run setblock 154 225 127 redstone_block
execute in parallel_aether run fill 155 225 127 154 225 127 deepslate
execute in parallel_aether run fill 162 92 188 161 92 187 smooth_stone
execute in parallel_aether run fill 162 91 188 161 91 187 air
execute in parallel_aether run fill 162 90 188 161 90 187 sticky_piston[facing=up]
execute in parallel_aether run fill 162 89 188 161 89 187 redstone_block
execute in parallel_aether run fill 163 91 188 163 91 187 air
execute in parallel_aether run fill 164 91 187 164 91 188 sticky_piston[facing=west]
execute in parallel_aether run fill 165 91 188 165 91 187 deepslate
execute in parallel_aether run fill 158 91 188 158 91 187 deepslate
execute in parallel_aether run fill 159 91 187 159 91 188 sticky_piston[facing=east]
execute in parallel_aether run fill 160 91 188 160 91 187 air
execute in parallel_aether run setblock 155 134 186 pointed_dripstone[thickness=frustum,vertical_direction=up]
execute in parallel_aether run setblock 155 135 186 pointed_dripstone[thickness=tip_merge,vertical_direction=up]
execute in parallel_aether run setblock 155 137 186 pointed_dripstone[thickness=frustum,vertical_direction=down]
execute in parallel_aether run setblock 155 136 186 pointed_dripstone[thickness=tip_merge,vertical_direction=down]
execute in parallel_aether run setblock 155 134 187 pointed_dripstone[thickness=base,vertical_direction=up]
execute in parallel_aether run setblock 155 135 187 pointed_dripstone[thickness=middle,vertical_direction=up]
execute in parallel_aether run setblock 155 136 187 pointed_dripstone[thickness=middle,vertical_direction=up]
execute in parallel_aether run setblock 155 137 187 pointed_dripstone[thickness=frustum,vertical_direction=up]
execute in parallel_aether run setblock 155 138 187 pointed_dripstone[thickness=tip_merge,vertical_direction=up]
execute in parallel_aether run setblock 155 139 187 pointed_dripstone[thickness=tip_merge,vertical_direction=down]
execute in parallel_aether run setblock 155 139 188 pointed_dripstone[thickness=base,vertical_direction=down]
execute in parallel_aether run setblock 155 138 188 pointed_dripstone[thickness=middle,vertical_direction=down]
execute in parallel_aether run setblock 155 137 188 pointed_dripstone[thickness=middle,vertical_direction=down]
execute in parallel_aether run setblock 155 136 188 pointed_dripstone[thickness=middle,vertical_direction=down]
execute in parallel_aether run setblock 155 135 188 pointed_dripstone[thickness=frustum,vertical_direction=down]
execute in parallel_aether run setblock 155 134 188 pointed_dripstone[thickness=tip,vertical_direction=down]
execute in parallel_aether run setblock 155 134 189 pointed_dripstone[thickness=frustum,vertical_direction=up]
execute in parallel_aether run setblock 155 135 189 pointed_dripstone[thickness=tip_merge,vertical_direction=up]
execute in parallel_aether run setblock 155 137 189 pointed_dripstone[thickness=frustum,vertical_direction=down]
execute in parallel_aether run setblock 155 136 189 pointed_dripstone[thickness=tip_merge,vertical_direction=down]
execute in parallel_aether run fill 164 64 185 170 64 180 air replace redstone_block
execute in parallel_aether run setblock 170 64 179 repeater[delay=4,facing=south] destroy

execute in parallel_aether as @e[tag=mg21] at @s run data merge entity @s {DeathTime:19s,Health:0}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c2] run summon silverfish 215 105.6 197 {PersistenceRequired:1b,Rotation:[-90f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c2],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul2]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c1] run summon silverfish 171 147.6 178 {PersistenceRequired:1b,Rotation:[0f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c1],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul1]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c3] run summon silverfish 124 139.6 224 {PersistenceRequired:1b,Rotation:[0f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c3],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul3]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 145.5 128.5 224.0 {PersistenceRequired:1b,Rotation:[90f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 147 124 223 {PersistenceRequired:1b,Rotation:[180f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 174.5 134 178.0 {PersistenceRequired:1b,Rotation:[90f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 231.5 106 216.0 {PersistenceRequired:1b,Rotation:[90f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 136.5 196 147.0 {PersistenceRequired:1b,Rotation:[-90f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 222.0 120 162.5 {PersistenceRequired:1b,Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob2] run summon wither_skeleton 179.0 133 249.5 {PersistenceRequired:1b,Rotation:[180f],Motion:[0d,0.5d],Invulnerable:1,Tags:[mg21,CTM2_Mob2],Attributes:[{Name:generic.knockback_resistance,Base:1d},{Name:generic.follow_range,Base:99.0d}],Silent:1,DeathLootTable:"",HandItems:[{Count:1,id:netherite_sword}],ArmorItems:[{},{},{},{Count:1,id:observer}]}
execute in parallel_aether run forceload remove 153 187
execute in parallel_aether run forceload remove 161 187
execute in parallel_aether run forceload remove 162 130 159 130
execute as @a[tag=CTM2achieve] at @s run trigger lobby
execute in overworld run setblock -187 0 -81 air
tp @a[scores={mg21=1..},tag=!CTM2achieve] 159.0 221 84.0 0 0
tag @a remove CTM2achieve