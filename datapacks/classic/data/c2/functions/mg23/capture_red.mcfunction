execute unless entity @a[team=mg23-red,nbt={Inventory:[{Slot:103b,id:"minecraft:red_banner"}]}] run tellraw @a[scores={mg23=1..}] ["",{"text":"\nBlue Team","color":"blue","bold":true},{"text":" captured ","color":"yellow","bold":true},{"text":"Red Team","color":"red","bold":true},{"text":"\'s flag!\n","color":"yellow","bold":true}]
execute if entity @a[team=mg23-red,nbt={Inventory:[{Slot:103b,id:"minecraft:red_banner"}]}] run tellraw @a[scores={mg23=1..}] ["",{"text":"\nRed Team","color":"red","bold":true},{"text":" gave away their own flag!","color":"yellow","bold":true}]
title @a[scores={mg23=1..}] title [""]
execute unless entity @a[team=mg23-red,nbt={Inventory:[{Slot:103b,id:"minecraft:red_banner"}]}] run title @a[scores={mg23=1..}] subtitle ["",{"text":"|","obfuscated":true},{"text":"Red Team\'s flag was captured!","color":"red"},{"text":"|","obfuscated":true}]
execute if entity @a[team=mg23-red,nbt={Inventory:[{Slot:103b,id:"minecraft:red_banner"}]}] run title @a[scores={mg23=1..}] subtitle ["",{"text":"|","obfuscated":true},{"text":"Red Team were betrayed by a team-mate!","color":"red"},{"text":"|","obfuscated":true}]
clear @a[scores={mg23=1..}] #wool{CTF:1b}
clear @a[scores={mg23=1..}] #banners{CTF:1b}
execute in sister_dimension run kill @e[type=item,x=-133,y=-3,z=-227,dx=280,dy=68,dz=340]
execute in sister_dimension run summon firework_rocket 38 21.5 -178 {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;3949738],FadeColors:[I;3949738]}]}}}}
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s run summon firework_rocket ~ ~0.5 ~ {LifeTime:25,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;3949738],FadeColors:[I;3949738]}]}}}}
execute as @a[scores={mg23=1..}] at @s run playsound entity.firework_rocket.launch master @s ~ ~ ~ 1000 1.2
execute as @a[scores={mg23=1..}] at @s run playsound entity.firework_rocket.twinkle master @s ~ ~ ~ 1000 1.2
tag @a remove CTFprisoners
execute in sister_dimension run setblock 38 19 -178 air
execute in sister_dimension run setblock -75 25 -122 blue_wool
execute in sister_dimension run setblock 89 25 -17 red_wool
execute in sister_dimension run fill 88 30 -16 89 35 -9 red_wool replace #wool
execute in sister_dimension run tp @a[team=mg23-red,tag=CTFplayers] -17 4 53
execute in sister_dimension run tp @a[team=mg23-blue,tag=CTFplayers] 38 4 -166
scoreboard players add @a[scores={mg23=1..},team=mg23-blue] mg23.8 1