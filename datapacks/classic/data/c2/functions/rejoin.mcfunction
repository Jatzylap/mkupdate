function clear:chat
tag @s add st0red
tag @s remove _rel_

tp @s[tag=SWplayers] 332 28 -135
execute unless block -347 2 -52 redstone_block run function mk:restore
execute unless block -347 2 -52 redstone_block run function c2:mg8/reset
tp @s[tag=STGplayers] 439 160 68
execute unless block -356 2 -71 redstone_block run function mk:restore
execute unless block -356 2 -71 redstone_block run function c2:mg2/reset