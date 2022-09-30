execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'} unless blocks -291 -10 71 -307 11 55 -299 14 63 masked run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Clearing all platform builds...","color":"yellow"}]
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} if blocks -307 -10 66 -291 11 60 -299 14 63 masked if blocks -296 -10 71 -302 11 55 -299 14 63 masked if blocks -304 -10 56 -294 11 56 -299 14 63 masked if blocks -293 11 57 -305 -10 57 -299 14 63 masked if blocks -306 -10 58 -292 11 59 -299 14 63 masked if blocks -292 11 67 -306 -10 68 -299 14 63 masked if blocks -305 -10 69 -293 11 69 -299 14 63 masked if blocks -304 -10 70 -294 11 70 -299 14 63 masked run tag @s add 0n
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run tellraw @s[tag=!0n] ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Clearing all platform builds...","color":"yellow"}]
tag @s remove 0n
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'} run fill -307 -10 71 -291 11 55 air replace
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -293 -10 69 -305 11 57 air replace
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -292 -10 68 -306 11 58 air replace
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -304 -10 56 -294 11 70 air replace
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -291 -10 66 -307 11 60 air replace
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -302 -10 55 -296 11 71 air replace
function library:game/clear/location