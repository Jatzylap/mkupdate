# A MESSAGE FROM SAMMYGOOD11:
#  my boi is your face when me the when I when the pickle goes down the road and says hi what's your nme my name is george and then you whent  the me is how when I have has whne thyebfheknv b.

execute if score @e[name="M@K",limit=1] mg22.2 matches 2.. run loot replace block 197 2 -173 container.0 loot c2:random/mob-pool
execute if score @e[name="M@K",limit=1] mg22.2 matches ..1 run item replace block 197 2 -173 container.0 with stick{0:1,mg22:1}

execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:1}}]} run summon zombie
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:2}}]} run summon skeleton
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:3}}]} run summon piglin
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:4}}]} run summon silverfish

tp @e[type=!marker,distance=..1] @s
execute at @s[tag=ps1] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path1],NoAI:1,ArmorItems:[{},{},{},{Count:1,id:golden_helmet}],Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps2] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path2],NoAI:1,ArmorItems:[{},{},{},{Count:1,id:golden_helmet}],Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps3] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path3],NoAI:1,ArmorItems:[{},{},{},{Count:1,id:golden_helmet}],Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps4] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path4],NoAI:1,ArmorItems:[{},{},{},{Count:1,id:golden_helmet}],Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute as @e[type=!player,type=!marker,distance=..1] at @s run tp ^ ^1 ^1.5