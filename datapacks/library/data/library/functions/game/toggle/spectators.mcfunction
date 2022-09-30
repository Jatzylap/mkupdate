playsound ui.button.click master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0ff] if data block -308 16 68 {Text3:'{"bold":true,"color":"gray","extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"OFF"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -308 16 68 {Text3:'{"bold":true,"color":"green","text":"ON","extra":[{"bold":false,"color":"yellow","text":" >>"}]}'}
execute if entity @s[tag=!0n] if data block -308 16 68 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -308 16 68 {Text3:'{"bold":true,"color":"gray","text":"OFF","extra":[{"bold":false,"color":"yellow","text":" >>"}]}'}
tag @s remove 0n
tag @s remove 0ff