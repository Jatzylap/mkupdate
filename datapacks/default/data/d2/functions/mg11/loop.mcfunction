execute as @r[scores={mg11=1..},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg11=1..,2=1..},tag=st0red] at @s run clear @s #lc_items{LC:1b}
execute as @a[scores={mg11=1..,2=1..},tag=st0red] at @s run function mk:exit
tag @a[scores={mg11=1..,2=1..}] remove SPmg11
execute as @a[scores={mg11=1..,lobby=1..},tag=st0red] at @s run function mk:restore
tag @a[scores={mg11=1..,lobby=1..}] remove SPmg11
execute as @a[scores={mg11=1..,lobby=1..}] at @s run scoreboard players reset @s mg11
clear @a[tag=SPmg11] #lc_items{LC:1b}
effect give @a[scores={mg11=1..},tag=SPmg11] invisibility 1 9 true

#Main
execute as @e[type=armor_stand,tag=mg11,tag=LC] at @s if entity @a[scores={mg11=1..},distance=..6] unless block ~ ~ ~ chest run function d2:mg11/initiate
execute as @e[type=armor_stand,tag=mg11,tag=LC] at @s unless block ~ ~ ~ chest unless entity @e[type=item,nbt={Item:{tag:{LC:1b,display:{Lore:["{\"text\":\"lucky:block\",\"color\":\"dark_gray\"}"]}}}},distance=..6] run kill @s
execute as @a[scores={mg11=1..},tag=LCplayers,tag=!SPmg11,limit=1,x=-109,y=7,z=-393,dx=18,dy=5,dz=7] at @s unless entity @a[tag=LCwinner] run tag @s add LCwinner
execute as @a[scores={mg11=1..},tag=LCwinner] at @s run setblock -321 2 -94 redstone_block
scoreboard players add @e[scores={mg11.1=0..}] mg11.1 1
execute unless entity @e[type=armor_stand,tag=mg11,tag=LC] run forceload add -101 -357
execute unless entity @e[type=armor_stand,tag=mg11,tag=LC] run setblock -102 8 -357 heavy_weighted_pressure_plate keep
execute unless entity @e[type=armor_stand,tag=mg11,tag=LC] run setblock -98 8 -357 heavy_weighted_pressure_plate keep
execute at @e[tag=mg11,tag=LC] if block ~ ~ ~ chest run data merge block ~ ~ ~ {LootTable:"d2:lucky_toolevents"}
tag @a remove LC_cursed_end
scoreboard players reset @e[tag=pmcm,tag=LC,scores={mg11.1=500..}] mg11.1

execute at @e[nbt={Item:{tag:{LC:1b,c:1}}}] run particle cloud ~ ~-0.25 ~ 0 0 0 0.02 2 force @a
execute at @e[nbt={Item:{tag:{LC:1b,f:1}}}] run particle smoke ~ ~0.4 ~ 0 0 0 0 1 force @a
execute at @e[nbt={Item:{tag:{LC:1b,s:1}}}] run particle happy_villager ~ ~ ~ 0.2 0.5 0.2 0.1 1 force @a
execute at @e[nbt={Item:{tag:{LC:1b,w:1}}}] run particle witch ~ ~ ~ 0.1 0 0.1 0 1 force @a

execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run effect give @s resistance 1 10
execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run effect give @s regeneration 1 10
execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run particle totem_of_undying ~ ~ ~ 0 0 0 0.5 10 normal @a
execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run effect give @s fire_resistance 1 10
execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run effect give @s luck 1 4
execute as @a[scores={mg11=1..},tag=LCplayers] at @s if data entity @s Inventory[{Slot:103b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:102b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:101b,tag:{LC:1b,w:1}}] if data entity @s Inventory[{Slot:100b,tag:{LC:1b,w:1}}] run particle witch ~ ~ ~ 0.2 0 0.2 0 3 normal @a

#Event listeners
execute as @e[type=silverfish,tag=LC,tag=Block] at @s if block ~ ~-1 ~ emerald_block run tag @s add E
execute as @e[type=silverfish,tag=LC,tag=Block,tag=E] at @s unless block ~ ~-1 ~ emerald_block run summon item ^ ^ ^2 {Item:{Count:1,id:emerald_block}}
execute as @e[type=slime,tag=LC] at @s run effect give @a[scores={mg11=1..},tag=LCplayers,distance=..1] instant_damage
execute as @e[type=silverfish,tag=LC,tag=Block] at @s if block ~ ~-1 ~ air run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute as @e[type=silverfish,tag=LC,tag=Block] at @s if block ~ ~-1 ~ air run kill @s
execute as @a[tag=LC_cursed,scores={mg11.1=500}] at @s run effect give @s poison 10 4
execute as @a[tag=LC_cursed,scores={mg11.1=500}] at @s run tellraw @a[tag=LC_cursed] ["",{"text":"The curse is now taking effect.. Quickly before they use their mighty powers!","color":"red"}]
execute as @a[tag=LC_cursed,scores={mg11.1=500..}] at @s run particle reverse_portal ~ ~0.5 ~ 0.5 1 0.5 0.3 50 force @a
execute as @e[limit=1,sort=random,tag=LC,tag=ud] at @s if score @p[tag=LC_cursed] mg11.1 matches 1000 run tag @s add curse
execute as @e[tag=LC,tag=ud,tag=curse] at @s run data merge entity @s {Invulnerable:1}
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1000.. run tp @e[limit=1,tag=LC,tag=curse] ~ ~ ~ facing entity @s
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1000 run title @s actionbar ["",{"text":"Ye are finished, hahaa!","color":"gray","bold":true}]
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1100.. run title @s actionbar ["",{"text":"This, shall be the proof of your disrespect toward our kind!","color":"gray","bold":true}]
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1200.. run title @s actionbar ["",{"text":"We'll get all your kind too, soon enough!","color":"gray","bold":true}]
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1300.. run title @s actionbar ["",{"text":"Any last words?","color":"gray","bold":true}]
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1400.. run title @s actionbar ["",{"text":"Any last words? MuhahaHahahahaa!","color":"gray","bold":true}]
execute as @a[tag=LC_cursed] at @s positioned ~ ~3 ~ if score @s mg11.1 matches 1400.. run summon lightning_bolt ~ ~ ~
execute as @a[tag=LC_cursed] at @s if score @s mg11.1 matches 1500.. run tp @e[tag=ud] ~ -100 ~
execute as @a[tag=LC_cursed] at @s if score @s mg11.1 matches 1600.. run kill @e[tag=ud]
execute unless entity @e[tag=LC,tag=ud] run tag @a[scores={mg11.1=1..},tag=LC_cursed] add LC_cursed_end
scoreboard players reset @a[tag=LC_cursed_end] mg11.1
tag @a[tag=LC_cursed_end] remove LC_cursed
execute as @a[scores={mg11.1=2500..},tag=LC_cursed] at @s unless entity @e[tag=ud] run summon lightning_bolt
execute as @a[tag=LC_dropper-ed] at @s if entity @e[tag=LC,tag=pmcm,scores={mg11.1=55}] run tag @s add r
execute as @a[tag=LC_dropper-ed] at @s if entity @e[tag=LC,tag=pmcm,scores={mg11.1=1}] run scoreboard players set @s mg11.1 0
execute as @e[tag=LC,tag=pmcm,scores={mg11.1=55}] at @s run particle smoke ~ ~-1 ~ 0 0.3 0 1 3 normal @a[scores={mg11=1..},tag=LCplayers]
execute as @e[tag=LC,tag=pmcm,scores={mg11.1=55}] at @s run setblock ~ ~ ~ redstone_block keep
execute as @e[tag=LC,tag=pmcm,scores={mg11.1=55}] at @s run playsound block.piston.extend master @s ~ ~ ~ 1
execute as @a[tag=LC_dropper-ed,tag=r,scores={mg11.1=55}] at @s run effect give @s levitation 2 50 true
execute if entity @a[tag=LC_dropper-ed,tag=r] as @e[tag=LC,tag=pmcm] at @s if score @s mg11.1 matches 100 run setblock ~ 83 ~ structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:0b,seed:0L,rotation:"NONE",posX:1,mode:"LOAD",posY:0,sizeX:13,posZ:-5,integrity:1.0f,showair:0b,name:"library:mg11",sizeY:27,sizeZ:12}
execute if entity @a[tag=LC_dropper-ed,tag=r] as @e[tag=LC,tag=pmcm] at @s if score @s mg11.1 matches 100 run setblock ~ 82 ~ redstone_block
execute if entity @a[tag=LC_dropper-ed,tag=r] as @e[tag=LC,tag=pmcm] at @s if score @s mg11.1 matches 100.. run fill ~ 82 ~ ~ 83 ~ air
execute if entity @a[tag=LC_dropper-ed,tag=r] as @e[tag=LC,tag=pmcm] at @s if score @s mg11.1 matches 110.. run kill @s
execute at @e[tag=LC,tag=pmcm] if score @s mg11.1 matches 0.. run title @a[tag=LC_dropper-ed] actionbar ["",{"text":"Pass through all the ","color":"gold"},{"text":"Hoops ","color":"green"},{"text":"to earn a special prize!","color":"yellow"}]
execute as @e[tag=pmc] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=pmc] at @s run particle firework ^ ^1 ^1.5 0 0 0 0 9 force @a
execute as @e[tag=pmc,tag=1] at @s run tag @a[tag=LC_dropper-ed,tag=r,distance=..2] add LC-1
execute as @e[tag=pmc,tag=2] at @s run tag @a[tag=LC_dropper-ed,tag=r,distance=..2] add LC-2
execute as @e[tag=pmc,tag=3] at @s run tag @a[tag=LC_dropper-ed,tag=r,distance=..2] add LC-3
execute as @e[tag=pmc,tag=4] at @s run tag @a[tag=LC_dropper-ed,tag=r,distance=..2] add LC-4
execute as @e[tag=pmc,tag=5] at @s run tag @a[tag=LC_dropper-ed,tag=r,distance=..2] add LC-5
execute as @e[tag=pmc] at @s if entity @a[scores={mg11=1..},tag=LCplayers,distance=..2] run kill @s
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;4304440,2437522,4312372,4304440,6719955,4304440],FadeColors:[I;4304440,4304440,4312372,4304440,6719955,4304440]}]}}}}
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run title @s title ["",{"text":"i","obfuscated":true},{"text":"YAY! You did it!","color":"gold","bold":true},{"text":"i","obfuscated":true}]
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;7047881,2437522,7047881,14602026,7047881,7047881],FadeColors:[I;3029133,7047881,4312372,7047881,7047881,3029133]}]}}}}
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;3029133,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1,Trail:0,Colors:[I;4304440,7047881,4312372,4304440,7047881,15435844],FadeColors:[I;3029133,4304440,4312372,3029133,4304440,15435844]}]}}}}
effect give @a[tag=LC_dropper-ed,tag=r] slow_falling 1 1 true
execute as @a[tag=LC_dropper-ed,tag=r,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] at @s unless block ~ ~-1 ~ air run tellraw @s ["",{"text":"Here is your well-deserved prize!","color":"gold"}]
execute as @a[tag=r,tag=LC_dropper-ed,scores={mg11.1=100..}] at @s unless block ~ ~-0.5 ~ air run function d2:mg11/prize/big