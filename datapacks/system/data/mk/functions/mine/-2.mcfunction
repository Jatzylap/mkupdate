execute in parallel_nether if block ~ ~ ~ shulker_box align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=m1ned_block,distance=..0.2] run data merge block ~ ~ ~ {Items:[]}
execute in parallel_nether unless data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}} unless block ^ ^ ^ #unmineable align xyz positioned ~0.5 ~ ~0.5 store result score @s b0 run loot replace block 0 0 0 container.0 mine ~ ~ ~ mainhand
execute in parallel_nether if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"minecraft:silk_touch"}]}}} unless block ^ ^ ^ #unmineable align xyz positioned ~0.5 ~ ~0.5 store result score @s b0 run loot replace block 0 0 0 container.0 mine ~ ~ ~ stick{Enchantments:[{id:silk_touch,lvl:1}],0:1}
execute if score @s b0 matches 1.. unless block ^ ^ ^ #unmineable align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:2,Tags:["m1ned_block","m1ne"]}
execute if score @s b0 matches 1.. if block ^ ^ ^ shulker_box align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:2,Tags:["m1ned_b0x","m1ne"]}
execute if score @s b0 matches 1.. if block ^ ^ ^ #shulker_boxes if data block ^ ^ ^ Items unless block ^ ^ ^ shulker_box align xyz run summon area_effect_cloud ~0.5 ~ ~0.5 {Duration:2,Tags:["m1ned_box","m1ne"]}
execute in parallel_nether if block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=m1ned_block,distance=..0.2] run loot spawn ~ ~0.5 ~ mine 0 0 0 stick{0:1}
execute in parallel_nether if block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=m1ned_block,distance=..0.2] run data merge block 0 0 0 {Items:[]}
execute if block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=m1ned_b0x,distance=..0.2] run kill @e[type=item,distance=..1]
execute if block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 if entity @e[tag=m1ned_box,distance=..0.2] as @e[type=item,distance=..1] at @s unless data entity @s Item.tag.BlockEntityTag.Items[0] run kill @s 
execute if block ~ ~ ~ air align xyz positioned ~0.5 ~ ~0.5 as @e[tag=m1ned_block,distance=..0.2] at @s run kill
execute if entity @s[distance=..5] if block ^ ^ ^ #unmineable positioned ^ ^ ^0.1 run function mk:mine/-2