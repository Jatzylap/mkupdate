scoreboard players add @e[name="M@K"] mg1.6 1
execute as @e[name="M@K",scores={mg1.6=..5}] at @s run data merge block -47 6 47 {Text3:'{"text":"Begins in 5","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg1.6=21}] at @s run data merge block -47 6 47 {Text3:'{"text":"Begins in 4","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg1.6=42}] at @s run data merge block -47 6 47 {Text3:'{"text":"Begins in 3","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg1.6=63}] at @s run data merge block -47 6 47 {Text3:'{"text":"Begins in 2","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg1.6=84}] at @s run data merge block -47 6 47 {Text3:'{"text":"Begins in 1","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg1.6=105}] at @s run function c2:mg1/initiate
execute as @e[name="M@K",scores={mg1.6=105}] at @s run scoreboard players reset @e[name="M@K"] mg1.6