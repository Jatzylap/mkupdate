playsound item.book.page_turn master @s ~ ~ ~ 0.2 1.5
execute if entity @s[tag=!0ff] if data block -308 16 69 {Text2:'{"bold":true,"underlined":true,"color":"white","text":"SINGLEPLAYER"}'} run tag @s add 0n
execute as @s[tag=0n] at @s run setblock -308 16 69 birch_wall_sign[facing=east]{Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/players"},"text":" >>"}',Text2:'{"bold":true,"underlined":true,"color":"white","text":"MULTIPLAYER"}'}
execute if entity @s[tag=!0n] if data block -308 16 69 {Text2:'{"bold":true,"underlined":true,"color":"white","text":"MULTIPLAYER"}'} run tag @s add 0ff
execute as @s[tag=0ff] at @s run setblock -308 16 69 oak_wall_sign[facing=east]{Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/players"},"text":" >>"}',Text2:'{"bold":true,"underlined":true,"color":"white","text":"SINGLEPLAYER"}'}
tag @s remove 0ff
tag @s remove 0n