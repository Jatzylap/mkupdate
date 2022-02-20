playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0n1] if data block -308 15 63 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Height:"},{"bold":true,"color":"yellow","text":" 1x1"}],"text":""}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -308 15 63 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Height:"},{"bold":true,"color":"yellow","text":" 1x3"}],"text":""}'}
execute if entity @s[tag=!0n2] if data block -308 15 63 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Height:"},{"bold":true,"color":"yellow","text":" 1x3"}],"text":""}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -308 15 63 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Height:"},{"bold":true,"color":"yellow","text":" 1x1"}],"text":""}'}
tag @s remove 0n2
tag @s remove 0n1