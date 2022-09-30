#Spectators
gamemode spectator @a[tag=SPmg23]
execute as @a[tag=SPmg23] at @s unless entity @s[x=-133,y=-3,z=-227,dx=280,dy=68,dz=340] in sister_dimension run spreadplayers 14 -57 10 90 under 11 false @s
team leave @a[scores={mg23=1..},tag=CTFplayers,tag=SPmg23]
tag @a[scores={mg23=1..},tag=SPmg23] remove CTFplayers

execute as @r[scores={mg23=1..},tag=!st0red] at @s run function mk:store
tag @e[type=!player,type=!item,x=-133,y=-3,z=-227,dx=280,dy=68,dz=340] add mg23
execute as @a[scores={mg23=1..,lobby=1..}] at @s run tag @s remove CTFplayers
execute as @a[scores={mg23=1..,lobby=1..}] at @s run tag @s remove SPmg23
execute as @a[scores={mg23=1..,lobby=1..}] at @s run clear @s
execute as @a[scores={mg23=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg23=1..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg23=1..,2=1..},tag=st0red] at @s run scoreboard players reset @s mg23

#Pre-Timer
scoreboard players remove @e[name="M@K",limit=1,scores={mg23.3=0..}] mg23.3 1
scoreboard players add @e[name="M@K",limit=1,tag=!mg23_start,scores={mg23.5=0..}] mg23.4 1
execute as @e[name="M@K",limit=1,tag=!mg23_start,scores={mg23.3=..0,mg23.5=0}] at @s run function c2:mg23/post-init
scoreboard players remove @e[name="M@K",limit=1,tag=!mg23_start,scores={mg23.4=20..,mg23.5=1..}] mg23.5 1
execute if entity @e[name="M@K",limit=1,tag=!mg23_start,scores={mg23.4=20..}] as @a[scores={mg23=1..}] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1000
scoreboard players set @e[name="M@K",limit=1,tag=!mg23_start,scores={mg23.4=20..}] mg23.4 0
execute unless entity @e[tag=mg23_start] store result bossbar ctf_countdown value run scoreboard players get @e[name="M@K",limit=1,tag=!mg23_start] mg23.3
bossbar set ctf_countdown players @a[scores={mg23=1..}]

#Main
#timer
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=0..8400}] at @s run scoreboard players add @s mg23.4 1
execute as @e[tag=mg23_start] at @s unless entity @a[tag=mg23_win] unless score @s mg23.8 matches 0 store result bossbar ctf_countdown value run scoreboard players get @s mg23.4
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=9}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n7","color":"green","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=1200}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n6","color":"green","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=2400}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n5","color":"green","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=3600}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n4","color":"green","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=4800}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n3","color":"yellow","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=6000}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n2","color":"yellow","bold":true},{"text":" minutes remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=7200}] at @s run tellraw @a[scores={mg23=1..}] ["",{"text":"\n1","color":"red","bold":true},{"text":" minute remaining!\n","color":"white","bold":true}]
execute as @e[limit=1,tag=mg23_start,scores={mg23.4=8400}] at @s run function c2:mg23/end
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=9}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=1200}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=2400}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=3600}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=4800}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=6000}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
execute if entity @e[limit=1,tag=mg23_start,scores={mg23.4=7200}] as @a[scores={mg23=1..}] at @s run playsound ui.button.click master @s ~ ~ ~ 1000 2
#flags bar
execute unless entity @a[scores={mg23=1..},tag=CTFplayers] if entity @e[tag=mg23_start] run bossbar set ctf_countdown name ["",{"text":"|"}]
execute as @e[name="M@K",limit=1,tag=!mg23_start] at @s unless score @s mg23.5 matches ..1 if entity @a[scores={mg23=1..},tag=CTFplayers] run bossbar set ctf_countdown name ["",{"text":"Capture the flag","color":"aqua","bold":true},{"text":" in ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"mg23.5"},"color":"green","bold":true},{"text":" seconds","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,tag=!mg23_start] at @s if score @s mg23.5 matches 1 if entity @a[scores={mg23=1..},tag=CTFplayers] run bossbar set ctf_countdown name ["",{"text":"Capture the flag","color":"aqua","bold":true},{"text":" in ","color":"yellow","bold":true},{"score":{"name":"@s","objective":"mg23.5"},"color":"green","bold":true},{"text":" second","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,tag=!mg23_start] at @s if score @s mg23.5 matches ..0 if entity @a[scores={mg23=1..},tag=CTFplayers] run bossbar set ctf_countdown name ["",{"text":"Capture the flag","color":"aqua","bold":true},{"text":" is starting... ","color":"yellow","bold":true}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b1] unless block -75 25 -122 blue_wool unless block 89 25 -17 red_wool run bossbar set ctf_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"| "},{"text":" Team: Red","color":"red","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b1] if block -75 25 -122 blue_wool unless block 89 25 -17 red_wool run bossbar set ctf_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":"|"},{"text":"✔","color":"green"},{"text":"| "},{"text":" Team: Red","color":"red","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b1] unless block -75 25 -122 blue_wool if block 89 25 -17 red_wool run bossbar set ctf_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"| "},{"text":" Team: Red","color":"red","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b1] if block -75 25 -122 blue_wool if block 89 25 -17 red_wool run bossbar set ctf_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"| "},{"text":" Team: Red","color":"red","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b2] unless block 89 25 -17 red_wool unless block -75 25 -122 blue_wool run bossbar set ctf_countdown name ["",{"text":"Team: Red","color":"red","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"| "},{"text":" Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b2] if block 89 25 -17 red_wool unless block -75 25 -122 blue_wool run bossbar set ctf_countdown name ["",{"text":"Team: Red","color":"red","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"| "},{"text":" Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b2] unless block 89 25 -17 red_wool if block -75 25 -122 blue_wool run bossbar set ctf_countdown name ["",{"text":"Team: Red","color":"red","bold":true},{"text":" |"},{"text":"❌","color":"red"},{"text":"| "},{"text":" Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"|"}]
execute in sister_dimension unless entity @a[tag=mg23_win] unless entity @a[tag=mg23_nowin] if entity @e[tag=mg23_start,tag=mg23_b2] if block 89 25 -17 red_wool if block -75 25 -122 blue_wool run bossbar set ctf_countdown name ["",{"text":"Team: Red","color":"red","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"| "},{"text":" Team: Blue","color":"blue","bold":true},{"text":" |"},{"text":"✔","color":"green"},{"text":"|"}]
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s unless entity @a[tag=mg23_win] unless entity @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] run function c2:mg23/win
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s unless entity @a[tag=mg23_win] unless entity @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] run function c2:mg23/win
execute as @e[tag=mg23_start] at @s if score @s mg23.8 matches 0 if entity @a[scores={mg23=1..},tag=mg23_win] run function c2:mg23/win 
execute as @e[tag=mg23_start] at @s unless score @s mg23.8 matches 0 unless entity @a[scores={mg23=1..},team=mg23-blue,tag=!CTFprisoners] unless entity @a[scores={mg23=1..},team=mg23-red,tag=!CTFprisoners] run function c2:mg23/end2
#chest drops
execute in sister_dimension unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if block -12 17 60 redstone_wire[power=0] run data merge block -12 19 60 {LootTable:"c2:chests/ctf_red_drops"}
execute in sister_dimension unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if block -22 17 60 redstone_wire[power=0] run data merge block -22 19 60 {LootTable:"c2:chests/ctf_red_drops"}
execute in sister_dimension unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if block 33 17 -173 redstone_wire[power=0] run data merge block 33 19 -173 {LootTable:"c2:chests/ctf_blue_drops"}
execute in sister_dimension unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 if block 43 17 -173 redstone_wire[power=0] run data merge block 43 19 -173 {LootTable:"c2:chests/ctf_blue_drops"}
#cosmetics
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool",tag:{CTF:1b}}}] at @s run particle flame ~ ~20 ~ 0.2 13 0.2 0 20 force @a[scores={mg23=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool",tag:{CTF:1b}}}] at @s run particle soul_fire_flame ~ ~20 ~ 0.2 13 0.2 0 20 force @a[scores={mg23=1..}]
execute as @e[type=item,nbt={Item:{id:"minecraft:red_wool",tag:{CTF:1b}}}] at @s run data merge entity @s {Age:0s}
execute as @e[type=item,nbt={Item:{id:"minecraft:blue_wool",tag:{CTF:1b}}}] at @s run data merge entity @s {Age:0s}

execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run effect give @s glowing 1 0 true
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run effect give @s glowing 1 0 true
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run effect give @s weakness 1 255 true
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run effect give @s weakness 1 255 true
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run effect give @s speed 1 0 true
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run effect give @s speed 1 0 true

#prison
execute in sister_dimension if block -15 6 53 lever[powered=true] run fill -14 3 57 -14 5 57 air replace redstone_wall_torch
execute in sister_dimension if entity @a[team=mg23-blue,tag=CTFprisoners] if block -15 6 53 lever[powered=true] run summon firework_rocket -15 6.5 53 {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:5,Flicker:0,Trail:1,Colors:[I;3949738],FadeColors:[I;3949738]}]}}}}
execute in sister_dimension if entity @a[team=mg23-blue,tag=CTFprisoners] if block -15 6 53 lever[powered=true] run tellraw @a[scores={mg23=1..},team=mg23-red] ["",{"text":"\nYour prison door has been opened!\n","color":"red"}]
execute in sister_dimension if block -15 6 53 lever[powered=true] run tag @a[team=mg23-blue,tag=CTFplayers] remove CTFprisoners
execute in sister_dimension if entity @a[team=mg23-blue,tag=CTFprisoners] if block -15 6 53 lever[powered=false] run fill -14 3 57 -14 5 57 redstone_wall_torch keep
execute in sister_dimension if block 36 6 -166 lever[powered=true] run fill 35 3 -170 35 5 -170 air replace redstone_wall_torch
execute in sister_dimension if entity @a[team=mg23-red,tag=CTFprisoners] if block 36 6 -166 lever[powered=true] run summon firework_rocket 36 6.5 -166 {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:5,Flicker:0,Trail:1,Colors:[I;11546150],FadeColors:[I;11546150]}]}}}}
execute in sister_dimension if entity @a[team=mg23-red,tag=CTFprisoners] if block 36 6 -166 lever[powered=true] run tellraw @a[scores={mg23=1..},team=mg23-blue] ["",{"text":"\nYour prison door has been opened!\n","color":"blue"}]
execute in sister_dimension if block 36 6 -166 lever[powered=true] run tag @a[team=mg23-red,tag=CTFplayers] remove CTFprisoners
execute in sister_dimension if entity @a[team=mg23-red,tag=CTFprisoners] if block 36 6 -166 lever[powered=false] run fill 35 3 -170 35 5 -170 redstone_wall_torch[facing=south] keep
#death
execute as @a[scores={mg23=1..},tag=CTFplayers,nbt={DeathTime:1s}] at @s unless entity @a[tag=mg23_win] run function c2:mg23/death
#steal
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:blue_wool",tag:{CTF:1b}}] unless data entity @s Inventory[{Slot:103b,id:"minecraft:blue_banner",tag:{CTF:1b}}] run function c2:mg23/steal_blue
execute as @a[scores={mg23=1..},tag=CTFplayers] at @s if data entity @s Inventory[{id:"minecraft:red_wool",tag:{CTF:1b}}] unless data entity @s Inventory[{Slot:103b,id:"minecraft:red_banner",tag:{CTF:1b}}] run function c2:mg23/steal_red
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.0 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.1 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.2 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.3 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.4 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.5 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.6 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.7 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.8 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.0 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.1 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.2 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.3 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.4 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.5 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.6 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.7 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:red_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.8 with red_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.0 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.1 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.2 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.3 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.4 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.5 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.6 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.7 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-blue] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.8 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"blue","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.0 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.1 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.2 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.3 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.4 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.5 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.6 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.7 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23=1..},tag=CTFplayers,team=mg23-red] at @s if data entity @s Inventory[{id:"minecraft:blue_banner",tag:{CTF:1b}}] run item replace entity @s hotbar.8 with blue_wool{CTF:1b,0:1,CanPlaceOn:[emerald_block],display:{Name:'{"text":"Go to your base!","color":"red","italic":false,"bold":true}'}}
execute as @a[scores={mg23.6=1..,mg23=1..},tag=CTFplayers] at @s run function c2:mg23/steal_blue
execute as @a[scores={mg23.7=1..,mg23=1..},tag=CTFplayers] at @s run function c2:mg23/steal_red
#capture
execute in sister_dimension if block -17 19 65 blue_wool run function c2:mg23/capture_blue
execute in sister_dimension if block -17 19 65 red_wool run function c2:mg23/restore_red
execute in sister_dimension if block 38 19 -178 red_wool run function c2:mg23/capture_red
execute in sister_dimension if block 38 19 -178 blue_wool run function c2:mg23/restore_blue
execute as @r[scores={mg23=1..,mg23.8=7..},tag=CTFplayers,team=!] at @s unless score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run function c2:mg23/end
execute as @r[scores={mg23=1..,mg23.8=1..},tag=CTFplayers,team=!] at @s if score @e[tag=mg23_start,limit=1] mg23.8 matches 0 run function c2:mg23/end
#counter
execute as @a[scores={mg23=1..},tag=CTFplayers,team=!] at @s if score @e[tag=mg23_start,limit=1] mg23.4 matches 0..8400 run title @s actionbar ["",{"text":"Flag Captures: ","bold":true},{"score":{"name":"@s","objective":"mg23.8"},"color":"gold"},{"text":"/7","color":"gray"}]
execute as @a[scores={mg23=1..},tag=CTFplayers,team=!] at @s if score @e[tag=mg23_start,limit=1] mg23.8 matches 0.. run title @s actionbar ["",{"text":"Flag Captures: ","bold":true},{"score":{"name":"@s","objective":"mg23.8"},"color":"gold"},{"text":"/1","color":"gray"}]