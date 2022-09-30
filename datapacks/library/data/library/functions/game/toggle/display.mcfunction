playsound ui.button.click master @s ~ ~ ~ 0.2
execute at @s[tag=!0ff] if data block -290 14 60 {Text2:'{"bold":true,"color":"white","extra":[{"color":"light_purple","text":"YES"}],"text":"End text: "}'} run tag @s add 0n
execute at @s[tag=0n] run data merge block -290 14 60 {Text2:'{"bold":true,"color":"white","extra":[{"color":"red","text":"NO"}],"text":"End text: "}'}
execute at @s[tag=!0n] if data block -290 14 60 {Text2:'{"bold":true,"color":"white","extra":[{"color":"red","text":"NO"}],"text":"End text: "}'} run tag @s add 0ff
execute at @s[tag=0ff] run data merge block -290 14 60 {Text2:'{"bold":true,"color":"white","extra":[{"color":"light_purple","text":"YES"}],"text":"End text: "}'}
tag @s remove 0ff
tag @s remove 0n