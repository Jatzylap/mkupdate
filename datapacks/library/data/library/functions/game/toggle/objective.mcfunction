execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @e[tag=3vent,tag=end] run tellraw @s ["",{"text":"An","color":"red"},{"text":" End Event","color":"light_purple"},{"text":" must be set for this to work.","color":"red"}]
playsound ui.button.click master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -290 14 56 {Text2:'{"bold":true,"color":"gray","text":"Undefined"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'}
execute as @s[tag=0n1] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/reset"},"text":"          >>"}',Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'}
execute as @s[tag=0n1] at @s run scoreboard players add @e[tag=3vent,tag=end] mgc-1.1 1
execute as @s[tag=0n1] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.2
execute as @s[tag=0n1] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.3
execute as @s[tag=0n1] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 57 {Text2:'{"text":"Max. Range: ","clickEvent":{"action":"run_command","value":"/function library:game/toggle/range"},"bold":true,"color":"white","extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=end]","objective":"mgc-1.1"}}]}'}
execute as @s[tag=0n1] at @s run data merge block -290 14 58 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/detect"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"text":"Detect: ","color":"white","bold":true,"extra":[{"text":"All","color":"yellow"}]}'}
execute as @s[tag=0n1] at @s run data merge block -290 14 60 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/display"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"text":"End text: ","color":"white","bold":true,"extra":[{"text":"YES","color":"light_purple"}]}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.1
execute as @s[tag=0n2] at @s run scoreboard players set @e[tag=3vent,tag=end] mgc-1.2 0
execute as @s[tag=0n2] at @s run scoreboard players set @e[tag=3vent,tag=end] mgc-1.3 0
execute as @s[tag=0n2] at @s run data merge block -290 14 58 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}
execute as @s[tag=0n2] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 57 {Text2:'{"text":"Interval: ","color":"white","bold":true,"clickEvent":{"action":"run_command","value":"/function library:game/toggle/time"},"extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=end]","objective":"mgc-1.3"}},{"text":"s","color":"white","bold":true}]}'}
execute as @s[tag=0n2] at @s run data merge block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'}
execute as @s[tag=0n2] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/reset"},"text":"          >>"}',Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.1
execute as @s[tag=0n3] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.2
execute as @s[tag=0n3] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.3
execute as @s[tag=0n3] at @s run data merge block -290 14 58 {Text2:'',Text3:''}
execute as @s[tag=0n3] at @s run data merge block -290 14 57 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>","color":"yellow"}',Text2:'{"text":"Mobs","color":"white","bold":true}'}
execute as @s[tag=0n3] at @s run data merge block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/reset"},"text":"          >>"}',Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 14 56 {Text2:'{"bold":true,"color":"gray","text":"Undefined"}'}
execute as @s[tag=0n4] at @s run data merge block -290 14 57 {Text2:'',Text3:''}
execute as @s[tag=0n4] at @s run data merge block -290 14 58 {Text2:'',Text3:''}
execute as @s[tag=0n4] at @s run data merge block -290 14 60 {Text2:'',Text3:''}
execute as @s[tag=0n4] at @s if entity @e[tag=3vent,tag=end] run data merge block -290 14 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/reset"},"text":"          >>"}',Text2:'{"extra":[{"bold":true,"color":"white","text":"Reset:"},{"bold":false,"color":"light_purple","text":" @End"}],"text":""}'}
execute as @s[tag=0n4] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.1
execute as @s[tag=0n4] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.2
execute as @s[tag=0n4] at @s run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.3
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4