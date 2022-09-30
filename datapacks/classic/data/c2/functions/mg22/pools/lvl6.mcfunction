# (baahh)

execute as @a[scores={mg22=1..}] at @s run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}

tp @e[type=!marker,distance=..1] @s
execute at @s[tag=ps1] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path1]}
execute at @s[tag=ps2] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path2]}
execute at @s[tag=ps3] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path3]}
execute at @s[tag=ps4] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path4]}
execute as @e[type=!marker,distance=..1] at @s run tp ^ ^1 ^1.5