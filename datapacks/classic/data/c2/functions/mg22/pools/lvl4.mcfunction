#  havin' loads of funn writin' more commanns'
 
loot replace block 197 2 -173 container.0 loot c2:random/mob-pool

execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:1}}]} run summon strider ~ ~ ~ {DeathLootTable:"",AbsorptionAmount:10.0f,Saddle:1,Passengers:[{Count:1,id:zombified_piglin,ArmorItems:[{Count:1,id:golden_boots},{Count:1,id:golden_leggings,tag:{Enchantments:[{id:protection,lvl:1}]}},{Count:1,id:golden_chestplate,tag:{Enchantments:[{id:protection,lvl:2}]}},{Count:1,id:golden_helmet}],HandDropChances:[0f,0f],HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:12,lvl:1}]}}]}]}
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:2}}]} run summon hoglin ~ ~ ~ {DeathLootTable:"",AbsorptionAmount:20.0f}
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:3}}]} run summon strider ~ ~ ~ {DeathLootTable:"",AbsorptionAmount:15.0f,Saddle:1,Passengers:[{Count:1,id:piglin,ArmorItems:[{},{},{},{Count:1,id:golden_helmet,tag:{Enchantments:[{id:protection,lvl:2}]}}],HandDropChances:[0f,0f],HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:12,lvl:1}]}}]}]}
execute if data block 197 2 -173 {Items:[{Slot:0b,tag:{mg22:4}}]} run summon zombie_horse ~ ~ ~ {DeathLootTable:"",Tame:1,SaddleItem:{Count:1,id:saddle},AbsorptionAmount:10.0f,Passengers:[{Count:1,id:zombie,ArmorItems:[{Count:1,id:iron_boots},{Count:1,id:iron_leggings,tag:{Enchantments:[{id:protection,lvl:1}]}},{Count:1,id:diamond_chestplate,tag:{Enchantments:[{id:protection,lvl:2}]}},{Count:1,id:iron_helmet}],HandDropChances:[0f,0f],HandItems:[{Count:1,id:iron_sword,tag:{Enchantments:[{id:12,lvl:1}]}}]}]}

tp @e[type=!marker,distance=..1] @s
execute at @s[tag=ps1] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path1],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps2] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path2],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps3] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path3],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute at @s[tag=ps4] as @e[type=!player,type=!marker,distance=..1,dy=2] run data merge entity @s {Tags:[mg22,mg22_mob,mob_path4],NoAI:1,Attributes:[{Base:90.0d,Name:generic.knockback_resistance}],PersistenceRequired:1,DeathLootTable:"c2:random/mob-drop"}
execute as @e[type=!marker,distance=..1,dy=2] at @s unless data entity @s Passengers if data entity @e[limit=1,dy=-2,tag=mg22_mob] Passengers run tag @s add mg22_rider
execute as @e[type=!marker,distance=..1,dy=2] at @s if data entity @s Passengers run tag @s add mg22_carrier
execute as @e[type=!marker,distance=..1] at @s run tp ^ ^1 ^1.5