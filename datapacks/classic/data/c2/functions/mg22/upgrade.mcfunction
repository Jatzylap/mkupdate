execute unless data entity @s Item.tag.EntityTag{Tags:["lvl3"]} store success score @s mg22 if data entity @s Item.tag{mg:22}

execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data merge entity @s[nbt={Item:{tag:{display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}']}}}}] {Item:{tag:{maxlvl:1}}}
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}']}}}}] Item.tag.EntityTag.Tags append value "lvl3"
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":"x3 speed","color":"yellow","italic":false}']}}}}] Item.tag.display.Lore[0] set value '{"text":"Maximum speed!","color":"red","italic":false}'
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}']}}}}] Item.tag.EntityTag.Tags append value "lvl2"
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":"x2 speed","color":"aqua","italic":false}']}}}}] Item.tag.display.Lore[0] set value '{"text":"x3 speed","color":"yellow","italic":false}'
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":""}']}}}}] Item.tag.EntityTag.Tags append value "lvl1"
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run data modify entity @s[nbt={Item:{tag:{display:{Lore:['{"text":""}']}}}}] Item.tag.display.Lore[0] set value '{"text":"x2 speed","color":"aqua","italic":false}'

execute if score @e[limit=1,name="M@K"] mg22.1 matches ..249 run playsound entity.item.break master @a[scores={mg22=1..}] 197 2 -163 0.2 1.1
execute if score @e[limit=1,name="M@K"] mg22.1 matches ..249 run playsound entity.villager.no master @a[scores={mg22=1..}] 197 2 -163 0.2 0.8
execute if score @e[limit=1,name="M@K"] mg22.1 matches ..249 run particle angry_villager 197 3 -163 0.1 0.1 0.1 0 9 normal @a[scores={mg22=1..}]
execute if data entity @s Item.tag.EntityTag{Tags:["lvl3"]} run playsound entity.item.break master @a[scores={mg22=1..}] 197 2 -163 0.2 1.1
execute if data entity @s Item.tag.EntityTag{Tags:["lvl3"]} run playsound entity.villager.no master @a[scores={mg22=1..}] 197 2 -163 0.2 0.8
execute if data entity @s Item.tag.EntityTag{Tags:["lvl3"]} run particle angry_villager 197 3 -163 0.1 0.1 0.1 0 9 normal @a[scores={mg22=1..}]

execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 0 run playsound entity.item.break master @a[scores={mg22=1..}] 197 2 -163 0.2 1.1
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 0 run playsound entity.villager.no master @a[scores={mg22=1..}] 197 2 -163 0.2 0.8
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 0 run particle angry_villager 197 3 -163 0.1 0.1 0.1 0 9 normal @a[scores={mg22=1..}]
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 1 run particle totem_of_undying 197 3 -163 0 0 0 0.5 80 normal @a[scores={mg22=1..}]
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 1 run particle cloud 197 3.5 -163 0.2 0.2 0.2 0 9 normal @a[scores={mg22=1..}]
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 1 run particle warped_spore 197 3 -163 0 0 0 0.1 15 normal @a[scores={mg22=1..}]
execute if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if score @s mg22 matches 1 run playsound block.anvil.use master @a[scores={mg22=1..}] 197 2 -163 0.2 2
data merge entity @s {Motion:[0.1d,0.3d]}
execute unless data entity @s Item.tag.EntityTag{Tags:["lvl3"]} as @e[limit=1,name="M@K"] if score @s mg22.1 matches 250.. run scoreboard players remove @s mg22.1 250
execute at @s[nbt={Item:{tag:{maxlvl:1}}}] as @e[limit=1,name="M@K"] if score @s mg22.1 matches 250.. run scoreboard players remove @s mg22.1 250
data remove entity @s Item.tag.maxlvl