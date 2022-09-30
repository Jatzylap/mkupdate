#Set
execute as @e[tag=3vent,tag=tr.4] at @s run function library:game/calculate
execute as @e[tag=3vent,tag=end,scores={mgc-1.3=0..}] at @s run function library:game/calculate
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Grow"}'} run bossbar add mgc_time ["",{"selector":"@e[tag=mgc_b4r,limit=1]","bold":true}]
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}'} run bossbar add mgc_time ["",{"selector":"@e[tag=mgc_b4r,limit=1]","bold":true}]
execute if data block -290 14 58 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}'} run bossbar add mgc_time2 ["",{"text":"- Timer -","color":"light_purple"}]
execute if data block -290 14 58 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Grow"}'} run bossbar add mgc_time2 ["",{"text":"- Timer -","color":"light_purple"}]
bossbar set mgc_time2 color blue
execute unless data block -290 15 59 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}'} store result bossbar mgc_time max run scoreboard players get @e[tag=3vent,limit=1,tag=target] mgc-1.2
execute unless data block -290 14 58 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}'} store result bossbar mgc_time2 max run scoreboard players get @e[tag=3vent,limit=1,tag=end] mgc-1.2
execute unless data block -307 14 72 {Text2:'{"bold":true,"color":"dark_aqua","text":"Hide"}'} if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run function library:game/fill/shape2
execute if entity @e[tag=3vent,tag=start,tag=!gm1] run gamemode adventure @a[scores={mgc=-1},tag=!SPmgc]
execute if entity @e[tag=3vent,tag=start,tag=gm1] run gamemode survival @a[scores={mgc=-1},tag=!SPmgc]
execute as @e[tag=3vent,tag=block,tag=!mgc_pb] at @s unless data entity @s ArmorItems[0].tag{id:"?"} run setblock ~ ~ ~ air
scoreboard players reset @a[scores={mgc=-1}] mk
scoreboard players reset @a[scores={mgc=-1}] mg9.3
execute if data block -290 16 59 {Text2:'{"bold":true,"color":"green","text":"Yes"}'} run tag @a[scores={mgc=-1},tag=!SPmgc] add mg0
scoreboard players reset @e[limit=1,name="M@K"] mgc-1.7
effect clear @a[scores={mgc=-1}]
execute in overworld run forceload add 0 0

#Post-Gen
setblock -317 2 69 redstone_block
schedule function library:game/post_gen 9
schedule function library:game/clear/start 13
tag @e[tag=3vent] remove mgc_ent
tag @e[tag=3vent] remove mgc-block.s
execute if entity @e[tag=3vent,tag=target,tag=!tr.1,tag=!tr.2,tag=!tr.3,tag=!tr.4,tag=!tr.5] run schedule function library:game/loop/target 1

#Everytime
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'} run schedule function library:game/loop/target 1
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 1 append
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"1s"}],"text":"After: "}'} run schedule function library:game/loop/target 1s
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"1s"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 1s append
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"5s"}],"text":"After: "}'} run schedule function library:game/loop/target 5s
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"5s"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 5s append
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'} run schedule function library:game/loop/target 10s
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 10s append
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"20s"}],"text":"After: "}'} run schedule function library:game/loop/target 20s
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"20s"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 20s append
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'} run schedule function library:game/loop/target 60s
execute if entity @e[tag=3vent,tag=target] if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'} run schedule function library:game/loop/entity/target 60s append

execute if entity @e[tag=entity,tag=3vent] run function library:game/loop/entity
execute if entity @e[tag=entity,tag=3vent] run schedule function library:game/loop/entity 8
execute if entity @e[tag=entity,tag=3vent] run schedule function library:game/clear/generate 6