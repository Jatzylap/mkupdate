tp @s ~ ~ ~ facing entity @e[sort=nearest,limit=1,tag=mg22_mob]
execute at @s[tag=catapult] run summon marker ~ ~ ~ {Tags:["mg22_r","s1"]}
execute at @s[tag=ballista] run summon marker ~ ~ ~ {Tags:["mg22_r","s2"]}
execute at @s[tag=ballista] run particle firework ~ ~1 ~ 0 0 0 0.15 20 force @a[scores={mg22=1..}]
execute at @s[tag=double_ballista] run summon marker ~ ~ ~ {Tags:["mg22_r","s3"]}
execute at @s[tag=double_ballista] run particle firework ~ ~1 ~ 0 0 0 0.15 20 force @a[scores={mg22=1..}]
execute at @s[tag=fireball_catapult] run summon marker ~ ~ ~ {Tags:["mg22_r","s4"]}
execute at @s[tag=fireball_catapult] run particle large_smoke ~ ~1 ~ 0 0 0 0.03 20 force @a[scores={mg22=1..}]
execute at @s[tag=mortar_cannon] run summon marker ~ ~ ~ {Tags:["mg22_r","s5"]}
execute at @s[tag=mortar_cannon] run particle cloud ~ ~1 ~ 0 0.6 0 0 20 force @a[scores={mg22=1..}]
execute at @s[tag=harming_dispenser] run summon marker ~ ~ ~ {Tags:["mg22_r","s6"]}
execute at @s[tag=harming_dispenser] run particle ambient_entity_effect ~ ~1 ~ 0 0 0 0 50 force @a[scores={mg22=1..}]
execute at @s[tag=slowing_dispenser] run summon marker ~ ~ ~ {Tags:["mg22_r","s7"]}
execute at @s[tag=slowing_dispenser] run particle smoke ~ ~1 ~ 0 0 0 0 20 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^1 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^2 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^3 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^4 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^5 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^6 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^7 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^8 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^9 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^10 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^11 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^12 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^13 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^14 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^15 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^16 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^17 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^18 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] run execute as @e[tag=medusa_eye,dy=3] at @s run particle end_rod ^ ^ ^19 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute at @s[tag=medusa_eye_tower] as @a[scores={mg22=1..}] run playsound entity.dolphin.death master @s ~ ~ ~ 10000 1.6
execute at @s[tag=medusa_eye_tower] as @a[scores={mg22=1..}] run playsound entity.guardian.death master @s ~ ~ ~ 10000 2
execute at @s[tag=medusa_eye_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run effect give @s slowness 2 255 true
execute at @s[tag=medusa_eye_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run effect give @s instant_damage 1 0 true
execute at @s[tag=toxic_machine] run summon marker ~ ~ ~ {Tags:["mg22_r","s9"]}
execute at @s[tag=toxic_machine] run particle sneeze ~ ~2 ~ 0 0 0 0.03 50 force @a[scores={mg22=1..}]
execute at @s[tag=flame_machine] run summon marker ~ ~ ~ {Tags:["mg22_r","s10"]}
execute at @s[tag=flame_machine] run particle smoke ~ ~1 ~ 0 0 0 0.03 20 force @a[scores={mg22=1..}]
execute at @s[tag=snow_golem_tower] run summon marker ~ ~ ~ {Tags:["mg22_r","s11"]}
execute at @s[tag=golem_tower] as @e[tag=golem,dy=3,limit=1] run summon marker ~ ~ ~ {Tags:["mg22_r","s12"]}
execute at @s[tag=witch_tower] run summon marker ~ ~ ~ {Tags:["mg22_r","s13"]}
execute at @s[tag=wizard_tower] as @a[scores={mg22=1..}] run playsound entity.illusioner.prepare_mirror master @s ~ ~ ~ 100 2
execute at @s[tag=wizard_tower] as @a[scores={mg22=1..}] run playsound entity.illusioner.prepare_blindness master @s ~ ~ ~ 100 1.5
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s if predicate 25-75 run summon lightning_bolt
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run particle ambient_entity_effect ~ ~0.2 ~ 0.3 0.4 0.3 0 90 force @a[scores={mg22=1..}]
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon evoker_fangs
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon evoker_fangs ~ ~ ~-1
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon evoker_fangs ~ ~ ~1
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon evoker_fangs ~-1 ~ ~
execute at @s[tag=wizard_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s run summon evoker_fangs ~1 ~ ~
execute at @s[tag=warlock_tower] as @a[scores={mg22=1..}] run playsound entity.evoker.prepare_attack master @s ~ ~ ~ 100 1.2
execute at @s[tag=warlock_tower] as @e[tag=warlock,dy=3] run summon marker ~ ~ ~ {Tags:["mg22_r","s15"]}
execute at @s[tag=warlock_tower] run execute as @e[sort=nearest,limit=1,tag=mg22_mob] at @s if predicate 50-50 run summon lightning_bolt
execute at @s[tag=warlock_tower] run particle instant_effect ~ ~0.2 ~ 0.3 0.4 0.3 0 90 force @a[scores={mg22=1..}]
execute at @s[tag=warlock_tower] run particle electric_spark ~ ~0.2 ~ 0.3 0.4 0.3 0.1 20 force @a[scores={mg22=1..}]
tp @e[tag=mg22_r,sort=nearest,limit=1] @s
execute as @e[tag=mg22_r,distance=..1,limit=1,sort=nearest] at @s run function c2:mg22/projectile

#fast
scoreboard players set @s[tag=!lvl1,tag=!lvl2,tag=!lvl3,tag=snow_golem_tower] mg22.3 135
scoreboard players set @s[tag=lvl1,tag=snow_golem_tower] mg22.3 140
scoreboard players set @s[tag=lvl2,tag=snow_golem_tower] mg22.3 150
scoreboard players set @s[tag=lvl3,tag=snow_golem_tower] mg22.3 160
#slow
scoreboard players set @s[tag=!lvl1,tag=!lvl2,tag=!lvl3,tag=!snow_golem_tower] mg22.3 0
scoreboard players set @s[tag=lvl1,tag=!snow_golem_tower] mg22.3 80
scoreboard players set @s[tag=lvl2,tag=!snow_golem_tower] mg22.3 100
scoreboard players set @s[tag=lvl3,tag=!snow_golem_tower] mg22.3 120