#Set protective blocks
setblock 508 159 69 yellow_bed[occupied=true,facing=east]
setblock 509 159 69 yellow_bed[occupied=true,facing=east,part=head]
setblock 440 159 135 red_bed[occupied=true,facing=south]
setblock 440 159 136 red_bed[occupied=true,facing=south,part=head]
setblock 442 159 1 blue_bed[occupied=true]
setblock 442 159 0 blue_bed[occupied=true,part=head]

#Layout
#b
setblock 434 159 18 air
setblock 434 158 18 iron_block
setblock 448 159 18 air
setblock 448 158 18 gold_block
#y
setblock 491 159 75 air
setblock 491 158 75 iron_block
setblock 491 159 61 air
setblock 491 158 61 gold_block
#r
setblock 434 159 118 air
setblock 434 158 118 iron_block
setblock 448 159 118 air
setblock 448 158 118 gold_block
#c
setblock 439 159 68 air
setblock 439 158 68 diamond_block
setblock 440 151 68 air

execute unless entity @e[tag=2_b,tag=i,tag=r0t] run summon armor_stand 434 160 18 {Marker:1,NoGravity:1,Tags:[2_b,i,r0t],Small:1,Invisible:1,CustomName:'{"text":"Iron Generator","color":"blue","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_b,tag=g,tag=r0t] run summon armor_stand 448 160 18 {Marker:1,NoGravity:1,Tags:[2_b,g,r0t],Small:1,Invisible:1,CustomName:'{"text":"Gold Generator","color":"blue","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_y,tag=i,tag=r0t] run summon armor_stand 491 160 75 {Marker:1,NoGravity:1,Tags:[2_y,i,r0t],Small:1,Invisible:1,CustomName:'{"text":"Iron Generator","color":"yellow","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_y,tag=g,tag=r0t] run summon armor_stand 491 160 61 {Marker:1,NoGravity:1,Tags:[2_y,g,r0t],Small:1,Invisible:1,CustomName:'{"text":"Gold Generator","color":"yellow","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_r,tag=i,tag=r0t] run summon armor_stand 434 160 118 {Marker:1,NoGravity:1,Tags:[2_r,i,r0t],Small:1,Invisible:1,CustomName:'{"text":"Iron Generator","color":"red","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:iron_block,Count:1}]}
execute unless entity @e[tag=2_r,tag=g,tag=r0t] run summon armor_stand 448 160 118 {Marker:1,NoGravity:1,Tags:[2_r,g,r0t],Small:1,Invisible:1,CustomName:'{"text":"Gold Generator","color":"red","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:gold_block,Count:1}]}
execute unless entity @e[tag=2_c,tag=d,tag=r0t] run summon armor_stand 439 160 68 {Marker:1,NoGravity:1,Tags:[2_c,d,r0t,lvl1],Small:1,Invisible:1,CustomName:'{"text":"Diamond Generator","color":"aqua","bold":true}',CustomNameVisible:1,ArmorItems:[{},{},{},{id:diamond_block,Count:1}]}