execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'} run fill -307 -10 55 -291 11 71 air replace barrier
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -291 -10 60 -307 11 66 air replace barrier
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -306 -10 58 -292 11 68 air replace barrier
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -293 -10 57 -305 11 69 air replace barrier
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -304 -10 70 -294 11 56 air replace barrier
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run fill -296 -10 55 -302 11 71 air replace barrier
execute if entity @a[scores={mgc=-1..}] run schedule function library:game/loop/clear 12