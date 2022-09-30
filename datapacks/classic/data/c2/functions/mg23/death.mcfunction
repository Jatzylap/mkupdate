execute at @s[team=mg23-blue] run particle dust 0 0 1 7 ~ ~1 ~ 0.3 0.8 0.3 1 20 force @a[scores={mg23=1..}]
execute at @s[team=mg23-red] run particle dust 1 0 0 7 ~ ~1 ~ 0.3 0.8 0.3 1 20 force @a[scores={mg23=1..}]
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run tag @s add CTFprisoners
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run tag @a[x=-11,y=4,z=52,dx=-2.5,dy=3,dz=3] add CTFprisoners
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run tag @a[x=32,y=4,z=-165,dx=2.5,dy=3,dz=-3] add CTFprisoners
execute at @s[team=mg23-blue] in sister_dimension run setblock -15 6 53 lever[facing=east,face=ceiling,powered=false]
execute at @s[team=mg23-red] in sister_dimension run setblock 36 6 -166 lever[facing=west,face=ceiling,powered=false]

particle flash ~ ~ ~ 1 1 1 1 85 force @a[scores={mg23=1..}]
particle firework ~ ~ ~ 0 0 0 1 85 normal @a[scores={mg23=1..}]
playsound entity.firework_rocket.blast master @a[scores={mg23=1..}] ~ ~ ~ 1 0.7

execute if data entity @s Inventory[{id:"minecraft:red_wool",tag:{CTF:1b}}] run summon item ~ ~ ~ {Motion:[0d,0.5d],CustomNameVisible:1,CustomName:'{"text":"Red Team\'s Flag","color":"red"}',Item:{Count:1,id:"red_wool",tag:{CanPlaceOn:["emerald_block"],HideFlags:63,Enchantments:[{id:binding_curse,lvl:1}],CTF:1b,display:{Name:'{"text":"Red Team\'s Flag","color":"red","italic":false}'}}}}
execute if data entity @s Inventory[{id:"minecraft:blue_wool",tag:{CTF:1b}}] run summon item ~ ~ ~ {Motion:[0d,0.5d],CustomNameVisible:1,CustomName:'{"text":"Blue Team\'s Flag","color":"blue"}',Item:{Count:1,id:"blue_wool",tag:{CanPlaceOn:["emerald_block"],HideFlags:63,Enchantments:[{id:binding_curse,lvl:1}],CTF:1b,display:{Name:'{"text":"Blue Team\'s Flag","color":"blue","italic":false}'}}}}
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 at @s[team=mg23-blue] unless data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] unless data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run tellraw @a[scores={mg23=1..}] ["",{"text":""},{"selector":"@s"},{"text":" surrendered to ","color":"yellow"},{"text":"Red Team","color":"red"}]
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 at @s[team=mg23-red] unless data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] unless data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run tellraw @a[scores={mg23=1..}] ["",{"text":""},{"selector":"@s"},{"text":" surrendered to ","color":"yellow"},{"text":"Blue Team","color":"blue"}]
execute at @s[team=mg23-blue] if data entity @s Inventory[{id:"minecraft:red_wool",tag:{CTF:1b}}] run tellraw @a[scores={mg23=1..}] ["",{"text":"\n"},{"selector":"@s","bold":true},{"text":" dropped ","color":"yellow","bold":true},{"text":"Red Team","color":"red","bold":true},{"text":"\'s flag!\n","color":"yellow","bold":true}]
execute at @s[team=mg23-red] if data entity @s Inventory[{id:"minecraft:blue_wool",tag:{CTF:1b}}] run tellraw @a[scores={mg23=1..}] ["",{"text":"\n"},{"selector":"@s","bold":true},{"text":" dropped ","color":"yellow","bold":true},{"text":"Blue Team","color":"blue","bold":true},{"text":"\'s flag!\n","color":"yellow","bold":true}]
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if entity @a[team=mg23-red,tag=CTFprisoners] run tellraw @a[scores={mg23=1..},tag=mg23-red] ["",{"text":"\nPrisoners are held hostage in ","color":"gray"},{"text":"Blue Team","color":"blue"},{"text":"\'s base!\n","color":"gray"}]
execute unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if entity @a[team=mg23-blue,tag=CTFprisoners] run tellraw @a[scores={mg23=1..},tag=mg23-blue] ["",{"text":"\nPrisoners are held hostage in ","color":"gray"},{"text":"Red Team","color":"red"},{"text":"\'s base!\n","color":"gray"}]

execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run tag @s add SPmg23
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run title @s title [""]
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run title @s subtitle ["",{"text":"You are now spectating the game","color":"white"}]
execute if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run tellraw @a[scores={mg23=1..}] ["",{"text":""},{"selector":"@s"},{"text":" has died!","color":"yellow"}]
clear @s blue_wool{CTF:1b}
clear @s red_wool{CTF:1b}
clear @s blue_banner{CTF:1b}
clear @s red_banner{CTF:1b}
