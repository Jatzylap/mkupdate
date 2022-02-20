# A MESSAGE FROM A GOAT:
# (baahh)
loot replace block 197 2 -173 container.26 loot c2:random/goat-pool
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:1}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:2}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:3}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:4}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:5}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:6}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:7}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:8}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:9}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:10}}]} if entity @e[tag=gs1,tag=mg22_s] as @a[scores={mg22=1..}] run playsound entity.goat.prepare_ram master @s ~ ~ ~ 10

execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:1}}]} if entity @e[tag=gs1,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:2}}]} if entity @e[tag=gs2,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:3}}]} if entity @e[tag=gs3,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:4}}]} if entity @e[tag=gs4,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:5}}]} if entity @e[tag=gs5,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:6}}]} if entity @e[tag=gs6,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:3.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:7}}]} if entity @e[tag=gs7,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:3.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:8}}]} if entity @e[tag=gs8,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:3.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:9}}]} if entity @e[tag=gs9,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
execute if data block 197 2 -173 {Items:[{Slot:26b,tag:{gs:10}}]} if entity @e[tag=gs10,tag=mg22_s] run summon goat ~ ~ ~ {AbsorptionAmount:2.0f,IsScreamingGoat:1,NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop3"}
tp @e[type=!marker,distance=..1] @s
execute at @s[tag=ps1] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path1]}
execute at @s[tag=ps2] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path2]}
execute at @s[tag=ps3] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path3]}
execute at @s[tag=ps4] as @e[type=!player,type=!marker,distance=..1] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path4]}
execute as @e[type=!marker,distance=..1] at @s run tp ^ ^1 ^1.5