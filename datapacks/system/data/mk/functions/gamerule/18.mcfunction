playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if data block -120 27 80 {Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -120 27 80 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'}
execute unless entity @s[tag=0ff] if data block -120 27 80 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
execute at @s[tag=0n] if entity @e[tag=7p,scores={m=1..}] run tag @a[team=Member] remove L8
execute at @s[tag=0n] if entity @e[tag=7p,scores={m=1..}] run tag @a[team=Admin] add L8
execute at @s[tag=0n] if entity @e[tag=7p] run setblock -299 4 36 air
execute at @s[tag=0ff] if entity @e[tag=7p] run setblock -299 4 36 stone_pressure_plate
tellraw @s[tag=0ff] ["",{"text":"\nMinigame Creator security access abolished.","color":"gold"}]
tellraw @s[tag=0n] ["",{"text":"\nMinigame Creator access forbids non-administrators.","color":"dark_aqua"}]
execute as @s[tag=0n] at @s run data merge block -120 27 80 {Text4:'{"bold":true,"color":"green","text":"TRUE"}'}
tag @s remove 0ff
tag @s remove 0n