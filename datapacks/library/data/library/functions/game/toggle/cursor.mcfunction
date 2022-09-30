playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff] if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'}
execute as @s[tag=0n] at @s run data merge block -304 15 72 {Text1:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/up"},"text":"RISE (+0.1)"}'}
execute as @s[tag=0n] at @s run data merge block -304 14 72 {Text1:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/down"},"text":"DROP (-0.1)"}'}
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 11 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 101
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -9 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -99
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -8 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -89
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -7 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -79
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -6 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -69
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -5 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -59
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -4 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -49
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -3 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -39
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -2 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -29
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -1 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -19
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 0 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -9
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 1 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 1
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 2 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 11
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 3 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 21
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 4 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 31
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 5 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 41
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 6 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 51
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 7 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 61
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 8 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 71
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 9 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 81
execute as @s[tag=0n] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 10 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 91
execute at @s[tag=!0n] if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'}
execute as @s[tag=0ff] at @s run data merge block -304 15 72 {Text1:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/up"},"text":"RISE (+1)"}'}
execute as @s[tag=0ff] at @s run data merge block -304 14 72 {Text1:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/down"},"text":"DROP (-1)"}'}
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -9..0 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 0
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -99..-90 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -9
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -89..-80 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -8
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -79..-70 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -7
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -69..-60 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -6
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -59..-50 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -5
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -49..-40 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -4
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -39..-30 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -3
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -29..-20 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -2
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches -19..-10 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 -1
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 1..10 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 1
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 11..20 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 2
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 21..30 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 3
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 31..40 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 4
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 41..50 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 5
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 51..60 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 6
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 61..70 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 7
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 71..80 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 8
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 81..90 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 9
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 91..100 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 10
execute as @s[tag=0ff] at @s if score @e[limit=1,name="M@K"] mgc-1 matches 101 run scoreboard players set @e[limit=1,name="M@K"] mgc-1 11
tag @s remove 0n
tag @s remove 0ff