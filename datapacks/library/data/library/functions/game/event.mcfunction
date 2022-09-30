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
kill @e[tag=it3m]
kill @e[tag=3vent,tag=!start,tag=!end,tag=!entity,tag=!block,tag=!particle,tag=!sound,tag=!button,tag=!gl0w]
tag @e[tag=3vent] remove focus
fill -295 16 54 -291 14 54 air replace #signs
data merge entity @e[tag=sl0t,tag=1tem,limit=1] {Item:{id:""}}

execute if entity @e[tag=3vent,tag=end] if data block -290 15 64 {Text2:'{"bold":true,"color":"light_purple","text":"ENDER"}'} if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} run tellraw @s ["",{"text":"An ","color":"red"},{"text":"End Event","color":"light_purple"},{"text":" has already been placed.","color":"red"}]
execute as @s at @e[tag=curs0r] unless block ~ ~ ~ #trigger_blocks if data block -290 15 64 {Text2:'{"bold":true,"color":"yellow","text":"BUTTON"}'} if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} run tellraw @s ["",{"text":"Cursor isn't positioned on a redstone signal or trigger.","color":"red"}]
execute if entity @e[tag=curs0r] if data block -290 15 64 {Text2:'{"bold":true,"color":"green","text":"STARTER"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added a ","color":"yellow"},{"text":"Starter Event","color":"green","bold":true}]
execute if entity @e[tag=curs0r] unless entity @e[tag=3vent,tag=end] if data block -290 15 64 {Text2:'{"bold":true,"color":"light_purple","text":"ENDER"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added an ","color":"yellow"},{"text":"Ender Event","color":"light_purple","bold":true}]
execute if entity @e[tag=curs0r] if entity @e[tag=3vent,tag=start] if data block -290 15 64 {Text2:'{"bold":true,"color":"green","text":"STARTER"}'} run tellraw @s ["",{"text":">> "},{"text":"Starting positions randomised!","color":"light_purple"}]

execute as @e[tag=curs0r] at @s if data block -290 15 64 {Text2:'{"bold":true,"color":"green","text":"STARTER"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,start],Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-start],Team:mgc-start}]}
execute as @e[tag=curs0r] at @s if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"BLOCK"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,target,block],Marker:1,Invisible:1,ArmorItems:[{Count:1,id:chest,tag:{id:"?"}}],Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=curs0r] at @s if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"SOUND"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,target,sound],Marker:1,Invisible:1,ArmorItems:[{Count:1,id:chest,tag:{id:"?"}}],Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=curs0r] at @s if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"ENTITY"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,target,entity],Marker:1,Invisible:1,ArmorItems:[{Count:1,id:chest,tag:{id:"?"}},{Count:1,id:chest,tag:{head:"?",chest:"?",legs:"?",feet:"?"}}],Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=curs0r] at @s if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"PARTICLE"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,target,particle],Marker:1,Invisible:1,ArmorItems:[{Count:1,id:chest,tag:{id:"?"}}],Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-marker],Team:mgc-marker}]}
execute as @e[tag=curs0r] at @s if block ~ ~ ~ #trigger_blocks if data block -290 15 64 {Text2:'{"bold":true,"color":"yellow","text":"BUTTON"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,button],Marker:1,Invisible:1,Passengers:[{id:armor_stand,Invulnerable:1,Invisible:1,Small:1,Tags:[3vent,gl0w,mgc-button],Team:mgc-button}]}
execute as @e[tag=curs0r] at @s unless entity @e[tag=3vent,tag=end] if data block -290 15 64 {Text2:'{"bold":true,"color":"light_purple","text":"ENDER"}'} run summon armor_stand ~ ~ ~ {Tags:[3vent,focus,end],Marker:1,Invisible:1,Passengers:[{id:magma_cube,DeathLootTable:"",PersistenceRequired:1,Invulnerable:1,NoAI:1,Tags:[3vent,gl0w,mgc-end],Team:mgc-end}]}

playsound entity.item.pickup master @s
execute if entity @e[tag=curs0r] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"BLOCK"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added: ","color":"yellow"},{"text":" Block Event","color":"aqua","bold":true}]
execute if entity @e[tag=curs0r] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"SOUND"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added: ","color":"yellow"},{"text":" Sound Event","color":"aqua","bold":true}]
execute if entity @e[tag=curs0r] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"PARTICLE"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added: ","color":"yellow"},{"text":" Particle Event","color":"aqua","bold":true}]
execute if entity @e[tag=curs0r] if entity @e[tag=3vent,tag=entity] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"ENTITY"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added: ","color":"yellow"},{"text":" Entity Event","color":"aqua","bold":true}]
execute as @s at @e[tag=curs0r] if block ~ ~ ~ #trigger_blocks if data block -290 15 64 {Text2:'{"bold":true,"color":"yellow","text":"BUTTON"}'} run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully added: ","color":"yellow"},{"text":" Button Event","color":"yellow","bold":true}]

execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @e[tag=curs0r] run tellraw @s ["",{"text":"Could not find a platform cursor to target!","color":"red"}]
execute if entity @e[tag=curs0r] if data block -290 15 64 {Text2:'{"bold":true,"color":"aqua","text":"SOUND"}'} run function library:game/set/note
execute as @e[tag=it3m] at @s run data modify entity @s Item set from entity @e[tag=3vent,tag=entity,tag=target,limit=1,tag=focus] ArmorItems[0].tag