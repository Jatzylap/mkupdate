data merge block -163 5 -89 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg26"}}'}
scoreboard players enable @a[scores={mg26=1..}] lobby
execute in sister_dimension run forceload add 26 -376 15 -385

execute in sister_dimension run tag @a[scores={mg26=1..},x=12,y=2,z=-386,dx=18,dy=18,dz=18,tag=!TCplayers,tag=!SPmg26] add TCplayers
effect clear @a[scores={mg26=1..},tag=TCplayers]
effect give @a[scores={mg26=1..},tag=TCplayers] weakness 1000000 255 true
gamemode adventure @a[scores={mg26=1..},tag=TCplayers]
bossbar add tc_progress ["..."]
scoreboard players set @e[limit=1,name="M@K"] mg26.1 0
execute in sister_dimension run fill 31 3 -385 31 19 -369 black_concrete
execute in sister_dimension run fill 13 3 -387 29 19 -387 black_concrete
execute in sister_dimension run fill 29 3 -367 13 19 -367 black_concrete
execute in sister_dimension run fill 11 3 -369 11 19 -385 black_concrete
execute in sister_dimension run fill 13 20 -385 29 20 -369 black_concrete
execute in sister_dimension if score @e[name="M@K",limit=1] mg26 matches 1 run fill 13 1 -385 29 1 -369 orange_concrete replace white_concrete
execute in sister_dimension if score @e[name="M@K",limit=1] mg26 matches 2 run fill 13 1 -385 29 1 -369 blue_concrete replace white_concrete
execute in sister_dimension if score @e[name="M@K",limit=1] mg26 matches 3 run fill 13 1 -385 29 1 -369 lime_concrete replace white_concrete

setblock -354 2 -44 redstone_block