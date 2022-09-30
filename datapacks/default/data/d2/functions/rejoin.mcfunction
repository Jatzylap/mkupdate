function clear:chat

execute if block -320 4 -95 redstone_block run tp @s[tag=LCplayers] -100 8 -180
execute unless block -320 4 -95 redstone_block run function mk:restore
execute unless block -320 4 -95 redstone_block run function d2:mg11/reset
execute if block -284 2 -66 redstone_block run tp @s[tag=GWplayers] 142 20 -357
execute unless block -284 2 -66 redstone_block run function mk:restore
execute unless block -284 2 -66 redstone_block run function d2:mg16/reset
execute if block -351 2 -42 redstone_block run tp @s[tag=MMplayers] 862 5 61
execute unless block -351 2 -42 redstone_block run function mk:restore
execute unless block -351 2 -42 redstone_block run function d2:mg24/reset