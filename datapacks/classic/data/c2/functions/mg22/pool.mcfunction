tag @s remove mg22_lvl1
tag @s remove mg22_lvl2
tag @s remove mg22_lvl3
tag @s remove mg22_lvl4
tag @s remove mg22_lvl5
tag @s remove mg22_goat

spreadplayers 142 -180 0 20 under -10 false @s

execute if block ~ -8 ~ air run tag @s add mg22_goat
execute unless block ~ -8 ~ air if block ~ -11 ~ red_wool run tag @s add mg22_lvl5
execute unless block ~ -8 ~ air unless block ~ -11 ~ red_wool if block ~ -14 ~ red_wool run tag @s add mg22_lvl4
execute unless block ~ -8 ~ air unless block ~ -11 ~ red_wool unless block ~ -14 ~ red_wool if block ~ -17 ~ red_wool run tag @s add mg22_lvl3
execute unless block ~ -8 ~ air unless block ~ -11 ~ red_wool unless block ~ -14 ~ red_wool unless block ~ -17 ~ red_wool if block ~ -20 ~ red_wool run tag @s add mg22_lvl2
execute unless block ~ -8 ~ air unless block ~ -11 ~ red_wool unless block ~ -14 ~ red_wool unless block ~ -17 ~ red_wool unless block ~ -20 ~ red_wool run tag @s add mg22_lvl1