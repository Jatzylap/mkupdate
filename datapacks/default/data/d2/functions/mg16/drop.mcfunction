scoreboard players reset @s mg16.7
clear @s golden_sword{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
clear @s golden_sword{Enchantments:[{lvl:2s,id:"knockback"},{lvl:1s,id:"mending"},{lvl:1s,id:"vanishing_curse"}]}
clear @s zombie_head{Enchantments:[{lvl:3,id:"respiration"},{lvl:1,id:"binding_curse"},{lvl:1,id:"vanishing_curse"}]}
clear @s creeper_head{Enchantments:[{lvl:3,id:"respiration"},{lvl:1,id:"binding_curse"},{lvl:1,id:"vanishing_curse"}]}
execute if data entity @s Inventory[{id:"minecraft:gold_ingot",tag:{HideFlags:64}}] run summon item ~ ~ ~ {PickupDelay:5s,Tags:[GWdr0p,mg16],Item:{Count:1,id:"minecraft:stone_button"}}
execute if data entity @s Inventory[{id:"minecraft:gold_ingot",tag:{HideFlags:64}}] run data modify entity @e[type=item,tag=GWdr0p,tag=mg16,sort=nearest,limit=1] Item.id set from entity @s Inventory[{id:"minecraft:gold_ingot",tag:{HideFlags:64}}].id
execute if data entity @s Inventory[{id:"minecraft:gold_ingot",tag:{HideFlags:64}}] run data modify entity @e[type=item,tag=GWdr0p,tag=mg16,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{id:"minecraft:gold_ingot",tag:{HideFlags:64}}].tag
execute store result score @s mg16.7 run clear @s gold_ingot{HideFlags:64}
execute at @s[scores={mg16.7=1..}] store result entity @e[type=item,tag=GWdr0p,tag=mg16,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s mg16.7
scoreboard players reset @s mg16.7
execute if data entity @s Inventory[{id:"minecraft:brick",tag:{HideFlags:64}}] run summon item ~ ~ ~ {PickupDelay:5s,Tags:[GWdr0p1,mg16],Item:{Count:1,id:"minecraft:stone_button"}}
execute if data entity @s Inventory[{id:"minecraft:brick",tag:{HideFlags:64}}] run data modify entity @e[type=item,tag=GWdr0p1,tag=mg16,sort=nearest,limit=1] Item.id set from entity @s Inventory[{id:"minecraft:brick",tag:{HideFlags:64}}].id
execute if data entity @s Inventory[{id:"minecraft:brick",tag:{HideFlags:64}}] run data modify entity @e[type=item,tag=GWdr0p1,tag=mg16,sort=nearest,limit=1] Item.tag set from entity @s Inventory[{id:"minecraft:brick",tag:{HideFlags:64}}].tag
execute store result score @s mg16.7 run clear @s brick{HideFlags:64}
execute at @s[scores={mg16.7=1..}] store result entity @e[type=item,tag=GWdr0p1,tag=mg16,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s mg16.7
scoreboard players reset @s mg16.7
tag @e[tag=GWdr0p,sort=nearest,limit=1] remove GWdr0p
tag @e[tag=GWdr0p1,sort=nearest,limit=1] remove GWdr0p1
tag @s remove GWdrop