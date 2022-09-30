function clear:chat

execute if block -312 2 -41 redstone_block run tp @s[tag=SpleefPlayers] -32 26 108
execute unless block -312 2 -41 redstone_block run function mk:restore
execute unless block -312 2 -41 redstone_block run function c1:mg3/reset
effect give @s[scores={mg3=1..}] fire_resistance 100000 100 true
give @s[scores={mg3=1..}] diamond_shovel{HideFlags:15,Unbreakable:1,Enchantments:[{id:efficiency,lvl:1}],CanDestroy:[snow,snow_block],CPG:1b}

execute if block -334 2 -48 redstone_block run tp @s[tag=SDplayers] -5 2 35
execute unless block -334 2 -48 redstone_block run function mk:restore
execute unless block -334 2 -48 redstone_block run function c1:mg5/reset

execute if block -337 2 -63 redstone_block run tp @s[tag=VFplayers] 100 46 -17
execute unless block -337 2 -63 redstone_block run function mk:restore
execute unless block -337 2 -63 redstone_block run function c1:mg6/reset
effect give @s[tag=VFplayers] fire_resistance 100000 100 true

execute if block -315 2 -64 redstone_block run tp @s[tag=TRplayers] 115 18 -17
execute unless block -315 2 -64 redstone_block run function mk:restore
execute unless block -315 2 -64 redstone_block run function c1:mg7/reset

execute if block -337 2 -74 redstone_block run tp @s[tag=TTplayers] 109.0 36 -58.0
execute unless block -337 2 -74 redstone_block run function mk:restore
execute unless block -337 2 -74 redstone_block run function c1:mg9/reset

execute if block -307 2 -73 redstone_block run tp @s[tag=CMplayers] -2 6 133
execute unless block -307 2 -73 redstone_block run function mk:restore
execute unless block -307 2 -73 redstone_block run function c1:mg10/reset