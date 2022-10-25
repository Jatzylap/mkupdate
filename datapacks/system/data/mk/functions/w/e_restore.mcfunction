# REDIRECTED FROM MK:ACTIVE FUNCTION (WHEN rest0re TAG IS APPLIED --> tp a random matching A.S. storage point from forced chunks to PLAYER + A.S. sticks until inventory data is restored)
execute store result score @s 5 run data get entity @s UUID[0]
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 as @e[limit=1,tag=st0rage,distance=..1] at @s if data entity @s ArmorItems[0].tag.BlockEntityTag.Items[0].Slot in overworld run data modify block -313 9 -8 Items set from entity @s ArmorItems[0].tag.BlockEntityTag.Items
execute in overworld run loot give @s mine -313 9 -8 bamboo{0:1}
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 as @e[limit=1,tag=st0rage,distance=..1] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[0].Slot in overworld run data modify block -313 9 -8 Items set from entity @s ArmorItems[1].tag.BlockEntityTag.Items
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 if data entity @e[limit=1,tag=st0rage,distance=..1] ArmorItems[1].tag.BlockEntityTag.Items[0].Slot in overworld run loot give @s mine -313 9 -8 bamboo{0:1}
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 run tag @s remove st0red
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 run tag @s remove rest0re
execute if score @s 5 matches 0 run tag @s remove st0red
execute if score @s 5 = @e[limit=1,tag=st0rage,tag=st0re,distance=..1] 5 as @e[limit=1,tag=st0rage,tag=st0re,distance=..1] at @s run kill @s
execute as @e[limit=1,tag=st0rage,distance=..1] at @s unless score @s 5 matches ..0 unless score @s 5 matches 0.. run kill @s
execute in overworld run data merge block -313 9 -8 {Items:{}}