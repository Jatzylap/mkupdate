playsound entity.armor_stand.break master @s ~ ~ ~ 0.2
execute as @e[name="M@K",limit=1] at @s if score @s mgc-1 matches -99.. run scoreboard players remove @s mgc-1 1
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} if score @e[limit=1,name="M@K"] mgc-1 matches ..-10 run title @a[tag=ed1t] title ""
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} if score @e[limit=1,name="M@K"] mgc-1 matches ..-10 run title @a[tag=ed1t] subtitle ["",{"text":"You cannot go lower than the void!"}]
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} if score @e[limit=1,name="M@K"] mgc-1 matches ..-100 run title @a[tag=ed1t] title ""
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} if score @e[limit=1,name="M@K"] mgc-1 matches ..-100 run title @a[tag=ed1t] subtitle ["",{"text":"You cannot go lower than the void!"}]
execute as @e[limit=1,name="M@K"] at @s if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} if score @s mgc-1 matches ..-10 run scoreboard players set @s mgc-1 -9
execute as @e[limit=1,name="M@K"] at @s if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} if score @s mgc-1 matches ..-100 run scoreboard players set @s mgc-1 -99