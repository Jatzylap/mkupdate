#PARKOUR
execute if entity @s[x=-51,y=5,z=59,distance=..5,tag=!PG] run loot replace block -51 6 64 container.0 loot c3:random/parkour
execute if entity @s[x=-51,y=5,z=59,distance=..5,tag=PG_] run loot replace block -51 6 64 container.0 loot c3:random/parkour

execute if entity @s[x=-51,y=5,z=59,distance=..5] if data block -51 6 64 Items[{tag:{mg:13}}] run function c3:mg13/enter
execute if entity @s[x=-51,y=5,z=59,distance=..5] if data block -51 6 64 Items[{tag:{mg:17}}] run function c3:mg17/enter
execute if entity @s[x=-51,y=5,z=59,distance=..5] if data block -51 6 64 Items[{tag:{mg:18}}] run function c3:mg18/enter