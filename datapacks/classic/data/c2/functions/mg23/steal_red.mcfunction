setblock 89 25 -17 white_wool destroy
fill 88 30 -16 89 35 -9 white_wool replace #wool
summon firework_rocket 89 25.5 -17 {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:0,Trail:1,Colors:[I;11546150],FadeColors:[I;11546150]}]}}}}
tellraw @a[scores={mg23=1..}] ["",{"text":"\n"},{"selector":"@s"},{"text":" picked up ","color":"yellow"},{"text":"Red Team","color":"red"},{"text":"\'s flag!\n","color":"yellow"}]
item replace entity @s armor.head with red_banner{CTF:1b,HideFlags:63,display:{Name:'{"text":"Red Team\'s Flag","color":"red","italic":false}'},Enchantments:[{id:binding_curse,lvl:1}]}
title @a[scores={mg23=1..},team=mg23-red] title [""]
execute at @s[team=mg23-blue] if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run title @a[scores={mg23=1..},team=mg23-red] title ["",{"text":"Your flag was stolen!","color":"red"}]
execute if data entity @s[team=mg23-red] Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run title @s subtitle ["",{"text":"You picked up your flag!","color":"red"}]
execute as @a[scores={mg23=1..}] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 1000 1.2
scoreboard players reset @a mg23.7