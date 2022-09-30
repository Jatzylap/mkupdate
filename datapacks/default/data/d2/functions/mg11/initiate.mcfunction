#Function run by Lucky Crate

execute as @e[nbt={Item:{tag:{LCevent:1b}}}] at @s run data merge entity @s {PickupDelay:999s}
execute as @e[nbt={Item:{id:"minecraft:diamond_sword",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Lucky Crystal Blade","color":"aqua","bold":true}'}
execute as @e[nbt={Item:{id:"minecraft:leather_helmet",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Une jolly Casquette","color":"light_purple","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:iron_chestplate",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Lucky Chestplate","color":"gold","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:stick",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"The Teacher\'s Cane","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:golden_pickaxe",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Lucky Pick","color":"gold","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:iron_boots",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Speedy Boots","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:golden_boots",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Gilded Boots","color":"yellow","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:netherite_boots",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Soul Boots","color":"gray","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:dirt",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Shiny Dirt","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:sponge",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Guardian Guts","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:splash_potion",tag:{LC:1b}}}] at @s run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"THICKNESS Potion","bold":true}',CustomNameVisible:1}
execute as @e[nbt={Item:{id:"minecraft:splash_potion",tag:{thick:2}}}] at @s run data merge entity @s {Item:{Count:2b}}
execute as @e[nbt={Item:{id:"minecraft:splash_potion",tag:{thick:3}}}] at @s run data merge entity @s {Item:{Count:3b}}

execute as @e[nbt={Item:{id:"minecraft:iron_nugget",tag:{LC:1b}}}] at @s run particle smoke ~ ~ ~ 0.5 0.2 0.5 0.1 15 force @a
execute as @e[nbt={Item:{id:"minecraft:gold_nugget",tag:{LC:1b}}}] at @s run particle flame ~ ~ ~ 0.5 0.2 0.5 0.1 15 force @a
execute as @e[nbt={Item:{id:"minecraft:iron_nugget",tag:{LC:1b}}}] at @s run playsound entity.item.break master @a ~ ~ ~ 1 2
execute as @e[nbt={Item:{id:"minecraft:gold_nugget",tag:{LC:1b}}}] at @s run playsound entity.arrow.hit_player master @a ~ ~ ~ 1 2

#Anvil Trap
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:anvil_trap\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_anvil_trapped
execute as @a[tag=LC_anvil_trapped] at @s positioned ~-1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~ ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~-1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~-1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s positioned ~1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_anvil_trapped] at @s run setblock ~ ~15 ~ anvil keep

#Water Trap
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:water_trap\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_water_trapped
title @a[tag=LC_water_trapped] title ["",{"text":"WhooPs...","color":"dark_gray"}]
execute as @a[tag=LC_water_trapped] at @s run setblock ~ ~4 ~ obsidian keep
execute as @a[tag=LC_water_trapped] at @s positioned ~-1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~ ~ ~1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~-1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~-1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s positioned ~1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ purpur_pillar keep
execute as @a[tag=LC_water_trapped] at @s run setblock ~ ~3 ~ water keep
effect give @a[tag=LC_water_trapped] poison 12 9 true

#Lava Trap
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:lava_trap\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_lava_trapped
execute as @a[tag=LC_lava_trapped] at @s positioned ~-1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~ ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~ ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~-1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~1 ~ ~1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~-1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s positioned ~1 ~ ~-1 run fill ~ ~ ~ ~ ~3 ~ iron_bars keep
execute as @a[tag=LC_lava_trapped] at @s run setblock ~ ~3 ~ lava keep

#Witch
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_bewitched
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon witch ~ ~ ~ {DeathLootTable:"",Tags:[LC],CustomName:"{\"text\":\"Bob's WICKED Sis\",\"bold\":true}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run title @a[tag=LC_bewitched] title [""]
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run title @a[tag=LC_bewitched] subtitle ["",{"text":"You accidently awoke the Witch","color":"dark_gray"}]
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {Tags:[LC],CatType:1}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:witch\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bat ~ ~ ~ {Tags:[LC],ActiveEffects:[{Id:20,Duration:9999,ShowParticles:0b}]}

#Bedrock
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bedrock\",\"color\":\"dark_gray\"}"]}}}}] run setblock ~ ~ ~ bedrock
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bedrock\",\"color\":\"dark_gray\"}"]}}}}] run setblock ~ ~1 ~ oak_sign[rotation=8]{Text2:"{\"text\":\"Well there's\",\"color\":\"dark_red\",\"bold\":true}",Text3:"{\"text\":\"your problem\",\"color\":\"dark_red\",\"bold\":true}"}

#Block
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s align xz run summon skeleton ~ ~-1 ~ {Tags:[LC],DeathLootTable:"",Silent:1b,CustomName:"{\"text\":\"Mimic\",\"color\":\"gold\",\"bold\":true}",AbsorptionAmount:20f,ActiveEffects:[{Id:14,Amplifier:1,Duration:9999,ShowParticles:0b}],Rotation:[180f],Attributes:[{Base:10.0d,Name:generic.knockback_resistance}],ArmorItems:[{},{},{},{Count:1,id:chest,tag:{display:{Name:"{\"text\":\"Mimic Crate\",\"italic\":false,\"color\":\"yellow\"}",LC:1b}}}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s run data merge entity @e[type=skeleton,tag=LC,name="Mimic",limit=1,distance=..2] {Motion:[0.0,0.6,0.0]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s run playsound block.wood.place master @a ~ ~ ~ 1 2

#Splash
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:splash\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_splashed
execute as @a[tag=LC_splashed] at @s run summon potion ~-1 ~6 ~ {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~ ~6 ~1 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~ ~6 ~ {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~1 ~6 ~ {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~-1 ~6 ~1 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~1 ~6 ~-1 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~-1 ~6 ~-1 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}
execute as @a[tag=LC_splashed] at @s run summon potion ~1 ~6 ~1 {Item:{id:"splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}

#Bob
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bob\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon zombie ~ ~ ~ {CustomName:"{\"text\":\"Bob\",\"color\":\"gold\",\"bold\":true}",DeathLootTable:"",Tags:[LC],HandItems:[{id:diamond_sword,Count:1,tag:{LC:1b,display:{Name:"{\"text\":\"Bob's Handy Tool\",\"color\":\"dark_green\",\"italic\":false}"},Enchantments:[{id:sharpness,lvl:6}]}},{id:shield,Count:1}],Attributes:[{Base:0.3d,Name:generic.movement_speed},{Base:2.0d,Name:generic.knockback_resistance}],ArmorItems:[{id:diamond_boots,Count:1,tag:{LC:1b}},{id:diamond_leggings,Count:1,tag:{LC:1b}},{id:diamond_chestplate,Count:1,tag:{LC:1b,Enchantments:[{id:fire_protection,lvl:6}]}},{id:diamond_helmet,Count:1,tag:{LC:1b}}]}

#Slime Stack
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:slime_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon slime ~ ~ ~ {Tags:[LC],DeathLootTable:"",Size:0,Passengers:[{Count:1,id:slime,Size:0,Tags:[LC],DeathLootTable:"",Passengers:[{Count:1,id:slime,Size:0,Tags:[LC],DeathLootTable:"",Passengers:[{Count:1,id:slime,Size:0,Tags:[LC],DeathLootTable:"",Passengers:[{Count:1,id:slime,Size:0,Tags:[LC],DeathLootTable:"",Passengers:[{Count:1,id:slime,Size:0,Tags:[LC],DeathLootTable:""}]}]}]}]}]}

#Explosion
execute as @e[type=item,nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:explosion\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon creeper ~ ~ ~ {Fuse:6s,ignited:1}
execute as @e[type=item,nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:explosion\",\"color\":\"dark_gray\"}"]}}}}] at @s run kill @e[type=area_effect_cloud,distance=..2]

#Mini Horde
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}",CustomNameVisible:1}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:mini_horde\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~ ~ {Tags:[LC],CustomName:"{\"text\":\"A Cute Mouse\"}"}

#Trader
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:trader\",\"color\":\"dark_gray\"}"]}}}}] run summon wandering_trader ~ ~ ~ {Tags:[LC],Invulnerable:1b,Attributes:[{Base:0d,Name:generic.movement_speed}],Rotation:[180f],CustomName:"{\"text\":\"Lucky Trader\",\"color\":\"gold\",\"bold\":true}",Offers:{Recipes:[{buy:{id:blue_orchid,Count:5},sell:{id:golden_sword,Count:1,tag:{w:1,LC:1,AttributeModifiers:[{AttributeName:generic.attack_speed,Name:generic.attack_speed,Amount:0.8,Operation:1,UUID:[I;1,2,303235,540671],Slot:mainhand}],HideFlags:1,Enchantments:[{id:smite,lvl:7},{id:looting,lvl:3}],display:{Name:"{\"text\":\"Lucky Sword\",\"color\":\"gold\",\"bold\":true,\"italic\":false}",Lore:["{\"text\":\"Luck X\",\"color\":\"gray\",\"italic\":false}"]}},maxUses:1,uses:0}}]}}

#Cats
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"",Tags:[LC],CatType:0}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"",Tags:[LC],CatType:2}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"",Tags:[LC],CatType:3}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"",Tags:[LC],CatType:4}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"",Tags:[LC],CatType:5}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:cats\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon cat ~ ~ ~ {DeathLootTable:"d2:lucky_flowers",Tags:[LC],CatType:9}

#Block Stack 2
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~2 ~ {Tags:[LC],BlockState:{Name:"bedrock"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~4 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~6 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~8 ~ {Tags:[LC],BlockState:{Name:"cobblestone"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~10 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~12 ~ {Tags:[LC],BlockState:{Name:"iron_block"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack2\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~14 ~ {DeathLootTable:"d2:lucky_material",ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,PersistenceRequired:1,Tags:[LC,Block],PersistenceRequired:1b,Silent:1,Attributes:[{Base:0d,Name:generic.movement_speed}]}

#Block Stack
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~2 ~ {Tags:[LC],BlockState:{Name:"bedrock"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~4 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~6 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~8 ~ {Tags:[LC],BlockState:{Name:"cobblestone"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~10 ~ {Tags:[LC],BlockState:{Name:"oak_log"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon falling_block ~ ~12 ~ {Tags:[LC],BlockState:{Name:"emerald_block"},Time:1s}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon silverfish ~ ~14 ~ {DeathLootTable:"d2:lucky_material",ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}],Invulnerable:1b,PersistenceRequired:1,Tags:[LC,Block],PersistenceRequired:1b,Silent:1,Attributes:[{Base:0d,Name:generic.movement_speed}]}

#Mob Stack
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:mob_stack\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon chicken ~ ~ ~ {DeathLootTable:"",Tags:[LC],Passengers:[{Count:1,id:pig,DeathLootTable:"",Tags:[LC],Passengers:[{Count:1,id:cow,DeathLootTable:"",Tags:[LC],Passengers:[{Count:1,id:mooshroom,DeathLootTable:"",Type:brown,Tags:[LC],Passengers:[{Count:1,id:sheep,DeathLootTable:"d2:lucky_flowers",HandItems:[{Count:1,id:gold_ingot,tag:{display:{Name:'{"text":"Enchanted","color":"gold","italic":false,"extra":[{"text":" Ingot","color":"yellow"}]}'},Enchantments:[{id:12,lvl:1}]}}],HandDropChances:[1f],CustomName:"{\"text\":\"jeb_\"}",Tags:[LC]}]}]}]}]}

#Lucky Blocks
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ chest[facing=south]{LootTable:"d2:lucky_toolevents",Lock:"§lucky"} keep
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.5 0.5 0.1 5 force @a
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block\",\"color\":\"dark_gray\"}"]}}}}] at @s run playsound entity.zombie.converted master @a ~ ~ ~ 1 2

#Flowers
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:flowers\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ chest{LootTable:"d2:lucky_flowers"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:flowers\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ air destroy

#Redstone
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:redstone\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ chest{LootTable:"d2:lucky_redstone"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:redstone\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ air destroy

#Golem
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:golem\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon iron_golem ~ ~ ~ {Tags:[LC],AngerTime:100000,CustomName:'{"text":"Angry Pants","bold":true}',CustomNameVisible:1}

#Bees
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bees\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~ ~ oak_log[axis=y] keep
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bees\",\"color\":\"dark_gray\"}"]}}}}] at @s run setblock ~ ~1 ~ bee_nest[facing=north,honey_level=5]{Bees:[{MinOccupationTicks:600,TicksInHive:1146,EntityData:{NoGravity:1b,Brain:{memories:{}},HurtByTimestamp:0,HasStung:0b,Attributes:[{Base:48.0d,Modifiers:[{Operation:1,UUID:[I;336659364,-1104721308,-1793599443,-1936391372],Amount:-0.04573442241427245d,Name:"Random spawn bonus"}],Name:"minecraft:generic.follow_range"}],Invulnerable:0b,FallFlying:0b,ForcedAge:0,PortalCooldown:0,AbsorptionAmount:0.0f,FallDistance:0.0f,InLove:0,DeathTime:0s,HandDropChances:[0.085f,0.085f],CannotEnterHiveTicks:0,PersistenceRequired:0b,id:"minecraft:bee",Tags:["LC"],Age:0,TicksSincePollination:16,AngerTime:10000,Motion:[-0.0682103090178796d,-0.05271543654261642d,0.12571618623044412d],Health:10.0f,HasNectar:0b,LeftHanded:0b,Air:68s,OnGround:0b,Rotation:[14.078705f,0.0f],HandItems:[{},{}],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],Pos:[-255.31429459680416d,6.017587678117237d,54.598777297885476d],Fire:-1s,ArmorItems:[{},{},{},{}],CropsGrownSincePollination:0,CanPickUpLoot:0b,HurtTime:0s}},{MinOccupationTicks:600,TicksInHive:1071,EntityData:{NoGravity:1b,Brain:{memories:{}},HurtByTimestamp:0,HasStung:0b,Attributes:[{Base:48.0d,Modifiers:[{Operation:1,UUID:[I;-671205351,2075872707,-1677377668,1556933364],Amount:-0.011734092490003194d,Name:"Random spawn bonus"}],Name:"minecraft:generic.follow_range"}],Invulnerable:0b,FallFlying:0b,ForcedAge:0,PortalCooldown:0,AbsorptionAmount:0.0f,FallDistance:0.0f,InLove:0,DeathTime:0s,HandDropChances:[0.085f,0.085f],CannotEnterHiveTicks:0,PersistenceRequired:0b,id:"minecraft:bee",Tags:["LC"],Age:0,TicksSincePollination:10,AngerTime:10000,Motion:[-0.037442112770967255d,0.01626615276085921d,0.13986538800823126d],Health:10.0f,HasNectar:0b,LeftHanded:0b,Air:44s,OnGround:0b,Rotation:[58.91606f,0.0f],HandItems:[{},{}],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],Pos:[-254.4439922191846d,6.168508419457565d,54.99227108168285d],Fire:-1s,ArmorItems:[{},{},{},{}],CropsGrownSincePollination:0,CanPickUpLoot:0b,HurtTime:0s}},{MinOccupationTicks:600,TicksInHive:334,EntityData:{NoGravity:1b,Brain:{memories:{}},HurtByTimestamp:0,HasStung:0b,Attributes:[{Base:48.0d,Modifiers:[{Operation:1,UUID:[I;2022726098,-1249227989,-1434923484,1774132897],Amount:-0.024848780127855755d,Name:"Random spawn bonus"}],Name:"minecraft:generic.follow_range"},{Base:0.30000001192092896d,Name:"minecraft:generic.movement_speed"}],Invulnerable:0b,FallFlying:0b,ForcedAge:0,PortalCooldown:0,AbsorptionAmount:0.0f,FallDistance:0.0f,InLove:0,DeathTime:0s,HandDropChances:[0.085f,0.085f],CannotEnterHiveTicks:0,PersistenceRequired:0b,id:"minecraft:bee",Tags:["LC"],Age:0,TicksSincePollination:13,AngerTime:10000,Motion:[-0.04907222067299817d,0.13622040564183588d,0.09244884452650727d],Health:10.0f,HasNectar:0b,LeftHanded:0b,Air:56s,OnGround:0b,Rotation:[54.54651f,0.0f],HandItems:[{},{}],ArmorDropChances:[0.085f,0.085f,0.085f,0.085f],Pos:[-254.7023689247394d,5.688980784753423d,54.99522424901843d],Fire:-1s,ArmorItems:[{},{},{},{}],CropsGrownSincePollination:0,CanPickUpLoot:0b,HurtTime:0s}}]} keep
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bees\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon bee ~ ~2 ~ {CustomName:'{"text":"Honey Guardian","color":"gold","bold":true}',CustomNameVisible:1,Health:30,Tags:[LC],AngerTime:100000}

#Cursed Battle
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_cursed
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon lightning_bolt ~ ~5 ~
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon hoglin ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',Health:5,CustomNameVisible:1,Tags:[LC,ud],Passengers:[{id:zombified_piglin,AngerTime:10000,Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Tags:[LC,ud],HandItems:[{Count:1,id:golden_sword,tag:{Enchantments:[{id:smite,lvl:2}],LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon zombified_piglin ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',Health:5,CustomNameVisible:1,Tags:[LC,ud]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon zombified_piglin ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',Health:5,CustomNameVisible:1,Tags:[LC,ud]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon zombie_horse ~ ~ ~ {Tags:[LC],Passengers:[{id:zombie,Tags:[LC,ud],Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,HandItems:[{Count:1,id:iron_sword,tag:{LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon zombie_horse ~ ~ ~ {Tags:[LC],Passengers:[{id:zombie,Tags:[LC,ud],Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,HandItems:[{Count:1,id:iron_shovel,tag:{LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon skeleton_horse ~ ~ ~ {Tags:[LC],Passengers:[{id:drowned,Tags:[LC,ud],Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,HandItems:[{Count:1,id:trident,tag:{LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon spider ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Health:5,Tags:[LC,ud],Passengers:[{id:stray,Tags:[LC,ud],Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,ArmorItems:[{Count:1,id:iron_boots,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}},{Count:1,id:iron_leggings,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}},{Count:1,id:chainmail_chestplate,tag:{Enchantments:[{id:protection,lvl:3}],LC:1b}},{Count:1,id:netherite_helmet,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}}],HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:sharpness,lvl:2}],LC:1b}},{Count:1,id:shield,tag:{LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon spider ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Health:5,Tags:[LC,ud],Passengers:[{id:stray,Tags:[LC,ud],Health:5,CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,ArmorItems:[{Count:1,id:iron_boots,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}},{Count:1,id:iron_leggings,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}},{Count:1,id:chainmail_chestplate,tag:{Enchantments:[{id:protection,lvl:3}],LC:1b}},{Count:1,id:netherite_helmet,tag:{Enchantments:[{id:protection,lvl:2}],LC:1b}}],HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:sharpness,lvl:2}],LC:1b}},{Count:1,id:shield,tag:{LC:1b}}]}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon vex ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Tags:[LC,ud],Health:5,HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:sharpness,lvl:2}],LC:1b}},{Count:1,id:shield,tag:{LC:1b}}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon vex ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Tags:[LC,ud],Health:5,HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:sharpness,lvl:2}],LC:1b}},{Count:1,id:shield,tag:{LC:1b}}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon vex ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Tags:[LC,ud],Health:5,HandItems:[{Count:1,id:golden_axe,tag:{Enchantments:[{id:sharpness,lvl:2}],LC:1b}},{Count:1,id:shield,tag:{LC:1b}}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon wither_skeleton ~ ~ ~ {CustomName:'{"text":"-UNDEAD-","color":"red","bold":true}',CustomNameVisible:1,Health:5,Tags:[LC,ud],HandItems:[{Count:1,id:netherite_sword,tag:{LC:1b}}]}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run spreadplayers ~ ~ 0 3 false @e[distance=..2,tag=LC,tag=ud]
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:battle\",\"color\":\"dark_gray\"}"]}}}}] at @s run tellraw @a[tag=LC_cursed] ["",{"text":"You were cursed by the Undead! Kill them before they use it to their advantage!","color":"red"}]
execute as @a[tag=LC_cursed] at @s run scoreboard players set @s mg11.1 0

#Bunnies
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:1}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:2}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:3}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:4}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:5}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:9}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run data merge entity @e[type=rabbit,tag=LC,sort=random,limit=1] {DeathLootTable:"d2:lucky_flowers"}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s if entity @a[tag=LC_cursed] run data merge entity @e[type=rabbit,tag=LC,sort=random,limit=1,nbt={RabbitType:1}] {DeathLootTable:"d2:lucky_material",RabbitType:99}

#Unlucky Bunnies
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"d2:lucky_material",RabbitType:99}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:2}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:3}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:4}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:5}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon rabbit ~ ~ ~ {DeathLootTable:"",Tags:[LC],RabbitType:9}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"unlucky:bunnies\",\"color\":\"dark_gray\"}"]}}}}] at @s run data merge entity @e[type=rabbit,tag=LC,sort=random,limit=1] {DeathLootTable:"d2:lucky_flowers"}

#Dropper
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:dropper\",\"color\":\"dark_gray\"}"]}}}}] at @s run tag @p add LC_dropper-ed
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:dropper\",\"color\":\"dark_gray\"}"]}}}}] at @s run title @a[tag=LC_dropper-ed] actionbar ["",{"text":"Hop on it?","color":"green"}]
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:dropper\",\"color\":\"dark_gray\"}"]}}}}] at @s run summon armor_stand ~ ~ ~ {Tags:[LC,pmcm],Invisible:1,NoGravity:1,NoBasePlate:1}
execute as @e[nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:dropper\",\"color\":\"dark_gray\"}"]}}}}] at @s run scoreboard players set @e[tag=LC,tag=pmcm] mg11.1 0
execute as @e[tag=LC,tag=pmcm] at @s run setblock ~ ~ ~1 stone_brick_stairs[facing=north] keep
execute as @e[tag=LC,tag=pmcm] at @s run setblock ~-1 ~ ~ stone_brick_stairs[facing=east] keep
execute as @e[tag=LC,tag=pmcm] at @s run setblock ~1 ~ ~ stone_brick_stairs[facing=west] keep
execute as @e[tag=LC,tag=pmcm] at @s run setblock ~ ~ ~-1 stone_brick_stairs[facing=south] keep
execute as @e[tag=LC,tag=pmcm] at @s run setblock ~ ~1 ~ piston[facing=up]
execute unless entity @e[tag=LC,tag=pmcm] run tag @a[tag=LCplayers] remove r
tag @a remove LC_anvil_trapped
tag @a remove LC_water_trapped
tag @a remove LC_lava_trapped
tag @a remove LC_bewitched
tag @a remove LC_splashed
kill @e[type=item,nbt={Item:{tag:{LCevent:1b}}}]