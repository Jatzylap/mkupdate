playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=!0n2,tag=!0n3] if data block -326 4 -4 {Text3:'{"bold":true,"color":"aqua","text":"ENDER"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s unless data block -326 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -326 4 -4 {Text3:'{"bold":true,"color":"green","text":"OVERWORLD"}',Text1:''}
execute if entity @s[tag=!0n1,tag=!0n3] if data block -326 4 -4 {Text3:'{"bold":true,"color":"green","text":"OVERWORLD"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s unless data block -326 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -326 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"NETHER"}',Text1:''}
execute if entity @s[tag=!0n1,tag=!0n2] if data block -326 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"NETHER"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s unless data block -326 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -326 4 -4 {Text3:'{"bold":true,"color":"aqua","text":"ENDER"}',Text1:''}
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n1