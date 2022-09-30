#Path
kill @e[tag=mg22_path]
execute if score @e[name="M@K",limit=1] mg22.2 matches ..2 run item replace block 197 2 -173 container.0 with stick{0:1,p:1}
execute if predicate 50-50 if score @e[name="M@K",limit=1] mg22.2 matches 3..4 run item replace block 197 2 -173 container.0 with stick{0:1,p:1}
execute unless data block 197 2 -173 Items[{Slot:0b}] if score @e[name="M@K",limit=1] mg22.2 matches 3..4 run item replace block 197 2 -173 container.0 with stick{0:1,p:2}
execute if predicate 40-60 if score @e[name="M@K",limit=1] mg22.2 matches 5..6 run item replace block 197 2 -173 container.0 with stick{0:1,p:1}
execute unless data block 197 2 -173 Items[{Slot:0b}] if score @e[name="M@K",limit=1] mg22.2 matches 5..6 run item replace block 197 2 -173 container.0 with stick{0:1,p:2}
execute if score @e[name="M@K",limit=1] mg22.2 matches 7..8 run loot replace block 197 2 -173 container.0 loot c2:random/path-pool1
execute if score @e[name="M@K",limit=1] mg22.2 matches 9.. run loot replace block 197 2 -173 container.0 loot c2:random/path-pool2
execute if data block 197 2 -173 Items[{Slot:0b,tag:{p:1}}] run summon marker 216 1 -145 {Rotation:[-90f],Tags:[mg22_path,ps1]}
execute if data block 197 2 -173 Items[{Slot:0b,tag:{p:2}}] run summon marker 216 1 -203 {Rotation:[-90f],Tags:[mg22_path,ps2]}
execute if score @e[name="M@K",limit=1] mg22.2 matches 7..9 if data block 197 2 -173 Items[{Slot:0b,tag:{p:3}}] run summon marker 216 1 -203 {Tags:[mg22_path,ps3]}
execute if score @e[name="M@K",limit=1] mg22.2 matches 7..9 if data block 197 2 -173 Items[{Slot:0b,tag:{p:4}}] run summon marker 216 1 -145 {Rotation:[180f],Tags:[mg22_path,ps4]}

#Selection
execute as @e[tag=mg22_lvl,limit=1] at @s run function c2:mg22/pool
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_lvl1] run function c2:mg22/pools/lvl1
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_lvl2] run function c2:mg22/pools/lvl2
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_lvl3] run function c2:mg22/pools/lvl3
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_lvl4] run function c2:mg22/pools/lvl4
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_lvl5] run function c2:mg22/pools/lvl5
execute as @e[tag=mg22_path] at @s if entity @e[tag=mg22_lvl,tag=mg22_goat] if score @e[name="M@K",limit=1] mg22.2 matches 2.. run function c2:mg22/pools/lvl6
execute store result score @e[limit=1,tag=mg22_start] mg22.6 if entity @e[tag=mg22_mob]

item replace block 197 2 -173 container.0 with air