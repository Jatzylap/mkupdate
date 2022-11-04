execute as @a[tag=ed1t] at @s run function clear:chat
playsound ui.button.click master @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'} run tag @s add 0n1
execute as @s[tag=0n1] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'}
execute if entity @s[tag=!0n1,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 1"}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save5] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save4] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save2] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'}
execute as @s[tag=0n3] at @s if entity @e[tag=mgc_save1] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save5] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save4] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute as @s[tag=0n4] at @s if entity @e[tag=mgc_save2] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save5] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save4] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'}
execute as @s[tag=0n5] at @s if entity @e[tag=mgc_save3] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save5] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'}
execute as @s[tag=0n6] at @s if entity @e[tag=mgc_save4] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'} run tag @s add 0n7
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute as @s[tag=0n7] at @s if entity @e[tag=mgc_save5] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'} run tag @s add 0n8
execute as @s[tag=0n8] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n8] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n8] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n8] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute as @s[tag=0n8] at @s if entity @e[tag=mgc_save6] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n10,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'} run tag @s add 0n9
execute as @s[tag=0n9] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n9] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n9] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute as @s[tag=0n9] at @s if entity @e[tag=mgc_save7] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n11,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'} run tag @s add 0n10
execute as @s[tag=0n10] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n10] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute as @s[tag=0n10] at @s if entity @e[tag=mgc_save8] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n12,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'} run tag @s add 0n11
execute as @s[tag=0n11] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute as @s[tag=0n11] at @s if entity @e[tag=mgc_save9] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n13] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'} run tag @s add 0n12
execute as @s[tag=0n12] at @s if entity @e[tag=mgc_save10] run data merge block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'}
execute if entity @s[tag=!0n1,tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7,tag=!0n8,tag=!0n9,tag=!0n10,tag=!0n11,tag=!0n12] if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 10"}'} run tag @s add 0n13
execute as @s[tag=0n3] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Template 2"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n4] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 1"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n5] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 2"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n6] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 3"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n7] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 4"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n8] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 5"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n9] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 6"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n10] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 7"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n11] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 8"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n12] at @s if data block -302 15 72 {Text3:'{"bold":true,"color":"green","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"Project 9"}'} run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
execute as @s[tag=0n13] at @s run data merge block -302 15 72 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":" >>"}],"text":"CUSTOM"}'}
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