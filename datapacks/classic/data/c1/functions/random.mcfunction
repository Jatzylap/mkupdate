#SURVIVAL
execute if entity @s[x=-51,y=5,z=35,distance=..5,tag=!PG] run loot replace block -51 6 40 container.0 loot c1:random/survival
execute if entity @s[x=-51,y=5,z=35,distance=..5,tag=PG_] run loot replace block -51 6 40 container.0 loot c1:random/survival
execute if entity @s[x=-51,y=5,z=35,distance=..5] if data block -51 6 40 Items[{tag:{mg:4}}] run function c1:mg4/enter

#PVE
execute if entity @s[x=-18,y=4,z=-25,distance=..5,tag=!PG] run loot replace block -51 6 40 container.0 loot c1:random/pve
execute if entity @s[x=-18,y=4,z=-25,distance=..5,tag=PG_] run loot replace block -51 6 40 container.0 loot c1:random/pve
execute if entity @s[x=-18,y=4,z=-25,distance=..5,tag=PG_] if data block -51 6 40 Items[{tag:{mg:19}}] run function c1:random
execute if entity @s[x=-18,y=4,z=-25,distance=..5,tag=!PG] if data block -51 6 40 Items[{tag:{mg:19}}] run function c1:mg19/enter

#SKILL
execute if entity @s[x=-77,y=7,z=85,distance=..5,tag=!PG] run loot replace block -72 9 85 container.0 loot c1:random/skill
execute if entity @s[x=-77,y=7,z=85,distance=..5,tag=PG_] run loot replace block -72 9 85 container.0 loot c1:random/skill
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:3}}] run function c1:mg3/enter
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:5}}] run function c1:mg5/enter
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:6}}] run function c1:mg6/enter
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:7}}] run function c1:mg7/enter
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:9}}] run function c1:mg9/enter
execute if entity @s[x=-77,y=7,z=85,distance=..5] if data block -72 9 85 Items[{tag:{mg:10}}] run function c1:mg10/enter