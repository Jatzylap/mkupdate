tag @e[tag=3vent] remove mgc_s
execute if entity @a[scores={mgc=-1}] run tag @e[tag=3vent] remove mgc_ent

execute unless entity @e[tag=3vent,tag=mgc_s] as @e[tag=3vent,limit=1,tag=entity,tag=!target,tag=!mgc_ent] at @s run tag @s add mgc_s
execute unless entity @e[tag=3vent,tag=tr.1] unless entity @e[tag=3vent,tag=mgc_s] unless score @e[limit=1,tag=target,tag=3vent] mgc-1.2 matches 2.. run tag @e[tag=3vent,limit=1,tag=entity,tag=target,tag=!mgc_ent] add mgc_s

execute at @e[tag=mgc_s,tag=mgc_t,tag=entity,limit=1] run setblock -299 185 63 dropper[facing=up]{Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_m0b],PersistenceRequired:1,DeathLootTable:""}}}]}
execute at @e[tag=mgc_s,tag=!mgc_t,tag=entity,limit=1] run setblock -299 185 63 dispenser[facing=up]{Items:[{Count:1,id:stick,tag:{EntityTag:{Tags:[mgc_m0b],PersistenceRequired:1,DeathLootTable:""}}}]}


execute as @e[tag=3vent,tag=entity,tag=!target,tag=mgc_s,limit=1] at @s store success score @s mgc run function library:game/loop/set

execute as @e[tag=3vent,tag=entity,tag=target,tag=mgc_s,limit=1] at @s store success score @s mgc unless entity @e[tag=3vent,tag=tr.5] unless entity @e[tag=3vent,tag=tr.3] unless entity @e[tag=3vent,tag=tr.2] unless data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"After: "}'} unless entity @a[scores={mgc=0}] run function library:game/loop/set
execute as @e[tag=3vent,tag=entity,tag=target,tag=mgc_s,limit=1] at @s store success score @s mgc if entity @s[tag=tr.3] if entity @e[tag=3vent,tag=mgc-button.g,tag=press,limit=1] unless entity @a[scores={mgc=0}] run function library:game/loop/set
execute as @e[tag=3vent,tag=entity,tag=target,tag=mgc_s,limit=1] at @s store success score @s mgc if entity @s[tag=tr.2] if entity @a[scores={mgc=0}] run function library:game/loop/set
execute as @e[tag=3vent,tag=entity,tag=c0n,tag=target,tag=mgc_s,limit=1] at @s store success score @s mgc if entity @s[tag=tr.5] unless data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"After: "}'} unless entity @a[scores={mgc=0}] run function library:game/loop/set
execute at @e[tag=entity,tag=3vent] run schedule function library:game/loop/entity 7
execute at @e[tag=entity,tag=3vent] run schedule function library:game/clear/generate 6
scoreboard players add @e[tag=3vent,tag=entity,tag=target] mgc-2.1 1

#Everytime
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":"s"}],"text":"0"}'} run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"1"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 9 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"2"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 19 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"3"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 29 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"4"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 39 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"5"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 49 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"6"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 59 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"7"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 69 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"8"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 79 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"9"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 89 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"10"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 99 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"11"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 109 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"12"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 119 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"13"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 129 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"14"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 139 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"15"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 149 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"16"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 159 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"17"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 169 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"18"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 179 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"19"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 189 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"20"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 199 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"21"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 209 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"22"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 219 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"23"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 229 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"24"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 239 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"25"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 249 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"26"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 259 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"27"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 269 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"28"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 279 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"29"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 289 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"30"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 299 run function library:game/loop/entity/target
execute if data block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" minute"}],"text":"1"}'} if score @e[limit=1,tag=3vent,tag=target] mgc-2.1 matches 598 run function library:game/loop/entity/target