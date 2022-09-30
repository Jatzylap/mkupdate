playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0ff,tag=!0n2] if data block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":true,"color":"aqua","text":" MANUAL"}],"text":""}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'}
execute if entity @s[tag=!0ff,tag=!0n1] if data block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"color":"white","text":" @Score"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"color":"white","text":" @Score"}],"text":""}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run data merge block -290 14 59 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":true,"color":"aqua","text":" MANUAL"}],"text":""}'}
tag @s remove 0ff
tag @s remove 0n1
tag @s remove 0n2