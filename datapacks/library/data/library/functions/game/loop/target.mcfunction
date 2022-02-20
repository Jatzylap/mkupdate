#blocks
function library:game/loop/block
#entities
tag @s[tag=!button] add mgc_s
execute as @e[tag=tr.3,tag=3vent,tag=entity] at @s run tag @s remove mgc_ent 
execute as @e[tag=3vent,tag=entity,tag=target,tag=tr.2,tag=mgc_s,limit=1,sort=random] at @s run function library:game/loop/set
execute as @e[tag=3vent,tag=entity,tag=target,tag=tr.3,tag=mgc_s,limit=1,sort=random] at @s run function library:game/loop/set
#particles
function library:game/loop/particle
#sounds
function library:game/loop/sound

#Loop
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":"s"}],"text":"0"}'} run schedule function library:game/loop/target 7
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"1"}'} run schedule function library:game/loop/target 27
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"2"}'} run schedule function library:game/loop/target 47
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"3"}'} run schedule function library:game/loop/target 67
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"4"}'} run schedule function library:game/loop/target 87
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"5"}'} run schedule function library:game/loop/target 107
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"6"}'} run schedule function library:game/loop/target 127
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"7"}'} run schedule function library:game/loop/target 147
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"8"}'} run schedule function library:game/loop/target 167
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"9"}'} run schedule function library:game/loop/target 187
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"10"}'} run schedule function library:game/loop/target 207
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"11"}'} run schedule function library:game/loop/target 227
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"12"}'} run schedule function library:game/loop/target 247
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"13"}'} run schedule function library:game/loop/target 267
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"14"}'} run schedule function library:game/loop/target 287
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"15"}'} run schedule function library:game/loop/target 307
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"16"}'} run schedule function library:game/loop/target 327
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"17"}'} run schedule function library:game/loop/target 347
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"18"}'} run schedule function library:game/loop/target 367
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"19"}'} run schedule function library:game/loop/target 387
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"20"}'} run schedule function library:game/loop/target 407
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"21"}'} run schedule function library:game/loop/target 427
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"22"}'} run schedule function library:game/loop/target 447
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"23"}'} run schedule function library:game/loop/target 467
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"24"}'} run schedule function library:game/loop/target 487
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"25"}'} run schedule function library:game/loop/target 507
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"26"}'} run schedule function library:game/loop/target 527
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"27"}'} run schedule function library:game/loop/target 547
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"28"}'} run schedule function library:game/loop/target 567
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"29"}'} run schedule function library:game/loop/target 587
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"30"}'} run schedule function library:game/loop/target 607
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" minute"}],"text":"1"}'} run schedule function library:game/loop/target 1207
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.5] if data block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'} run scoreboard players add @a[scores={mgc=1..}] mgc-1.3 1
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.5] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Nearest"}'} run scoreboard players add @p[scores={mgc=1..}] mgc-1.3 1
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.5] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Random"}'} run scoreboard players add @r[scores={mgc=1..}] mgc-1.3 1
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.4] if data block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'} run scoreboard players add @a[scores={mgc=1..}] mgc-1.3 1
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.4] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Nearest"}'} run scoreboard players add @p[scores={mgc=1..}] mgc-1.3 1
execute if data block -306 15 54 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}'} if entity @e[tag=3vent,tag=tr.4] if data block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Random"}'} run scoreboard players add @r[scores={mgc=1..}] mgc-1.3 1
bossbar remove mgc_time
bossbar remove mgc_time