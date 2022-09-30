data merge block -108 41 69 {Command:""}
data merge block -108 42 68 {Command:""}
data merge block -108 40 68 {Command:""}
data merge block -108 42 70 {Command:""}
data merge block -108 40 70 {Command:""}
scoreboard players add @a[tag=P0ft_pre] o_r 1
execute if score @r[tag=P0ft_pre] o_r matches 1 run data merge block -108 42 68 {Command:"function mk:lobby/test-right"}
execute if score @r[tag=P0ft_pre] o_r matches 2 run data merge block -108 40 68 {Command:"function mk:lobby/test-right"}
execute if score @r[tag=P0ft_pre] o_r matches 3 run data merge block -108 42 70 {Command:"function mk:lobby/test-right"}
execute if score @r[tag=P0ft_pre] o_r matches 4 run data merge block -108 40 70 {Command:"function mk:lobby/test-right"}
execute as @a[tag=P0ft_pre,scores={o_r=5..,o_l=5..}] at @s run tag @s add P2