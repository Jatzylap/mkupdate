execute if entity @e[tag=3vent,tag=start,scores={mgc-1.6=1..}] run scoreboard players set @e[limit=1,name="M@K"] mgc-1.7 20
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 4.. run title @s title ["",{"score":{"name":"@e[limit=1,tag=3vent,tag=start]","objective":"mgc-1.6"},"color":"green","bold":true}]
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 4.. run playsound ui.button.click master @s ~ ~ ~ 1000
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 3 run title @s title ["",{"score":{"name":"@e[limit=1,tag=3vent,tag=start]","objective":"mgc-1.6"},"color":"yellow","bold":true}]
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 3 run playsound block.note_block.pling master @s ~ ~ ~ 1000 1.2
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 2 run title @s title ["",{"score":{"name":"@e[limit=1,tag=3vent,tag=start]","objective":"mgc-1.6"},"color":"gold","bold":true}]
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 2 run playsound block.note_block.pling master @s ~ ~ ~ 1000 1.5
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 1 run playsound block.note_block.pling master @s ~ ~ ~ 1000 2
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 1 run title @s title ["",{"score":{"name":"@e[limit=1,tag=3vent,tag=start]","objective":"mgc-1.6"},"color":"red","bold":true}]
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 0 run title @s title ["",{"text":"GO!","color":"dark_green","bold":true}]
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 0 run playsound ui.button.click master @s ~ ~ ~ 1000 1.5
execute if score @e[limit=1,tag=3vent,tag=start] mgc-1.6 matches 0 run function library:game/generate
scoreboard players remove @e[tag=3vent,tag=start,scores={mgc-1.6=1..}] mgc-1.6 1