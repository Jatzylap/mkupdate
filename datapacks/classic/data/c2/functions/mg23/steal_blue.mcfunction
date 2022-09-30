setblock -75 25 -122 white_wool destroy
fill -75 30 -121 -76 36 -114 white_wool replace #wool
summon firework_rocket -75 25.5 -122 {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;3949738],FadeColors:[I;3949738]}]}}}}
tellraw @a[scores={mg23=1..}] ["",{"text":"\n"},{"selector":"@s"},{"text":" picked up ","color":"yellow"},{"text":"Blue Team","color":"blue"},{"text":"\'s flag!\n","color":"yellow"}]
item replace entity @s armor.head with blue_banner{CTF:1b,HideFlags:63,display:{Name:'{"text":"Blue Team\'s Flag","color":"blue","italic":false}'},Enchantments:[{id:binding_curse,lvl:1}]}
title @a[scores={mg23=1..},team=mg23-blue] title [""]
execute at @s[team=mg23-red] if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run title @a[scores={mg23=1..},team=mg23-blue] subtitle ["",{"text":"Your flag was stolen!","color":"blue"}]
execute if data entity @s[team=mg23-blue] Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run title @s subtitle ["",{"text":"You picked up your flag!","color":"blue"}]
execute as @a[scores={mg23=1..}] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1000 1.2
scoreboard players reset @a mg23.6