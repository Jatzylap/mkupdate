playsound ui.button.click master @s ~ ~ ~ 1
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"yellow","text":"<< COLOUR >>"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"white","text":"<< COLOUR >>"}'}
execute as @s[tag=0n1] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"white","text":"<< COLOUR >>"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"red","text":"<< COLOUR >>"}'}
execute as @s[tag=0n2] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"red","text":"<< COLOUR >>"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"light_purple","text":"<< COLOUR >>"}'}
execute as @s[tag=0n3] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"light_purple","text":"<< COLOUR >>"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"green","text":"<< COLOUR >>"}'}
execute as @s[tag=0n4] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"green","text":"<< COLOUR >>"}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"aqua","text":"<< COLOUR >>"}'}
execute as @s[tag=0n5] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"aqua","text":"<< COLOUR >>"}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"gray","text":"<< COLOUR >>"}'}
execute as @s[tag=0n6] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n5,tag=!0n8] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"gray","text":"<< COLOUR >>"}'} run tag @s add 0n7
execute as @s[tag=0n7] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"blue","text":"<< COLOUR >>"}'}
execute as @s[tag=0n7] at @s run function classic:display-theme
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7,tag=!0n5] if block -14 29 -4 oak_wall_sign{Text2:'{"bold":true,"color":"blue","text":"<< COLOUR >>"}'} run tag @s add 0n8
execute as @s[tag=0n8] at @s run data merge block -14 29 -4 {Text2:'{"bold":true,"color":"yellow","text":"<< COLOUR >>"}'}
execute as @s[tag=0n8] at @s run function classic:display-theme
tag @s remove 0n8
tag @s remove 0n7
tag @s remove 0n6
tag @s remove 0n5
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n1