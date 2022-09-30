function clear:chat

execute if block -349 2 -87 redstone_block run tp @s[scores={mg12=1..}] -151 4 -93
execute unless block -349 2 -87 redstone_block run function mk:restore
execute unless block -349 2 -87 redstone_block run function d3:mg12/reset