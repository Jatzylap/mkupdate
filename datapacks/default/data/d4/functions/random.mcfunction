#COMMUNITY
execute if entity @s[x=-163,y=4,z=-93,distance=..5] run loot replace block -168 5 -93 container.0 loot d4:random/trivia
execute if entity @s[x=-163,y=4,z=-93,distance=..5] if data block -168 5 -93 Items[{tag:{mg:26}}] run function d4:mg26/enter
#execute if entity @s[x=-163,y=4,z=-93,distance=..5] if data block -168 5 -93 Items[{tag:{}}]