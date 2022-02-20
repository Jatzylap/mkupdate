function clear:chat
tag @s add st0red
tag @s remove _rel_

execute if block -320 4 -95 redstone_block run tp @s[tag=LCplayers] -100 8 -180
execute unless block -320 4 -95 redstone_block run function mk:restore
execute unless block -320 4 -95 redstone_block run function d2:mg11/reset
execute if block -284 2 -66 redstone_block run tp @s[tag=GWplayers] 142 20 -357
execute unless block -284 2 -66 redstone_block run function mk:restore
execute unless block -284 2 -66 redstone_block run function d2:mg16/reset