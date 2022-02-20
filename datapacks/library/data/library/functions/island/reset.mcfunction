#RESET
execute store success score @s 6 run fill -379 129 -261 -365 150 -247 air
execute if score @s 6 matches 0 run tellraw @s ["",{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":" Nothing to reset!","color":"red"}]
scoreboard players reset @s 6
setblock -374 137 -234 spruce_wall_sign[facing=south]{Text4:'{"bold":true,"color":"green","text":"o----------o"}',Text3:'{"bold":true,"color":"yellow","text":"Skyblock"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:island/gen"},"text":"Generate"}'} destroy
setblock -372 137 -235 air
function d3:mg15/reset