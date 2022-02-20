playsound ui.button.click master @s ~ ~ ~ 1
execute unless entity @s[tag=0n] if block -120 27 78 dark_oak_wall_sign{Text4:'{"bold":true,"color":"green","text":"TRUE"}'} run tag @s add 0ff
execute at @s[tag=0ff] run data merge block -120 27 78 {Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"function mk:gamerule/5"}}',Text1:'{"color":"white","text":"Disable"}',Text2:'{"text":"LIBRARY","color":"white","bold":true}'}
execute unless entity @s[tag=0ff] if block -120 27 78 dark_oak_wall_sign{Text4:'{"bold":true,"color":"dark_red","text":"FALSE"}'} run tag @s add 0n
forceload add -233 -142
execute at @s[tag=0n] run fill -228 15 -142 -240 30 -142 iron_bars keep
execute at @s[tag=0ff] run fill -228 15 -142 -240 30 -142 air replace iron_bars
forceload remove -233 -142
tellraw @s[tag=0n] ["",{"text":"\nLibrary locations and options have been disabled.","color":"gray"}]
tellraw @s[tag=0ff] ["",{"text":"\nLibrary locations and options are re-accessible.","color":"aqua"}]
execute at @s[tag=0n] run data merge block -120 27 78 {Text4:'{"bold":true,"color":"green","text":"TRUE"}',Text3:'{"text":"","clickEvent":{"action":"run_command","value":"function mk:gamerule/5"}}',Text1:'{"color":"white","text":"Disable"}',Text2:'{"text":"LIBRARY","color":"white","bold":true}'}
execute at @s[tag=0n] run datapack disable "file/library"
execute at @s[tag=0ff] run datapack enable "file/library"
tag @s remove 0ff
tag @s remove 0n