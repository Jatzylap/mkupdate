playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if block -106 27 79 dark_oak_wall_sign{Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -106 27 79 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}',Text3:'{"color":"dark_aqua","text":"Cycle","clickEvent":{"action":"run_command","value":"function mk:gamerule/3"}}',Text2:'{"color":"dark_aqua","text":"Weather","clickEvent":{"action":"run_command","value":"gamerule doWeatherCycle true"}}',Text1:'{"text":"GAMERULE","color":"green","bold":true}'}
execute unless entity @s[tag=0ff] if block -106 27 79 dark_oak_wall_sign{Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -106 27 79 {Text4:'{"bold":true,"color":"green","text":"TRUE"}',Text3:'{"color":"dark_aqua","text":"Cycle","clickEvent":{"action":"run_command","value":"function mk:gamerule/3"}}',Text2:'{"color":"dark_aqua","text":"Weather","clickEvent":{"action":"run_command","value":"gamerule doWeatherCycle false"}}',Text1:'{"text":"GAMERULE","color":"green","bold":true}'}
tag @s remove 0ff
tag @s remove 0n