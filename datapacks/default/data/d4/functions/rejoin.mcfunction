function clear:chat

execute if block -354 2 -44 redstone_block run execute in sister_dimension run tp @s[scores={mg26=1..}] 21 2 -377 -90 0
execute unless block -354 2 -44 redstone_block run function mk:restore
execute unless block -354 2 -44 redstone_block run function d4:mg26/reset