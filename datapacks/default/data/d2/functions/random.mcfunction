#RACE
execute if entity @s[x=-66,y=7,z=-90,distance=..5,tag=!PG] run loot replace block -61 8 -90 container.0 loot d2:random/race
execute if entity @s[x=-66,y=7,z=-90,distance=..5,tag=PG_] run loot replace block -61 8 -90 container.0 loot d2:random/race
execute if entity @s[x=-66,y=7,z=-90,distance=..5] if data block -61 8 -90 Items[{tag:{mg:11}}] run function d2:mg11/enter

#PVP
execute if entity @s[x=-90,y=3,z=-97,distance=..5,tag=!PG] run loot replace block -95 4 -97 container.0 loot d2:random/pvp
execute if entity @s[x=-90,y=3,z=-97,distance=..5,tag=PG_] run loot replace block -95 4 -97 container.0 loot d2:random/pvp
execute if entity @s[x=-90,y=3,z=-97,distance=..5] if data block -95 4 -97 Items[{tag:{mg:16}}] run function d2:mg16/enter