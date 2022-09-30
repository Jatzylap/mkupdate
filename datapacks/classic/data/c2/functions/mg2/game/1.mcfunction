#Set protective blocks
fill 440 159 135 440 162 135 cobblestone
setblock 440 159 134 stone_brick_stairs[facing=south]
setblock 439 159 135 stone_brick_stairs[facing=east]
setblock 441 159 135 stone_brick_stairs[facing=west]
setblock 440 159 136 stone_brick_stairs
setblock 440 162 134 stone_brick_stairs[facing=south,half=top]
setblock 439 162 135 stone_brick_stairs[facing=east,half=top]
setblock 441 162 135 stone_brick_stairs[facing=west,half=top]
setblock 440 162 136 stone_brick_stairs[half=top]
setblock 440 163 135 dragon_egg
fill 508 159 69 508 162 69 cobblestone
setblock 508 159 68 stone_brick_stairs[facing=south]
setblock 507 159 69 stone_brick_stairs[facing=east]
setblock 509 159 69 stone_brick_stairs[facing=west]
setblock 508 159 70 stone_brick_stairs
setblock 508 162 68 stone_brick_stairs[facing=south,half=top]
setblock 507 162 69 stone_brick_stairs[facing=east,half=top]
setblock 509 162 69 stone_brick_stairs[facing=west,half=top]
setblock 508 162 70 stone_brick_stairs[half=top]
setblock 508 163 69 dragon_egg
fill 442 159 1 442 162 1 cobblestone
setblock 442 159 0 stone_brick_stairs[facing=south]
setblock 441 159 1 stone_brick_stairs[facing=east]
setblock 443 159 1 stone_brick_stairs[facing=west]
setblock 442 159 2 stone_brick_stairs
setblock 442 162 0 stone_brick_stairs[facing=south,half=top]
setblock 441 162 1 stone_brick_stairs[facing=east,half=top]
setblock 443 162 1 stone_brick_stairs[facing=west,half=top]
setblock 442 162 2 stone_brick_stairs[half=top]
setblock 442 163 1 dragon_egg

execute unless entity @e[tag=2_b,tag=i,tag=r0t] run summon armor_stand 434 160 18 {Marker:1,NoGravity:1,Tags:[2_b,i,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_b,tag=g,tag=r0t] run summon armor_stand 448 160 18 {Marker:1,NoGravity:1,Tags:[2_b,g,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_y,tag=i,tag=r0t] run summon armor_stand 491 160 75 {Marker:1,NoGravity:1,Tags:[2_y,i,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_y,tag=g,tag=r0t] run summon armor_stand 491 160 61 {Marker:1,NoGravity:1,Tags:[2_y,g,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_r,tag=i,tag=r0t] run summon armor_stand 434 160 118 {Marker:1,NoGravity:1,Tags:[2_r,i,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_r,tag=g,tag=r0t] run summon armor_stand 448 160 118 {Marker:1,NoGravity:1,Tags:[2_r,g,r0t],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_c,tag=d,tag=r0t] run summon armor_stand 439 160 68 {Marker:1,NoGravity:1,Tags:[2_c,d,r0t,lvl1],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:diamond_block,Count:1}]}
execute unless entity @e[tag=2_c,tag=e,tag=r0t] run summon armor_stand 440 153 68 {Marker:1,NoGravity:1,Tags:[2_c,e,r0t,lvl1],Small:1,Invisible:1,ArmorItems:[{},{},{},{id:emerald_block,Count:1}]}