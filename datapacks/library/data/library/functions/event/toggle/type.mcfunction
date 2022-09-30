playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"Random"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}',Text2:''}
execute as @s[tag=0n1] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run setblock -325 3 -4 air destroy
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Game decision"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"In order"}',Text3:'{"text":"chosen","color":"yellow","bold":true}'}
execute as @s[tag=0n2] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} if entity @s[advancements={mk:finish_tutorial=true}] run setblock -325 3 -4 oak_wall_sign[facing=north]{Text4:'{"text":"---------------"}',Text3:'{"text":"Rounds","color":"white","bold":true}',Text2:'{"bold":true,"color":"white","text":"Select","clickEvent":{"action":"run_command","value":"/function library:event/select"}}',Text1:'{"text":"---------------"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"In order"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}',Text2:''}
execute as @s[tag=0n3] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run setblock -325 3 -4 air destroy
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} run data merge block -325 4 -4 {Text2:'{"bold":true,"color":"yellow","text":"Random"}',Text3:'{"text":"from choice","color":"yellow","bold":true}'}
execute as @s[tag=0n4] at @s unless data block -325 4 -4 {Text1:'{"bold":true,"color":"gray","text":"*Locked*"}'} if entity @s[advancements={mk:finish_tutorial=true}] run setblock -325 3 -4 oak_wall_sign[facing=north]{Text4:'{"text":"---------------"}',Text3:'{"text":"Rounds","color":"white","bold":true}',Text2:'{"bold":true,"color":"white","text":"Select","clickEvent":{"action":"run_command","value":"/function library:event/select"}}',Text1:'{"text":"---------------"}'}
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n1