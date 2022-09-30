function clear:chat

execute if block -351 2 -42 redstone_block run tp @s[scores={mg24=1..}] -163 4 -93
execute unless block -351 2 -42 redstone_block run function mk:restore
execute unless block -351 2 -42 redstone_block run function d3:mg12/reset