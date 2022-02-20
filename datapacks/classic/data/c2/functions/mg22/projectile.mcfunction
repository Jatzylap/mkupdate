execute store result score @s mg-1.1 run data get entity @s Pos[0] 1000
execute store result score @s mg-1.2 run data get entity @s Pos[1] 1000
execute store result score @s mg-1.3 run data get entity @s Pos[2] 1000
execute at @s run tp ^ ^ ^0.82
execute store result score @s mg-1.x run data get entity @s Pos[0] 1000
execute store result score @s mg-1.y run data get entity @s Pos[1] 1000
execute store result score @s mg-1.z run data get entity @s Pos[2] 1000
scoreboard players operation @s mg-1.x -= @s mg-1.1
scoreboard players operation @s mg-1.y -= @s mg-1.2
scoreboard players operation @s mg-1.z -= @s mg-1.3
execute at @s[tag=s1] as @a[scores={mg22=1..}] run playsound item.armor.equip_chain master @s ~ ~ ~ 10000 0
execute at @s[tag=s2] as @a[scores={mg22=1..}] run playsound entity.arrow.hit master @s ~ ~ ~ 10000 0.7
execute at @s[tag=s3] as @a[scores={mg22=1..}] run playsound entity.arrow.hit master @s ~ ~ ~ 10000 0.7
execute at @s[tag=s3] as @a[scores={mg22=1..}] run playsound entity.dolphin.attack master @s ~ ~ ~ 10000 0.8
execute at @s[tag=s4] as @a[scores={mg22=1..}] run playsound item.armor.equip_netherite master @s ~ ~ ~ 10000 0
execute at @s[tag=s5] as @a[scores={mg22=1..}] run playsound entity.generic.explode master @s ~ ~ ~ 10000 1.5
execute at @s[tag=s6] as @a[scores={mg22=1..}] run playsound block.dispenser.dispense master @s ~ ~ ~ 10000
execute at @s[tag=s7] as @a[scores={mg22=1..}] run playsound block.dispenser.dispense master @s ~ ~ ~ 10000
execute at @s[tag=s9] as @a[scores={mg22=1..}] run playsound block.dispenser.dispense master @s ~ ~ ~ 10000
execute at @s[tag=s10] as @a[scores={mg22=1..}] run playsound entity.ghast.shoot master @s ~ ~ ~ 10000 0.6
execute at @s[tag=s11] as @a[scores={mg22=1..}] run playsound entity.arrow.shoot master @s ~ ~ ~ 10000
execute at @s[tag=s12] as @a[scores={mg22=1..}] run playsound entity.iron_golem.repair master @s ~ ~ ~ 10000
execute at @s[tag=s13] as @a[scores={mg22=1..}] run playsound entity.witch.drink master @s ~ ~ ~ 10000
execute at @s[tag=s13] as @a[scores={mg22=1..}] run playsound entity.evoker.prepare_summon master @s ~ ~ ~ 10000

execute at @s[tag=s1] run summon shulker_bullet ^ ^1 ^1 {Tags:[mg22_b,mg22]}
execute at @s[tag=s2] run summon arrow ^ ^2 ^1 {Tags:[mg22_b,mg22]}
execute at @s[tag=s3] run summon arrow ^ ^2 ^1 {Tags:[mg22_b,mg22],CustomPotionEffects:[{Id:20b,Amplifier:2b,Duration:2,ShowParticles:0}]}
execute at @s[tag=s4] run summon fireball ^ ^1 ^1 {ExplosionPower:1,Tags:[mg22_b,mg22]}
execute at @s[tag=s5] run summon fireball ^ ^1 ^1 {ExplosionPower:3,Tags:[mg22_b,mg22]}
execute at @s[tag=s6] run summon arrow ^ ^1 ^1 {CustomPotionEffects:[{Id:20b,Amplifier:4b,Duration:2,ShowParticles:0}],Tags:[mg22_b,mg22]}
execute at @s[tag=s7] run summon arrow ^ ^1 ^1 {CustomPotionEffects:[{Id:2b,Amplifier:4b,Duration:600,ShowParticles:0}],Tags:[mg22_b,mg22]}
execute at @s[tag=s9] run summon potion ^ ^1 ^1 {Item:{id:lingering_potion,Count:1b,tag:{CustomPotionColor:46669,CustomPotionEffects:[{Id:20b,Amplifier:5b,Duration:600,ShowParticles:0}],Tags:[mg22_b,mg22]}}}
execute at @s[tag=s10] run summon small_fireball ^ ^1 ^1 {Tags:[mg22_b,mg22]}
execute at @s[tag=s11] run summon snowball ^ ^1 ^1 {Tags:[mg22_b,mg22]}
execute at @s[tag=s12] run summon creeper ^ ^1 ^1 {Invulnerable:1,ignited:1,Fuse:4s,Tags:[mg22_b,mg22]}
execute at @s[tag=s13] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run particle witch ~ ~ ~ 0 0 0 0.02 90 force @a[scores={mg22=1..}]
execute at @s[tag=s13] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon potion ~ ~ ~ {Item:{id:lingering_potion,Count:1b,tag:{CustomPotionColor:99997754,CustomPotionEffects:[{Id:20b,Amplifier:8b,Duration:2,ShowParticles:0}],Tags:[mg22]}}}
execute at @s[tag=s15] run summon wither_skull ^ ^1 ^1 {Tags:[mg22_b,mg22]}

execute store result entity @e[tag=mg22_b,sort=nearest,limit=1] Motion[0] double 0.003 run scoreboard players get @s mg-1.x
execute store result entity @e[tag=mg22_b,sort=nearest,limit=1] Motion[2] double 0.003 run scoreboard players get @s mg-1.z
scoreboard players set @s[scores={mg22.3=60..}] mg22.3 0
kill @e[tag=mg22_r,sort=nearest,limit=1]