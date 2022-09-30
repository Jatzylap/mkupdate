clear @s
tag @s remove C_
tag @s remove D_
tag @s remove L_
tag @s remove _rel_
schedule clear mk:lobby/pass
fill -110 40 76 -110 42 72 oak_button[facing=west] replace #buttons
fill -116 40 76 -116 42 72 oak_button[facing=east] replace #buttons
loot spawn -113 38 81 loot library:test
execute if entity @e[type=item,nbt={Item:{tag:{od:1}}}] run setblock -116 42 76 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:2}}}] run setblock -116 42 74 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:3}}}] run setblock -116 42 72 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:4}}}] run setblock -116 41 75 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:5}}}] run setblock -116 41 73 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:6}}}] run setblock -116 40 76 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:7}}}] run setblock -116 40 74 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:8}}}] run setblock -116 40 72 acacia_button[facing=east]
execute if entity @e[type=item,nbt={Item:{tag:{od:9}}}] run setblock -110 42 72 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:10}}}] run setblock -110 42 74 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:11}}}] run setblock -110 42 76 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:12}}}] run setblock -110 41 73 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:13}}}] run setblock -110 41 75 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:14}}}] run setblock -110 40 72 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:15}}}] run setblock -110 40 74 acacia_button[facing=west]
execute if entity @e[type=item,nbt={Item:{tag:{od:16}}}] run setblock -110 40 76 acacia_button[facing=west]
kill @e[type=item,nbt={Item:{tag:{0f:1}}}]
data merge block -118 40 70 {Command:"function mk:lobby/test-left"}
data merge block -118 42 68 {Command:""}
data merge block -118 40 68 {Command:""}
data merge block -118 41 69 {Command:""}
data merge block -118 42 70 {Command:""}

data merge block -108 41 69 {Command:"function mk:lobby/test-right"}
data merge block -108 42 68 {Command:""}
data merge block -108 40 68 {Command:""}
data merge block -108 42 70 {Command:""}
data merge block -108 40 70 {Command:""}
execute as @s[tag=tst1,tag=tst2,tag=P1,tag=P2] at @s run title @s title ["",{"text":"You passed!","color":"dark_aqua","bold":true}]
title @s[tag=tst1,tag=tst2,tag=!P2] title ["",{"text":"Failed!","color":"red","bold":true}]
execute as @s[tag=tst1,tag=tst2,tag=P1,tag=P2] at @s run tellraw @a[tag=!m-g] ["\n",{"selector":"@s","bold":true},{"text":"has just passed the","bold":true},{"text":" OptiFine","color":"yellow","bold":true},{"text":" Test","color":"dark_aqua","bold":true},{"text":"!","bold":true}]
tag @a[tag=tst1,tag=tst2,tag=P1,tag=P2] add P0ft
execute unless score @s lobby matches 1.. run function mk:exit
tag @a remove P1
tag @a remove P2
tag @a remove tst1
tag @a remove tst2