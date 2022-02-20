tag @s[tag=!page4] add v0ted
execute if data entity @s[tag=page4] EnderItems[{Slot:8b}] run tag @s add v0ted
execute unless data entity @s[tag=page4] EnderItems[{Slot:8b}] if entity @e[tag=MGCroute] run tag @s add v0ted
playsound block.note_block.cow_bell master @s ~ ~ ~ 1 2
execute unless data entity @s[tag=page4] EnderItems[{Slot:8b}] unless entity @e[tag=MGCroute] run playsound entity.item.break master @s ~ ~ ~ 1000
execute unless data entity @s[tag=page4] EnderItems[{Slot:8b}] unless entity @e[tag=MGCroute] run tellraw @s ["",{"text":"This minigame must be routed to a Game tower first!","color":"red"}]

execute if entity @s[tag=!page4] run tellraw @a[tag=PG] ["",{"selector":"@a[tag=v0ted]","bold":true},{"text":" has voted!","color":"yellow"}]
execute if data entity @s[tag=page4] EnderItems[{Slot:8b}] run tellraw @a[tag=PG] ["",{"selector":"@a[tag=v0ted]","bold":true},{"text":" has voted!","color":"yellow"}]
execute unless data entity @s[tag=page4] EnderItems[{Slot:8b}] if entity @e[tag=MGCroute] run tellraw @a[tag=PG] ["",{"selector":"@a[tag=v0ted]","bold":true},{"text":" has voted!","color":"yellow"}]

#p1
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless entity @e[tag=PG,tag=mg2,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:0b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg2],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless data entity @s EnderItems[{Slot:0b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg2] pg1.2 1
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless entity @e[tag=PG,tag=mg3,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:8b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg3],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless data entity @s EnderItems[{Slot:8b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg3] pg1.2 1
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless entity @e[tag=PG,tag=mg5,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:18b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg5],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless data entity @s EnderItems[{Slot:18b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg5] pg1.2 1
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless entity @e[tag=PG,tag=mg6,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:26b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg6],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=!page2,tag=!page3,tag=!page4] unless data entity @s EnderItems[{Slot:26b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg6] pg1.2 1
#p2
execute at @s[tag=page2] unless entity @e[tag=PG,tag=mg7,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:0b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg7],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page2] unless data entity @s EnderItems[{Slot:0b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg7] pg1.2 1
execute at @s[tag=page2] unless entity @e[tag=PG,tag=mg8,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:8b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg8],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page2] unless data entity @s EnderItems[{Slot:8b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg8] pg1.2 1
execute at @s[tag=page2] unless entity @e[tag=PG,tag=mg9,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:18b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg9],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page2] unless data entity @s EnderItems[{Slot:18b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg9] pg1.2 1
execute at @s[tag=page2] unless entity @e[tag=PG,tag=mg10,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:26b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg10],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page2] unless data entity @s EnderItems[{Slot:26b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg10] pg1.2 1
#p3
execute at @s[tag=page3] unless entity @e[tag=PG,tag=mg11,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:0b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg11],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page3] unless data entity @s EnderItems[{Slot:0b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg11] pg1.2 1
execute at @s[tag=page3] unless entity @e[tag=PG,tag=mg13,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:8b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg13],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page3] unless data entity @s EnderItems[{Slot:8b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg13] pg1.2 1
execute at @s[tag=page3] unless entity @e[tag=PG,tag=mg16,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:18b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg16],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page3] unless data entity @s EnderItems[{Slot:18b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg16] pg1.2 1
execute at @s[tag=page3] unless entity @e[tag=PG,tag=mg18,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:26b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg18],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page3] unless data entity @s EnderItems[{Slot:26b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg18] pg1.2 1
#p4
execute at @s[tag=page4] unless entity @e[tag=PG,tag=mgc,nbt={Small:1b}] if entity @e[tag=MGCroute] unless data entity @s EnderItems[{Slot:8b}] run summon armor_stand -326 2 -13 {Tags:[PG,mgc],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page4] unless data entity @s EnderItems[{Slot:8b}] if entity @e[tag=MGCroute] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mgc] pg1.2 1
execute at @s[tag=page4] unless entity @e[tag=PG,tag=mg4,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:0b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg4],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page4] unless data entity @s EnderItems[{Slot:0b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg4] pg1.2 1
execute at @s[tag=page4] unless entity @e[tag=PG,tag=mg20,nbt={Small:1b}] unless data entity @s EnderItems[{Slot:18b}] run summon armor_stand -326 2 -13 {Tags:[PG,mg20],Invisible:1,Small:1,Marker:1,NoBasePlate:1}
execute at @s[tag=page4] unless data entity @s EnderItems[{Slot:18b}] run scoreboard players add @e[nbt={Small:1b},tag=PG,tag=mg20] pg1.2 1

scoreboard players set #highscore pg1.2 0
scoreboard players operation #highscore pg1.2 > @e[tag=PG,nbt={Small:1b}] pg1.2
scoreboard players operation @e[tag=PG,nbt={Small:1b}] pg1.2 -= #highscore pg1.2