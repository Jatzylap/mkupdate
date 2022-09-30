tellraw @a[tag=ed1t] ["",{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":" Randomising settings...","color":"aqua"}]
playsound item.trident.riptide_3 master @a[tag=ed1t] -296 15 72 0.3 1.3
playsound block.respawn_anchor.set_spawn master @a[tag=ed1t] -296 15 72 0.3 2

data merge block -290 14 57 {Text2:'',Text3:''}
data merge block -290 14 59 {Text3:'',Text2:''}
data merge block -290 15 58 {Text2:'',Text3:''}
data merge block -290 15 59 {Text2:'',Text3:''}
data merge block -290 15 60 {Text2:'',Text3:''}
data merge block -290 16 57 {Text2:'',Text3:''}
scoreboard players reset * mgc-1.1
scoreboard players reset * mgc-1.2
scoreboard players reset * mgc-1.3
scoreboard players reset * mgc-1.4
scoreboard players reset * mgc-1.5
scoreboard players reset * mgc-1.6
scoreboard players reset * mgc-1.7
team add mgc-marker
team add mgc-target
team add mgc-button
team add mgc-start
team add mgc-end
team add mgc-title
team modify mgc-title color gold
team modify mgc-target color aqua
team modify mgc-marker collisionRule never
team modify mgc-target collisionRule never
team modify mgc-button color yellow
team modify mgc-button collisionRule never
team modify mgc-start color green
team modify mgc-start collisionRule never
team modify mgc-end color light_purple
team modify mgc-end collisionRule never
execute unless entity @e[tag=3vent,tag=start] run summon armor_stand -299 -10 63 {Tags:[3vent,start,mgc_rand0m],Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-start],Team:mgc-start}]}
execute unless entity @e[tag=3vent,tag=end] run summon armor_stand -299 -10 63 {Tags:[3vent,end,focus,mgc_rand0m],Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-end],Team:mgc-end}]}
loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run setblock -308 16 69 oak_wall_sign[facing=east]{Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/players"},"text":" >>"}',Text2:'{"bold":true,"underlined":true,"color":"white","text":"SINGLEPLAYER"}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run setblock -308 16 69 birch_wall_sign[facing=east]{Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/players"},"text":" >>"}',Text2:'{"bold":true,"underlined":true,"color":"white","text":"MULTIPLAYER"}'}

#Starter
loot replace block -304 5 45 container.0 loot library:game/50
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"red","text":" No"}],"text":""}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=3vent,tag=start] remove count
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 57 {Text2:'',Text3:''}
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 56 {Text2:'{"extra":[{"bold":true,"color":"white","text":"Countdown:"},{"bold":true,"color":"green","text":" Yes"}],"text":""}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run execute as @e[tag=3vent,tag=start] at @s run scoreboard players add @s mgc-1.6 3
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run execute as @e[tag=3vent,tag=start] at @s run scoreboard players add @s mgc-1.6 5
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run execute as @e[tag=3vent,tag=start] at @s run scoreboard players add @s mgc-1.6 10
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run execute as @e[tag=3vent,tag=start] at @s run scoreboard players add @s mgc-1.6 15
execute if data block -304 5 45 Items[{Slot:0b,id:"minecraft:stick"}] run execute as @e[limit=1,name="M@K"] at @s store result score @s mgc-1.4 run scoreboard players get @e[tag=3vent,tag=start,limit=1] mgc-1.6
execute if data block -304 5 45 Items[{Slot:0b,id:"minecraft:stick"}] run data merge block -290 16 57 {Text2:'{"text":"From: ","clickEvent":{"action":"run_command","value":"/function library:game/toggle/pre-time"},"bold":true,"color":"white","extra":[{"bold":true,"color":"gold","score":{"name":"@e[tag=3vent,tag=start,limit=1]","objective":"mgc-1.6"}},{"text":"s","color":"white","bold":true}]}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Survival"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Adventure"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 16 58 {Text2:'{"bold":true,"color":"green","text":"Adventure"}'}

loot replace block -304 5 45 container.0 loot library:game/50
execute unless data block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/loot"},"text":" >>"}',Text2:'{"bold":true,"color":"green","text":"Yes"}',Text1:'{"bold":true,"color":"white","text":"BLOCK LOOT"}'}
execute unless data block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'} unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 59 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/loot"},"text":" >>"}',Text2:'{"bold":true,"color":"red","text":"No Way"}',Text1:'{"bold":true,"color":"white","text":"BLOCK LOOT"}'}
execute if data block -290 16 58 {Text2:'{"bold":true,"color":"gray","text":"Spectator"}'} run data merge block -290 16 59 {Text1:'',Text2:'',Text3:''}

loot replace block -304 5 45 container.0 loot library:game/10
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.mall"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.13"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.cat"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.far"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.pigstep"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.chirp"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.strad"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.stal"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.wait"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] run data merge block -290 16 60 {Text2:'{"bold":true,"color":"gray","text":"Silent"}'}

loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Keep"}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 16 61 {Text2:'{"bold":true,"color":"green","text":"Store"}'}

#Interface
loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -307 14 72 {Text2:'{"bold":true,"color":"aqua","text":"Show"}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -307 14 72 {Text2:'{"bold":true,"color":"dark_aqua","text":"Hide"}'}

#Target
loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 57 {Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@End"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 15 57 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Start"}'}

execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"text":"Interaction","extra":[{"bold":false,"color":"yellow","text":" >>"}]}',Text2:'{"bold":true,"color":"white","text":"TERMINATES"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"light_purple","text":"@End"},{"bold":false,"color":"yellow","text":" >>"}],"text":"with "}',Text2:'{"bold":true,"color":"white","text":"TERMINATES"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 58 {Text3:'{"bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Nothing"}',Text2:'{"bold":true,"color":"white","text":"TERMINATES"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 58 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button"},"text":"Interaction","extra":[{"bold":false,"color":"yellow","text":" >>"}]}',Text2:'{"bold":true,"color":"white","text":"TERMINATES"}'}

execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Random"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"No Targets"}',Text2:'{"bold":true,"color":"yellow","text":"Restore if"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Previous"}',Text2:'{"bold":true,"color":"yellow","text":"Restore"}'}
execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Single"}',Text2:'{"bold":true,"color":"white","text":"PULSE"}'}
execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 60 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/button3"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Periodic"}',Text2:'{"bold":true,"color":"white","text":"PULSE"}'}

tag @e[tag=entity,tag=3vent] remove mgc_r
tag @e[tag=entity,tag=3vent] remove mgc_k
tag @e[tag=entity,tag=3vent] remove mgc_g
tag @e[tag=entity,tag=3vent] remove mgc_i
tag @e[tag=entity,tag=3vent] remove mgc_h
tag @e[tag=entity,tag=3vent] remove mgc_m
tag @e[tag=entity,tag=3vent] remove mgc_d
tag @e[tag=entity,tag=3vent] remove mgc_t
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_r
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_k
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_g
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_h
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_m
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_d
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_t
execute as @e[tag=entity,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_i

tag @e[tag=particle,tag=3vent] remove mgc_pb
tag @e[tag=particle,tag=3vent] remove pb.1
tag @e[tag=particle,tag=3vent] remove pb.2
execute as @e[tag=particle,tag=3vent] at @s if predicate 50-50 run tag @s add mgc_pb
execute as @e[tag=particle,tag=3vent] at @s if predicate 25-75 run tag @s add pb.1
execute as @e[tag=particle,tag=3vent,tag=pb.1] at @s run tag @s remove pb.2
execute as @e[tag=particle,tag=3vent] at @s if predicate 25-75 run tag @s add pb.2
execute as @e[tag=particle,tag=3vent,tag=pb.2] at @s run tag @s remove pb.1

tag @e[tag=block,tag=3vent] remove mgc_f1
tag @e[tag=block,tag=3vent] remove mgc_f2
tag @e[tag=block,tag=3vent] remove mgc_f3
tag @e[tag=block,tag=3vent] remove mgc_f4
tag @e[tag=block,tag=3vent] remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f5
execute as @e[tag=block,tag=3vent,tag=mgc_f5] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f5] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f5] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f5] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f4] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f3] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f2] at @s run tag @s remove mgc_f5
execute as @e[tag=block,tag=3vent] at @s if predicate 10-90 run tag @s add mgc_f1
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f2
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f3
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f4
execute as @e[tag=block,tag=3vent,tag=mgc_f1] at @s run tag @s remove mgc_f5

#Ender
loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run scoreboard players add @e[tag=3vent,tag=end] mgc-1.1 4
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text2:'{"text":"Max. Range: ","clickEvent":{"action":"run_command","value":"/function library:game/toggle/range"},"bold":true,"color":"white","extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=end]","objective":"mgc-1.1"}}]}'}

execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 14 56 {Text2:'{"bold":true,"color":"gray","text":"Undefined"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'}

execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.1
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end] mgc-1.2 200
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end] mgc-1.3 10
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text2:'{"text":"Interval: ","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time"},"bold":true,"color":"white","extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=end]","objective":"mgc-1.3"}},{"text":"s","color":"white","bold":true}]}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Off"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Grow"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/bar2"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"Deplete"}',Text2:'{"bold":true,"color":"white","text":"TIME BAR"}'}

loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 60 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/display"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"text":"End text: ","color":"white","bold":true,"extra":[{"text":"YES","color":"light_purple"}]}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 60 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/display"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"text":"End text: ","color":"white","bold":true,"extra":[{"text":"NO","color":"red"}]}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>"}',Text2:'{"bold":true,"color":"white","text":"Blocks"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>"}',Text2:'{"bold":true,"color":"white","text":"Targets"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>"}',Text2:'{"bold":true,"color":"white","text":"Players"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>"}',Text2:'{"bold":true,"color":"white","text":"Non-Targets"}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"dark_aqua","text":"Conditioned"}'} unless data block -304 5 45 Items[{Slot:0b,id:"minecraft:stick"}] run data merge block -290 14 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/condition"},"text":">>"}',Text2:'{"bold":true,"color":"white","text":"Mobs"}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/detect"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Mob"}],"text":"Detect: "}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/detect"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Player"}],"text":"Detect: "}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/detect"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"bold":true,"color":"white","extra":[{"color":"gold","text":"Target"}],"text":"Detect: "}'}
execute if data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 14 58 {Text3:'{"clickEvent":{"action":"run_command","value":"/function library:game/toggle/detect"},"text":" ","color":"yellow","extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}]}',Text2:'{"bold":true,"color":"white","extra":[{"color":"yellow","text":"All"}],"text":"Detect: "}'}

#Target
loot replace block -304 5 45 container.0 loot library:game/10
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"green","text":"@Start"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"1s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"5s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"10s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"20s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"red","text":"60s"}],"text":"After: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] run data merge block -290 15 58 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/delay"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"After: "}'}

loot replace block -304 5 45 container.0 loot library:game/10
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":"s"}],"text":"0"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"5"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"10"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"15"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"20"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"white","text":"s"}],"text":"25"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"30"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"2"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":"s"}],"text":"3"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] run data merge block -290 15 59 {Text3:'{"bold":true,"color":"gold","extra":[{"bold":false,"color":"white","text":" minute"}],"text":"1"}',Text2:'{"bold":true,"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/time3"},"text":"DELAY"}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] unless data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"After: "}'} run data merge block -290 15 60 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/limit"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"light_purple","text":"@End"}],"text":"Until: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -290 15 60 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/limit"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"gold","text":"@Reset"}],"text":"Until: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -290 15 60 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/limit"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"gold","text":"@Reset"}],"text":"Until: "}'}
execute if data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -290 15 60 {Text3:'{"bold":false,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/limit"},"extra":[{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" >>"}],"text":" "}',Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"Until: "}'}

execute unless data block -290 14 56 {Text2:'{"bold":true,"color":"gold","text":"Entity contact"}'} unless data block -290 14 56 {Text2:'{"bold":true,"color":"white","text":"Timed"}'} run data merge block -290 14 58 {Text2:'',Text3:''}
execute unless data block -290 15 57 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Custom"}'} unless data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} unless data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 58 {Text2:'',Text3:''}
execute unless data block -290 15 57 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Custom"}'} unless data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} unless data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 59 {Text2:'',Text3:''}
execute unless data block -290 15 57 {Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Custom"}'} unless data block -290 15 57 {Text3:'{"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"Everytime"}'} unless data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run data merge block -290 15 60 {Text2:'',Text3:''}

#Customisation
loot replace block -304 5 45 container.0 loot library:game/50
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] remove mgc_p
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run scoreboard players reset @e[tag=3vent,tag=end] mgc-1.9
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] add mgc_p
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run loot replace block -304 5 45 container.0 loot library:game/10
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 1
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 2
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 3
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 4
execute if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 5
execute if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 6
execute if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 7
execute if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 8
execute if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 9
execute if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] run scoreboard players set @e[tag=3vent,tag=end,tag=mgc_p] mgc-1.9 10

loot replace block -304 5 45 container.0 loot library:game/10
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Mob"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Jump"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Sneak"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Button"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Break Block"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Mob"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Target"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Player"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run setblock -306 15 54 jungle_wall_sign[facing=south]{Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Player"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit Mob"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Jump"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Player Sneak"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Button"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:5b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Place Block"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:6b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"color":"white","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Trigger"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:7b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Mob"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:8b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Target"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:9b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Kill Player"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Hit player"}',Text4:'{"color":"yellow","text":"<<"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:10b,id:"minecraft:stick"}] if predicate 50-50 if entity @e[tag=mgc_p] run data merge block -306 15 54 {Text2:'{"bold":true,"color":"white","text":"Criterion:"}',Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"Reach Entity"}',Text4:'{"color":"yellow","text":"<<"}'}

execute if data block -304 5 45 Items[{Slot:0b,id:"minecraft:stick"}] run data merge block -305 15 54 {Text3:'{"text":"","clickEvent":{"action":"run_command","value":"/function library:game/toggle/score"},"extra":[{"bold":true,"color":"gold","score":{"name":"@e[limit=1,tag=3vent,tag=end]","objective":"mgc-1.9"}},{"text":" points","color":"white","bold":true}]}'}

loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -301 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"ON "}',Text2:'{"bold":true,"color":"white","text":"Reset Title:"}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -301 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/display2"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"OFF "}',Text2:'{"bold":true,"color":"white","text":"Reset Title:"}'}

loot replace block -304 5 45 container.0 loot library:game/50
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -306 14 54 {Text3:'{"bold":true,"color":"gray","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"OFF"}'}
execute unless data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -306 14 54 {Text3:'{"bold":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function library:game/toggle/widget"},"extra":[{"bold":false,"color":"yellow","text":" >>"}],"text":"ON"}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Nearest"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"Random"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -307 15 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector2"},"text":"All players"}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Title "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Subtitle "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Tellraw "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -304 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/format"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Bossbar "}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -303 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"All "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Enders "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -303 14 54 {Text3:'{"bold":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"Others "}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -303 14 54 {Text3:'{"bold":true,"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/selector"},"extra":[{"bold":false,"color":"yellow","text":">>"}],"text":"All "}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] add mgc_t1
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] add mgc_t2
execute if data block -304 5 45 Items[{Slot:0b,Count:2b,id:"minecraft:stick"}] run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]+[Text]"}],"text":"["}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] add mgc_t3
execute if data block -304 5 45 Items[{Slot:0b,Count:3b,id:"minecraft:stick"}] run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Enders"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] add mgc_t4
execute if data block -304 5 45 Items[{Slot:0b,Count:4b,id:"minecraft:stick"}] run data merge block -302 15 54 {Text3:'{"color":"light_purple","extra":[{"color":"gold","text":"Others"},{"color":"light_purple","text":"]"}],"text":"[Text]+["}'}

loot replace block -304 5 45 container.0 loot library:game/25
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run data merge block -302 15 54 {Text3:'{"color":"light_purple","text":"[Text]"}'}
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] remove mgc_t1
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] remove mgc_t2
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] remove mgc_t3
execute if data block -304 5 45 Items[{Slot:0b,Count:1b,id:"minecraft:stick"}] run tag @e[tag=end,tag=3vent] remove mgc_t4
data remove block -304 5 45 Items[{Slot:0b}]

execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"☐"}'} run spreadplayers -299 63 0 8 under 11 false @e[tag=3vent,tag=mgc_rand0m]
execute if data block -306 14 72 {Text2:'{"bold":true,"color":"gold","text":"O"}'} run spreadplayers -299 63 0 6 under 11 false @e[tag=3vent,tag=mgc_rand0m]
execute as @e[tag=3vent,tag=start] at @s run fill ~ -10 ~ ~ 11 ~ air replace barrier
execute as @e[tag=3vent,tag=start] at @s if blocks ~ ~-1 ~ ~ -9 ~ -299 14 63 masked run fill ~-1 -9 ~-1 ~1 -9 ~1 grass_block keep
execute as @e[tag=3vent,tag=start] at @s unless block ~ ~ ~ air run tp ~ ~1 ~
tag @e[tag=3vent] remove mgc_rand0m 