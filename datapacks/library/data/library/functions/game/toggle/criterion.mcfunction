playsound entity.firework_rocket.shoot master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Mob"}'} run tag @s add 0n1
execute at @s[tag=0n1] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Player"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Player"}'} run tag @s add 0n2
execute at @s[tag=0n2] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Jump"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Jump"}'} run tag @s add 0n3
execute at @s[tag=0n3] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Sneak"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Sneak"}'} run tag @s add 0n4
execute at @s[tag=0n4] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Reach Entity"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Reach Entity"}'} run tag @s add 0n5
execute at @s[tag=0n5] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Mob"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Mob"}'} run tag @s add 0n6
execute at @s[tag=0n6] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Target"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Target"}'} run tag @s add 0n7
execute at @s[tag=0n7] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"extra":[{"bold":false,"text":"Non-"},{"bold":true,"text":"Target"}],"text":"Kill "}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"extra":[{"bold":false,"text":"Non-"},{"bold":true,"text":"Target"}],"text":"Kill "}'} run tag @s add 0n8
execute at @s[tag=0n8] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Player"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Player"}'} run tag @s add 0n9
execute at @s[tag=0n9] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Break Block"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n11,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Break Block"}'} run tag @s add 0n10
execute at @s[tag=0n10] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Place Block"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n12,tag=!0n13] if data block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Place Block"}'} run tag @s add 0n11
execute at @s[tag=0n11] run data merge block -306 15 54 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Button"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n13] if data block -306 15 54 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Button"}'} run tag @s add 0n12
execute at @s[tag=0n12] run data merge block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'}
execute at @s[tag=0n12] if entity @e[tag=3vent,tag=tr.1] run data merge block -306 15 54 {Text3:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Untriggered :("}'}
execute at @s[tag=0n12] if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} if data block -290 15 57 {Text3:'{"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"NEVER"}'} run tellraw @s ["",{"text":"It's not working! Triggerror detected: @Trigger","color":"red"}]
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12] if data block -306 15 54 {Text3:'{"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Untriggered :("}'} run tag @s add 0n13
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12] if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} run tag @s add 0n13
execute at @s[tag=0n13] run data merge block -306 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Mob"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6
tag @s remove 0n7
tag @s remove 0n8
tag @s remove 0n9
tag @s remove 0n10
tag @s remove 0n11
tag @s remove 0n12
tag @s remove 0n13