#STRATEGY
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=!PG] run loot replace block -51 6 52 container.0 loot c2:random/strategy
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=PG_] run loot replace block -51 6 52 container.0 loot c2:random/strategy
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=PG] if data block -51 6 52 Items[{tag:{mg:1}}] run function c2:random
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=PG] if data block -51 6 52 Items[{tag:{mg:22}}] run function c2:random
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=!PG] if data block -51 6 52 Items[{tag:{mg:1}}] run function c2:mg1/enter
execute if entity @s[x=-51,y=5,z=47,distance=..5,tag=!PG] if data block -51 6 52 Items[{tag:{mg:22}}] run function c2:mg22/enter
#execute if entity @s[x=-51,y=5,z=47,distance=..5] if data block -51 6 52 Items[{tag:{}}]

#PVP
execute if entity @s[x=-18,y=4,z=-13,distance=..5] run loot replace block -18 5 -8 container.0 loot c2:random/pvp
execute if entity @s[x=-18,y=4,z=-13,distance=..5] if data block -18 5 -8 Items[{tag:{mg:2}}] run function c2:mg2/enter
execute if entity @s[x=-18,y=4,z=-13,distance=..5] if data block -18 5 -8 Items[{tag:{mg:8}}] run function c2:mg8/enter
#execute if entity @s[x=-18,y=4,z=-13,distance=..5] if data block -18 5 -8 Items[{tag:{}}]