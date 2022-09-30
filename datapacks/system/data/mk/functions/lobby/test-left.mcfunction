data merge block -118 40 70 {Command:""}
data merge block -118 42 68 {Command:""}
data merge block -118 40 68 {Command:""}
data merge block -118 41 69 {Command:""}
data merge block -118 42 70 {Command:""}
scoreboard players add @a[tag=P0ft_pre] o_l 1
execute if score @r[tag=P0ft_pre] o_l matches 1 run data merge block -118 42 68 {Command:"function mk:lobby/test-left"}
execute if score @r[tag=P0ft_pre] o_l matches 2 run data merge block -118 40 68 {Command:"function mk:lobby/test-left"}
execute if score @r[tag=P0ft_pre] o_l matches 3 run data merge block -118 41 69 {Command:"function mk:lobby/test-left"}
execute if score @r[tag=P0ft_pre] o_l matches 4 run data merge block -118 42 70 {Command:"function mk:lobby/test-left"}
execute as @a[tag=P0ft_pre,scores={o_r=5..,o_l=5..}] at @s run tag @s add P2