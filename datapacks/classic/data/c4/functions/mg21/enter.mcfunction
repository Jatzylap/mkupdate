scoreboard players reset @s 3
advancement grant @s[tag=!T0] only mk:play_minigame2
tag @s[tag=!T0] add m-g
scoreboard players add @s[tag=!T0] mg21 1
team add mg21
team join mg21 @s[tag=!T0]
team modify mg21 friendlyFire false
effect clear @s[tag=!T0]
execute in parallel_aether run tp @s[tag=!T0] 159.0 221 84.0 0 0
execute in parallel_aether run spawnpoint @s[tag=!T0] 159 221 84
execute in parallel_aether run effect give @s[tag=!T0] blindness 2 9 true
tag @s[tag=!T0] add 7
title @s[tag=!T0] clear
title @s[tag=!T0] reset
execute store result score @s c if entity @a[scores={mg21=1..}]
title @s[tag=T0] actionbar ["",{"text":"Persistent games cannot be selected","color":"yellow","bold":true}]
execute in parallel_aether at @s[tag=!T0] run forceload add 215 197
execute in parallel_aether at @s[tag=!T0] run forceload add 171 178
execute in parallel_aether at @s[tag=!T0] run forceload add 124 224
execute in parallel_aether at @s[tag=!T0] run forceload add 145 224
execute in parallel_aether at @s[tag=!T0] run forceload add 147 223
execute in parallel_aether at @s[tag=!T0] run forceload add 174 178
execute in parallel_aether at @s[tag=!T0] run forceload add 231 216
execute in parallel_aether at @s[tag=!T0] run forceload add 136 147
execute in parallel_aether at @s[tag=!T0] run forceload add 222 162
execute in parallel_aether at @s[tag=!T0] run forceload add 179 249
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c2] run summon silverfish 215 105.6 197 {PersistenceRequired:1b,Rotation:[-90f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c2],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul2]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c1] run summon silverfish 171 147.6 178 {PersistenceRequired:1b,Rotation:[0f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c1],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul1]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=mg21_c3] run summon silverfish 124 139.6 224 {PersistenceRequired:1b,Rotation:[0f],DeathLootTable:"",ActiveEffects:[{Id:14b,Duration:9999,Amplifier:1,ShowParticles:0b}],Tags:[mg21,mg21_c,mg21_c3],Invulnerable:1b,Silent:1,NoAI:1,Passengers:[{Count:1,id:enderman,Silent:1,Invulnerable:1,DeathLootTable:"",Tags:[mg21,mg21_soul,mg21_soul3]}]}
execute in parallel_aether at @s[tag=!T0] unless entity @e[tag=CTM2_Mob1] run function c4:mg21/initiate