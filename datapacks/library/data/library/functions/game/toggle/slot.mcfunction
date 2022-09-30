playsound ui.button.click master @s ~ ~ ~ 0.2 2
tag @e[tag=focus,limit=1] add mgc_nam3d
kill @e[tag=it3m]
execute if entity @e[tag=3vent,tag=focus,tag=!button,tag=!start,tag=!end] if entity @e[tag=curs0r] unless entity @e[tag=it3m] run summon item -296 15.4 54 {Tags:[it3m],Age:0s,PickupDelay:10000s,Item:{id:glow_item_frame,Count:1}}
execute if entity @s[tag=!0n2,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"yellow","text":"Spawner"}],"text":"Slot: "}'} run tag @s add 0n
execute as @s[tag=0n] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"item.head","color":"aqua"}]}'}
execute if entity @s[tag=!0n,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"item.head"}],"text":"Slot: "}'} run tag @s add 0n2
execute as @s[tag=0n2] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"item.chest","color":"aqua"}]}'}
execute if entity @s[tag=!0n,tag=!0n2,tag=!0n4,tag=!0n5,tag=!0n6,tag=!0n7] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"item.chest"}],"text":"Slot: "}'} run tag @s add 0n3
execute as @s[tag=0n3] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"item.legs","color":"aqua"}]}'}
execute if entity @s[tag=!0n2,tag=!0n,tag=!0n3,tag=!0n5,tag=!0n6,tag=!0n7] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"item.legs"}],"text":"Slot: "}'} run tag @s add 0n4
execute as @s[tag=0n4] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"item.feet","color":"aqua"}]}'}
execute if entity @s[tag=!0n2,tag=!0n,tag=!0n3,tag=!0n4,tag=!0n6,tag=!0n7] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"item.feet"}],"text":"Slot: "}'} run tag @s add 0n5
execute as @s[tag=0n5] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"hand.main","color":"aqua"}]}'}
execute if entity @s[tag=!0n2,tag=!0n,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n7] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"hand.main"}],"text":"Slot: "}'} run tag @s add 0n6
execute as @s[tag=0n6] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"hand.left","color":"aqua"}]}'}
execute if entity @s[tag=!0n2,tag=!0n,tag=!0n3,tag=!0n4,tag=!0n5,tag=!0n6] if data block -295 15 54 {Text2:'{"bold":true,"color":"white","extra":[{"color":"aqua","text":"hand.left"}],"text":"Slot: "}'} run tag @s add 0n7
execute as @s[tag=0n7] at @s run data merge block -295 15 54 {Text2:'{"text":"Slot: ","color":"white","bold":true,"extra":[{"text":"Spawner","color":"yellow"}]}'}
execute as @s[tag=0n7] at @s run tag @e[tag=3vent] remove mgc_nam3d
tag @s remove 0n7
tag @s remove 0n6
tag @s remove 0n5
tag @s remove 0n4
tag @s remove 0n3
tag @s remove 0n2
tag @s remove 0n