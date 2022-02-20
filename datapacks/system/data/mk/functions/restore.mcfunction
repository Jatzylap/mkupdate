#REDIRECTS TO MK:ACTIVE FUNCTION (WHEN _rel_ TAG IS REMOVED --> tp matching A.S. in the game to random PLAYER locations until they have been restored with inventory)
execute store result score @s 5 run data get entity @s UUID[0]
tag @s remove _rel_
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 as @e[limit=1,tag=st0rage,distance=..1] at @s if data entity @s ArmorItems[0].tag.BlockEntityTag.Items[0].Slot run data modify block -313 9 -8 Items set from entity @s ArmorItems[0].tag.BlockEntityTag.Items
loot give @s mine -313 9 -8 bamboo{0:1}
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 as @e[limit=1,tag=st0rage,distance=..1] at @s if data entity @s ArmorItems[1].tag.BlockEntityTag.Items[0].Slot run data modify block -313 9 -8 Items set from entity @s ArmorItems[1].tag.BlockEntityTag.Items
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 if data entity @e[limit=1,tag=st0rage,distance=..1] ArmorItems[1].tag.BlockEntityTag.Items[0].Slot run loot give @s mine -313 9 -8 bamboo{0:1}
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 run tag @s remove st0red
execute if score @s 5 matches 0 run tag @s remove st0red
execute if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 as @e[limit=1,tag=st0rage,distance=..1] at @s run kill @s
execute as @e[limit=1,tag=st0rage,distance=..1] at @s unless score @s 5 matches ..0 unless score @s 5 matches 0.. run kill @s
data merge block -313 9 -8 {Items:{}}