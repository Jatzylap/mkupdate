execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @e[tag=3vent,tag=target] unless entity @e[tag=3vent,tag=button] run tellraw @s ["",{"text":"Target Events","color":"aqua"},{"text":" must be selected for this to work.","color":"red"}]
playsound item.crossbow.loading_end master @s ~ ~ ~ 1 1.2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5] if data block -290 15 57 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Start"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -290 15 57 {Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@End"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -290 15 57 {Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@End"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'}
execute as @s[tag=0n2] at @s run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"text":"Interaction","extra":[{"bold":false,"color":"yellow","text":" >>"}]}',Text2:'{"bold":true,"color":"white","text":"TERMINATES"}'}
execute as @s[tag=0n2] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute as @s[tag=0n2] at @s unless entity @e[tag=3vent,tag=button] if entity @e[tag=3vent,tag=target] if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} run tellraw @s ["",{"text":"A","color":"red"},{"text":" Button Event","color":"yellow"},{"text":" must be present for this to work.","color":"red"}] 
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6] if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -290 15 57 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Custom"}'}
execute as @s[tag=0n3] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}
execute as @s[tag=0n3] at @s run data merge block -290 15 58 {Text2:'',Text3:''}
execute as @s[tag=0n3] at @s run scoreboard players set @e[tag=3vent,tag=target] mgc-1.2 0
execute as @s[tag=0n3] at @s run scoreboard players set @e[tag=3vent,tag=target] mgc-1.3 0
execute as @s[tag=0n3] at @s if entity @e[tag=3vent,tag=target] run data merge block -290 15 58 {Text2:'{"text":"Interval: ","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time2"},"bold":true,"color":"white","extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=target]","objective":"mgc-1.3"}},{"text":"s","color":"white","bold":true}]}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6] if data block -290 15 57 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Custom"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'}
execute as @s[tag=0n4] at @s run data merge block -290 15 59 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":"s"}],"text":"0"}',Text2:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"bold":true,"color":"white","text":"DELAY"}'}
execute as @s[tag=0n4] at @s run scoreboard players reset @e[tag=3vent,tag=target] mgc-1.2
execute as @s[tag=0n4] at @s run scoreboard players reset @e[tag=3vent,tag=target] mgc-1.3
execute as @s[tag=0n4] at @s run data merge block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6] if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -290 15 57 {Text3:'{"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"NEVER"}'}
execute as @s[tag=0n5] at @s run data merge block -290 15 58 {Text2:'',Text3:''}
execute as @s[tag=0n5] at @s run data merge block -290 15 59 {Text2:'',Text3:''}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5] if data block -290 15 57 {Text3:'{"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"NEVER"}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -290 15 57 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Start"}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5
tag @s remove 0n6