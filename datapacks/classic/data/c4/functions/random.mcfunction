#LOGIC
execute if entity @s[x=-51,y=5,z=71,distance=..5,tag=!PG] run loot replace block -51 6 76 container.0 loot c4:random/logic
execute if entity @s[x=-51,y=5,z=71,distance=..5,tag=PG_] run loot replace block -51 6 76 container.0 loot c4:random/logic

execute if entity @s[x=-51,y=5,z=71,distance=..5] if data block -51 6 76 Items[{tag:{mg:25}}] run function c4:mg25/enter