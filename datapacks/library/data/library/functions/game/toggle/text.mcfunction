playsound entity.player.burp master @s ~ ~ ~ 0.2 2
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -302 15 54 {Text3:'{"color":"light_purple","text":"[Text]"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5] if data block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5] if data block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5] if data block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4] if data block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -302 15 54 {Text3:'{"color":"light_purple","text":"[Text]"}'}

execute at @s[tag=0n1] as @e[tag=3vent,tag=end] run tag @s add mgc_t1
execute at @s[tag=0n1] as @e[tag=3vent,tag=end] run tag @s remove mgc_t2
execute at @s[tag=0n1] as @e[tag=3vent,tag=end] run tag @s remove mgc_t3
execute at @s[tag=0n1] as @e[tag=3vent,tag=end] run tag @s remove mgc_t4
execute at @s[tag=0n2] as @e[tag=3vent,tag=end] run tag @s add mgc_t2
execute at @s[tag=0n2] as @e[tag=3vent,tag=end] run tag @s remove mgc_t1
execute at @s[tag=0n2] as @e[tag=3vent,tag=end] run tag @s remove mgc_t3
execute at @s[tag=0n2] as @e[tag=3vent,tag=end] run tag @s remove mgc_t4
execute at @s[tag=0n3] as @e[tag=3vent,tag=end] run tag @s add mgc_t3
execute at @s[tag=0n3] as @e[tag=3vent,tag=end] run tag @s remove mgc_t1
execute at @s[tag=0n3] as @e[tag=3vent,tag=end] run tag @s remove mgc_t2
execute at @s[tag=0n3] as @e[tag=3vent,tag=end] run tag @s remove mgc_t4
execute at @s[tag=0n4] as @e[tag=3vent,tag=end] run tag @s add mgc_t4
execute at @s[tag=0n4] as @e[tag=3vent,tag=end] run tag @s remove mgc_t1
execute at @s[tag=0n4] as @e[tag=3vent,tag=end] run tag @s remove mgc_t2
execute at @s[tag=0n4] as @e[tag=3vent,tag=end] run tag @s remove mgc_t3
execute at @s[tag=0n5] as @e[tag=3vent,tag=end] run tag @s remove mgc_t1
execute at @s[tag=0n5] as @e[tag=3vent,tag=end] run tag @s remove mgc_t2
execute at @s[tag=0n5] as @e[tag=3vent,tag=end] run tag @s remove mgc_t3
execute at @s[tag=0n5] as @e[tag=3vent,tag=end] run tag @s remove mgc_t4

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4
tag @s remove 0n5