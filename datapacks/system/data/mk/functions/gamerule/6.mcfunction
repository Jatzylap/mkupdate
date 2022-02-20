playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if block -120 27 76 dark_oak_wall_sign{Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -120 27 76 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}',Text1:'{"color":"white","text":"Lock","clickEvent":{"action":"run_command","value":"fill -52 9 -9 -52 11 -7 iron_bars keep"}}'}
execute unless entity @s[tag=0ff] if block -120 27 76 dark_oak_wall_sign{Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
tellraw @s[tag=0n] ["",{"text":"\nClassic Game tower and lobby shortcuts are now sealed.","color":"gray"}]
tellraw @s[tag=0ff] ["",{"text":"\nClassic Game tower and lobby shortcuts reopened.","color":"aqua"}]
execute as @s[tag=0n] at @s run data merge block -120 27 76 {Text4:'{"bold":true,"color":"green","text":"TRUE"}',Text1:'{"color":"white","text":"Lock","clickEvent":{"action":"run_command","value":"fill -52 9 -9 -52 11 -7 air replace iron_bars"}}'}
tag @s remove 0ff
tag @s remove 0n