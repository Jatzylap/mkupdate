playsound ui.button.click master @s ~ ~ ~ 0.2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Title "}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Tellraw "}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Tellraw "}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Bossbar "}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Bossbar "}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Title "}'}
tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4