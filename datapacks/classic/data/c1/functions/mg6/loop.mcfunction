#Spectators
gamemode spectator @a[tag=SPmg6]
execute as @a[tag=SPmg6,x=100,y=46,z=-17,distance=16..] at @s run tp 100 50 -17

execute as @r[scores={mg6=0..},tag=!st0red] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=40..}] run function mk:store
execute as @a[scores={mg6=0..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg6=0..,2=1..},tag=st0red] at @s run clear @s #vf_items{CPG:1b}
execute as @a[scores={mg6=0..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg6=0..,lobby=1..}] at @s run tag @s remove SPmg6
execute as @a[scores={mg6=0..,lobby=1..}] at @s run scoreboard players reset @s mg6

#Main
execute unless entity @a[scores={mg6=0}] as @e[type=marker,name=mg6] at @s if block ~ ~-1 ~ brown_terracotta run setblock ~ ~-1 ~ yellow_terracotta
spreadplayers 100 -17 5 18 under 47 false @e[type=marker,name=mg6,tag=!p0s]
execute as @e[type=marker,name=mg6] at @s if block ~ ~-1 ~ yellow_terracotta run setblock ~ ~-1 ~ orange_terracotta
execute as @e[type=marker,name="mg6/2",scores={mg6.3=10..}] at @s if block ~ ~-1 ~ yellow_terracotta run setblock ~ ~-1 ~ orange_terracotta
execute as @e[name="mg6/2",type=marker,scores={mg6.3=40..}] at @s run fill ~-1 ~-1 ~-1 ~2 ~ ~2 red_terracotta replace orange_terracotta
execute as @e[type=marker,name=mg6] at @s if block ~ ~-1 ~ orange_terracotta run summon marker ~ ~ ~ {CustomName:"{\"text\":\"mg6/2\"}"}
execute unless entity @a[scores={mg6=0}] run tag @e[x=81,y=42,z=-36,dx=39,dy=5,dz=40,type=item,nbt={Item:{id:"minecraft:terracotta"}}] add mg6
execute unless entity @a[scores={mg6=0}] run kill @e[x=81,y=42,z=-36,dx=39,dy=5,dz=40,type=item,nbt={Item:{id:"minecraft:brown_terracotta"}}]
execute unless entity @a[scores={mg6=0}] run kill @e[x=81,y=42,z=-36,dx=39,dy=5,dz=40,type=item,nbt={Item:{id:"minecraft:orange_terracotta"}}]
execute unless entity @a[scores={mg6=0}] run kill @e[x=81,y=42,z=-36,dx=39,dy=5,dz=40,type=item,nbt={Item:{id:"minecraft:yellow_terracotta"}}]
execute unless entity @a[scores={mg6=0}] run kill @e[x=81,y=42,z=-36,dx=39,dy=5,dz=40,type=item,nbt={Item:{id:"minecraft:red_terracotta"}}]
execute as @e[type=item,tag=mg6] at @s run fill ~-1 45 ~-1 ~1 45 ~1 brown_terracotta destroy
kill @e[type=item,tag=mg6]
execute as @e[type=marker,name="mg6/2"] at @s run scoreboard players add @s mg6.3 1
execute as @e[type=marker,scores={mg6.3=40..}] at @s if block ~ ~-1 ~ red_terracotta run setblock ~ ~-1 ~ air destroy
execute as @e[type=marker,scores={mg6=0..2147483607}] at @s if block ~ ~-1 ~ red_terracotta run setblock ~ ~-1 ~ air destroy
execute as @e[name="M@K",limit=1,scores={mg6.4=150}] at @s run summon marker 100 46 -17 {CustomName:"{\"text\":\"mg6\"}"}
execute as @e[name="M@K",limit=1,scores={mg6.4=300}] at @s run summon marker 100 46 -17 {CustomName:"{\"text\":\"mg6\"}"}
execute as @e[name="M@K",limit=1,scores={mg6.4=450}] at @s run summon marker 100 46 -17 {CustomName:"{\"text\":\"mg6\"}"}
execute as @e[name="M@K",limit=1,scores={mg6.4=590}] at @s run summon marker 100 46 -17 {CustomName:"{\"text\":\"mg6/2\"}"}
execute as @e[name="M@K",limit=1,scores={mg6.4=450..}] at @s run spreadplayers 100 -17 5 18 under 47 false @e[type=marker,name="mg6/2"]
execute as @e[name="M@K",limit=1,scores={mg6.4=300..335}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=400..435}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=500..535}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=600..635}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=670..695}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=700..735}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=770..795}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=800..835}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=870..895}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @e[name="M@K",limit=1,scores={mg6.4=900..935}] at @s run kill @e[type=marker,name="mg6/2",limit=2]
execute as @a[scores={mg6=1..},tag=VFplayers] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=735}] run playsound entity.zombie.infect master @s ~ ~ ~ 1 0.6
execute as @a[scores={mg6=1..},tag=VFplayers] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=735}] run playsound entity.blaze.shoot master @s ~ ~ ~ 1 0
execute as @r[scores={mg6=1..},tag=VFplayers] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=835..836}] run particle lava ~ 44 ~ 20 1 20 2 600 force @a[scores={mg6=1..}]
execute as @a[scores={mg6=1..},tag=VFplayers] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=735..737}] run playsound block.lava.ambient master @s ~ ~ ~ 1 0.8
execute as @e[name="M@K",limit=1,scores={mg6.4=735}] at @s run title @a[scores={mg6=1..,mg6.1=0}] actionbar ["",{"text":"Volcanic","color":"red","bold":true},{"text":" eruption","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg6.4=755}] at @s run title @a[scores={mg6=1..,mg6.1=0}] actionbar ["",{"text":"Volcanic","color":"red","bold":true},{"text":" eruption.","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg6.4=775}] at @s run title @a[scores={mg6=1..,mg6.1=0}] actionbar ["",{"text":"Volcanic","color":"red","bold":true},{"text":" eruption..","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg6.4=795..820}] at @s run title @a[scores={mg6=1..,mg6.1=0}] actionbar ["",{"text":"Volcanic","color":"red","bold":true},{"text":" eruption...","color":"yellow","bold":true}]
execute as @a[scores={mg6=1..},tag=VFplayers] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=835}] run playsound block.lava.extinguish master @s ~ ~ ~ 1 2
execute as @e[type=marker,name=mg6] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=835}] run fill ~-25 45 ~-25 ~25 45 ~25 air replace red_terracotta
execute as @e[type=marker,name=mg6] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=835}] run fill ~-25 45 ~-25 ~25 45 ~25 red_terracotta replace orange_terracotta
execute as @e[type=marker,name=mg6] at @s if entity @e[name="M@K",limit=1,scores={mg6.4=835}] run fill ~-25 45 ~-25 ~25 45 ~25 orange_terracotta replace yellow_terracotta
scoreboard players set @e[name="M@K",limit=1,scores={mg6.4=835..}] mg6.4 450
execute as @e[type=marker,name=mg6] at @s if block ~ ~-1 ~ red_terracotta run summon marker ~ ~ ~ {Tags:[mg6],CustomName:"{\"text\":\"mg6/2\"}"}
execute as @a[scores={mg6=1..,mg6.1=0},tag=VFplayers] at @s if block ~ ~ ~ lava run function c1:mg6/death
execute as @a[scores={mg6=1..,mg6.2=1..},x=100,y=46,z=-17,distance=16..] at @s run tp 100 48 -17
gamemode spectator @a[scores={mg6=1..,mg6.2=1..}]
tag @a[scores={mg6=1..,mg6.2=1..}] remove VFplayers
execute as @a[scores={mg6=1..},tag=VFplayers,tag=VFLonely] at @s run execute if entity @a[scores={mg6=1..},tag=VFplayers,tag=!VFLonely] run tag @a[scores={mg6=1..}] remove VFLonely
execute as @r[limit=1,scores={mg6=1..},tag=VFplayers] unless entity @a[scores={mg6=1..},tag=VFplayers,tag=VFLonely] run tag @s add VFLonely
tag @a[scores={mg6.2=1..}] remove VFLonely
execute as @a[scores={mg6=1..},tag=VFLonely,tag=VFplayers,limit=1] at @s run execute unless entity @a[scores={mg6=1..},tag=!VFLonely,tag=VFplayers] run setblock -324 2 -66 redstone_block
scoreboard players set @a[scores={mg6.1=1}] mg6.1 2
execute as @r[scores={mg6.1=1..}] at @s run setblock ~ 45 ~ brown_terracotta
scoreboard players add @e[name="M@K",limit=1] mg6.4 1
execute as @a[scores={mg6=1..},tag=VFplayers] at @s unless entity @a[scores={mg6.1=1..}] if entity @e[type=marker,name=mg6] run fill ~ 45 ~ ~ 45 ~ yellow_terracotta replace brown_terracotta
execute as @a[scores={mg6=1..},tag=VFplayers] at @s if score @e[name="M@K",limit=1] mg6.4 matches 835 if block ~ 45 ~ yellow_terracotta unless entity @a[scores={mg6.1=1..}] run summon marker ~ ~ ~ {CustomName:"{\"text\":\"mg6\"}",Tags:[p0s]}

execute as @e[type=marker,name=mg6,tag=!p0s] at @s unless score @s mg6 matches 0.. run scoreboard players set @s mg6 2147483647
execute as @e[type=marker,name=mg6,tag=p0s] at @s unless score @s mg6 matches 0.. run scoreboard players set @s mg6 2
scoreboard players remove @e[type=marker,scores={mg6=0..}] mg6 1
kill @e[type=marker,name="mg6/2",scores={mg6.3=50..}]
kill @e[type=marker,name=mg6,scores={mg6=..0}]