#SURVIVAL
execute if entity @s[x=-151,y=4,z=-93,distance=..5] run loot replace block -156 5 -93 container.0 loot d3:random/survival
execute if entity @s[x=-151,y=4,z=-93,distance=..5] if data block -156 5 -93 Items[{tag:{mg:12}}] run function d3:mg12/enter
execute if entity @s[x=-151,y=4,z=-93,distance=..5] if data block -156 5 -93 Items[{tag:{mg:15}}] run function d3:mg15/enter
#execute if entity @s[x=-151,y=4,z=-93,distance=..5] if data block -156 5 -93 Items[{tag:{}}]