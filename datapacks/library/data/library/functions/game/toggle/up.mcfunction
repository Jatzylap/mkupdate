playsound entity.ender_dragon.flap master @s ~ ~ ~ 0.2
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} as @e[name="M@K",limit=1] at @s if score @s mgc-1 matches ..11 run scoreboard players add @s mgc-1 1
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} if score @e[limit=1,name="M@K"] mgc-1 matches 12.. run title @a[tag=ed1t] title ""
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} if score @e[limit=1,name="M@K"] mgc-1 matches 12.. run title @a[tag=ed1t] subtitle ["",{"text":"Height cannot exceed 10 blocks!"}]
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"CUBIC"}'} as @e[limit=1,name="M@K"] at @s if score @s mgc-1 matches 12.. run scoreboard players set @s mgc-1 11

execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} as @e[name="M@K",limit=1] at @s if score @s mgc-1 matches ..101 run scoreboard players add @s mgc-1 1
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} if score @e[limit=1,name="M@K"] mgc-1 matches 102.. run title @a[tag=ed1t] title ""
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} if score @e[limit=1,name="M@K"] mgc-1 matches 102.. run title @a[tag=ed1t] subtitle ["",{"text":"Height cannot exceed 10.0 blocks!"}]
execute if data block -307 16 72 {Text2:'{"bold":true,"color":"aqua","text":"PRECISE"}'} as @e[limit=1,name="M@K"] at @s if score @s mgc-1 matches 102.. run scoreboard players set @s mgc-1 101