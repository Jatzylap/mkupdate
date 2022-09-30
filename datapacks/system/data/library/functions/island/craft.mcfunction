title @s actionbar ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Generating Island...","color":"green","bold":true}]
execute if score @s 6 matches 2.. as @e[type=area_effect_cloud,tag=ray,x=-379,y=129,z=-261,dx=11,dy=17,dz=11] at @s run tag @s add syb
execute if score @s 6 matches 2 run fill -379 131 -247 -365 131 -261 barrier keep
execute if score @s 6 matches 2 run summon area_effect_cloud -372 131 -254 {Radius:0f,Duration:10,Tags:[sb_gen1]}
execute if score @s 6 matches 2 run summon area_effect_cloud -372 131 -254 {Radius:0f,Duration:10,Tags:[sb_gen1]}
execute if score @s 6 matches 2 run summon area_effect_cloud -372 131 -254 {Radius:0f,Duration:10,Tags:[sb_gen1]}
execute if score @s 6 matches 2 run spreadplayers -372 -254 0 4 false @e[tag=sb_gen1]
execute if score @s 6 matches 2 as @e[sort=random,tag=sb_gen1,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"h_stone"}'}
execute if score @s 6 matches 2 as @e[sort=random,tag=sb_gen1,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"h_stone"}'}
execute if score @s 6 matches 12 run fill -379 132 -247 -365 132 -261 barrier keep
execute if score @s 6 matches 12 run summon area_effect_cloud -372 132 -254 {Radius:0f,Duration:10,Tags:[sb_gen2]}
execute if score @s 6 matches 12 run summon area_effect_cloud -372 132 -254 {Radius:0f,Duration:10,Tags:[sb_gen2]}
execute if score @s 6 matches 12 run summon area_effect_cloud -372 132 -254 {Radius:0f,Duration:10,Tags:[sb_gen2]}
execute if score @s 6 matches 12 run spreadplayers -372 -254 0 5 false @e[tag=sb_gen2]
execute if score @s 6 matches 12 as @e[sort=random,tag=sb_gen2,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 12 as @e[sort=random,tag=sb_gen2,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 22 run fill -379 133 -247 -365 133 -261 barrier keep
execute if score @s 6 matches 22 run summon area_effect_cloud -372 133 -254 {Radius:0f,Duration:5,Tags:[sb_gen3]}
execute if score @s 6 matches 22 run summon area_effect_cloud -372 133 -254 {Radius:0f,Duration:5,Tags:[sb_gen3]}
execute if score @s 6 matches 22 run summon area_effect_cloud -372 133 -254 {Radius:0f,Duration:5,Tags:[sb_gen3]}
execute if score @s 6 matches 22 run spreadplayers -372 -254 0 5 false @e[tag=sb_gen3]
execute if score @s 6 matches 22 run execute as @e[sort=random,tag=sb_gen3,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 22 run execute as @e[sort=random,tag=sb_gen3,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 32 run fill -379 134 -247 -365 134 -261 barrier keep
execute if score @s 6 matches 32 run summon area_effect_cloud -372 134 -254 {Radius:0f,Duration:10,Tags:[sb_gen4]}
execute if score @s 6 matches 32 run summon area_effect_cloud -372 134 -254 {Radius:0f,Duration:10,Tags:[sb_gen4]}
execute if score @s 6 matches 32 run summon area_effect_cloud -372 134 -254 {Radius:0f,Duration:10,Tags:[sb_gen4]}
execute if score @s 6 matches 32 run spreadplayers -372 -254 0 2 false @e[tag=sb_gen4]
execute if score @s 6 matches 32 as @e[sort=random,tag=sb_gen4,limit=1] at @s run setblock ~ ~ ~ diamond_ore keep
execute if score @s 6 matches 33 run spreadplayers -372 -254 0 5 false @e[tag=sb_gen4]
execute if score @s 6 matches 33 as @e[sort=random,tag=sb_gen4,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 33 as @e[sort=random,tag=sb_gen4,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 40 as @e[sort=random,tag=sb_gen4,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 40 as @e[sort=random,tag=sb_gen4,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 50 run fill -379 135 -247 -365 135 -261 barrier keep
execute if score @s 6 matches 50 run summon area_effect_cloud -372 135 -254 {Radius:0f,Duration:10,Tags:[sb_gen5]}
execute if score @s 6 matches 50 run summon area_effect_cloud -372 135 -254 {Radius:0f,Duration:10,Tags:[sb_gen5]}
execute if score @s 6 matches 50 run summon area_effect_cloud -372 135 -254 {Radius:0f,Duration:10,Tags:[sb_gen5]}
execute if score @s 6 matches 50 run spreadplayers -372 -254 0 2 false @e[tag=sb_gen5]
execute if score @s 6 matches 50 as @e[sort=random,tag=sb_gen5] at @s run setblock ~ ~ ~ lapis_ore keep
execute if score @s 6 matches 50 as @e[sort=random,tag=sb_gen5] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 stone keep
execute if score @s 6 matches 51 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen5]
execute if score @s 6 matches 51 as @e[sort=random,tag=sb_gen5,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 51 as @e[sort=random,tag=sb_gen5,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 60 as @e[sort=random,tag=sb_gen5,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"dirt"}'}
execute if score @s 6 matches 60 as @e[sort=random,tag=sb_gen5,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"dirt"}'}
execute if score @s 6 matches 70 run fill -379 136 -247 -365 136 -261 barrier keep
execute if score @s 6 matches 70 run summon area_effect_cloud -372 136 -254 {Radius:0f,Duration:10,Tags:[sb_gen6]}
execute if score @s 6 matches 70 run summon area_effect_cloud -372 136 -254 {Radius:0f,Duration:10,Tags:[sb_gen6]}
execute if score @s 6 matches 70 run summon area_effect_cloud -372 136 -254 {Radius:0f,Duration:10,Tags:[sb_gen6]}
execute if score @s 6 matches 70 run spreadplayers -372 -254 0 3 false @e[tag=sb_gen6]
execute if score @s 6 matches 70 as @e[sort=random,tag=sb_gen6,limit=2] at @s run setblock ~ ~ ~ gold_ore
execute if score @s 6 matches 70 as @e[sort=random,tag=sb_gen6,limit=1] at @s run setblock ~ ~ ~ iron_ore
execute if score @s 6 matches 70 as @e[sort=random,tag=sb_gen6,limit=1] at @s run setblock ~ ~ ~ coal_ore
execute if score @s 6 matches 50 as @e[sort=random,tag=sb_gen6] at @s run fill ~-3 ~-2 ~-3 ~3 ~2 ~3 stone keep
execute if score @s 6 matches 50 as @e[tag=sb_gen7] at @s positioned ~ ~3 ~ run fill ~-2 ~ ~-3 ~3 ~1 ~2 grass_block keep
execute if score @s 6 matches 71 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen6]
execute if score @s 6 matches 71 as @e[sort=random,tag=sb_gen6,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"h_stone"}'}
execute if score @s 6 matches 71 as @e[sort=random,tag=sb_gen6,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"h_stone"}'}
execute if score @s 6 matches 71 as @e[sort=random,tag=sb_gen6,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"dirt"}'}
execute if score @s 6 matches 71 as @e[sort=random,tag=sb_gen6,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"dirt"}'}
execute if score @s 6 matches 80 run fill -379 137 -247 -365 137 -261 barrier keep
execute if score @s 6 matches 80 run summon area_effect_cloud -372 137 -254 {Radius:0f,Duration:10,Tags:[sb_gen7]}
execute if score @s 6 matches 80 run summon area_effect_cloud -372 137 -254 {Radius:0f,Duration:10,Tags:[sb_gen7]}
execute if score @s 6 matches 80 run summon area_effect_cloud -372 137 -254 {Radius:0f,Duration:10,Tags:[sb_gen7]}
execute if score @s 6 matches 80 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen7]
execute if score @s 6 matches 80 as @e[sort=random,tag=sb_gen7,limit=2] at @s run setblock ~ ~ ~ iron_ore keep
execute if score @s 6 matches 80 as @e[sort=random,tag=sb_gen7] at @s run setblock ~ ~ ~ coal_ore keep
execute if score @s 6 matches 80 as @e[sort=random,tag=sb_gen7,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 80 as @e[sort=random,tag=sb_gen7,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 90 run fill -379 138 -247 -365 138 -261 barrier keep
execute if score @s 6 matches 90 run summon area_effect_cloud -372 138 -254 {Radius:0f,Duration:20,Tags:[sb_gen8]}
execute if score @s 6 matches 90 run summon area_effect_cloud -372 138 -254 {Radius:0f,Duration:20,Tags:[sb_gen8]}
execute if score @s 6 matches 90 run summon area_effect_cloud -372 138 -254 {Radius:0f,Duration:20,Tags:[sb_gen8]}
execute if score @s 6 matches 90 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen8]
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8] at @s run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 grass_block
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8,limit=2] at @s run fill ~ ~ ~-1 ~2 ~ ~1 grass keep
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8] at @s run setblock ~ ~ ~ tall_grass keep
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 90 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 90 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen8]
execute if score @s 6 matches 99 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 99 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~ ~ {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 99 run spreadplayers -372 -254 0 6 false @e[tag=sb_gen8]
execute if score @s 6 matches 109 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~1 ~ {Tags:[pos,syb],CustomName:'{"text":"grass"}'}
execute if score @s 6 matches 109 as @e[sort=random,tag=sb_gen8,limit=1] at @s run summon bat ~ ~1 ~ {Tags:[pos,syb],CustomName:'{"text":"grass"}'}
execute if score @s 6 matches 109 as @e[sort=random,tag=sb_gen8,limit=1] at @s run tag @s add sb_tree
execute if score @s 6 matches 109 run spreadplayers -372 -254 0 4 false @e[tag=sb_tree,tag=sb_gen8,limit=1]
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s run fill ~-1 ~-1 ~-1 ~1 ~ ~1 grass_block keep
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s run setblock ~-2 ~1 ~-2 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:5,posZ:0,integrity:1.0f,showair:0b,name:"library:sb_tree",sizeY:7,sizeZ:5,showboundingbox:0b}
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s run setblock ~-2 ~2 ~-2 redstone_block
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s run setblock ~ ~1 ~ oak_log
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s positioned ~-2 ~1 ~-2 run fill ~ ~ ~ ~ ~1 ~ air replace structure_block
execute if score @s 6 matches 109 as @e[tag=sb_tree,tag=sb_gen8] at @s positioned ~-2 ~1 ~-2 run fill ~ ~ ~ ~ ~1 ~ air replace redstone_block
execute if score @s 6 matches 119 as @e[tag=sb_tree,tag=sb_gen8] at @s if block ~ ~-2 ~ air run summon bat ~-2 ~ ~-2 {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 119 as @e[tag=sb_tree,tag=sb_gen8] at @s if block ~ ~-2 ~ air run summon bat ~2 ~-1 ~2 {Tags:[pos,syb],CustomName:'{"text":"grass_block"}'}
execute if score @s 6 matches 129 as @e[sort=random,tag=sb_gen8] at @s if block ~ ~-2 ~ air run summon bat ~-2 ~ ~-2 {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 129 as @e[sort=random,tag=sb_gen8] at @s if block ~ ~-2 ~ air run summon bat ~2 ~-1 ~2 {Tags:[pos,syb],CustomName:'{"text":"stone"}'}
execute if score @s 6 matches 129 run fill -379 131 -261 -365 138 -247 air replace barrier
execute if score @s 6 matches 130.. run tag @a remove sb_gen
execute if score @s 6 matches 130.. run scoreboard players reset @s 6
execute as @e[type=bat,tag=pos,tag=syb] at @s unless entity @s[x=-379,y=129,z=-261,dx=11,dy=17,dz=11] run data merge entity @s {Health:0,DeathTime:19s} 
execute as @e[type=area_effect_cloud,tag=syb] at @s unless entity @s[x=-379,y=129,z=-261,dx=11,dy=17,dz=11] run kill @s