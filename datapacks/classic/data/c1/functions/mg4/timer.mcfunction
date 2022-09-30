scoreboard players add @e[name="M@K"] mg4.5 1
execute as @e[name="M@K",scores={mg4.5=..5}] at @s run data merge block -47 6 35 {Text3:'{"text":"Begins in 5","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg4.5=21}] at @s run data merge block -47 6 35 {Text3:'{"text":"Begins in 4","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg4.5=42}] at @s run data merge block -47 6 35 {Text3:'{"text":"Begins in 3","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg4.5=63}] at @s run data merge block -47 6 35 {Text3:'{"text":"Begins in 2","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg4.5=84}] at @s run data merge block -47 6 35 {Text3:'{"text":"Begins in 1","color":"gold","clickEvent":{"action":"run_command","value":""}}'}
execute as @e[name="M@K",scores={mg4.5=105}] at @s run function c1:mg4/initiate
execute as @e[name="M@K",scores={mg4.5=105}] at @s run scoreboard players reset @e[name="M@K"] mg4.5