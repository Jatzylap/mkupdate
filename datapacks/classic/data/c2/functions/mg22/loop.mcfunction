#Viewers
gamemode spectator @a[tag=SPmg22]
execute as @a[tag=SPmg22] at @s unless entity @s[x=197,y=0,z=-215,dx=68,dy=40,dz=77] run tp -51 5 47
execute as @a[tag=SPmg22] at @s unless entity @s[x=197,y=0,z=-215,dx=68,dy=40,dz=77] run gamemode adventure
execute as @a[tag=SPmg22] at @s unless entity @s[x=197,y=0,z=-215,dx=68,dy=40,dz=77] run scoreboard players reset @s mg22
execute as @a[tag=SPmg22] at @s unless entity @s[x=197,y=0,z=-215,dx=68,dy=40,dz=77] run tag @s remove SPmg22
execute as @a at @s unless score @s mg22 matches 1.. run tag @s remove TDviewers
effect give @a[tag=TDviewers] invisibility 1 9 true
effect give @a[tag=TDviewers] jump_boost 1 149 true

#Upgrader
execute as @a[scores={mg22=1..},x=197,y=2,z=-163,distance=..3] at @s unless score @e[limit=1,name="M@K"] mg22.1 matches 250.. run title @s actionbar ["",{"text":"Upgrade Cost: ","color":"gray"},{"text":"250 points","color":"red"},{"text":" "},{"text":" "},{"text":" "},{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"}]
execute as @a[scores={mg22=1..},x=197,y=2,z=-163,distance=..3] at @s if score @e[limit=1,name="M@K"] mg22.1 matches 250.. run title @s actionbar ["",{"text":"Upgrade Cost: ","color":"gray"},{"text":"250 points","color":"gold"},{"text":" "},{"text":" "},{"text":" "},{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"}]
execute as @a[scores={mg22=1..},x=197,y=2,z=-163,distance=..3] at @s if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if data entity @s SelectedItem.tag{mg:22} unless data entity @s SelectedItem.tag.EntityTag{Tags:[lvl3]} run particle witch 197 2.7 -163 0.11 0.11 0.11 0 10 normal @a[scores={mg22=1..}]
execute as @e[type=item,limit=1,x=197,y=2,z=-163,dy=1,dx=0,dz=0] at @s if score @e[limit=1,name="M@K"] mg22.1 matches 250.. if data entity @s Item.tag{mg:22} unless data entity @s Item.tag.EntityTag{Tags:[lvl3]} run particle witch 197 2.7 -163 0.11 0.11 0.11 0 10 normal @a[scores={mg22=1..}]
execute as @e[limit=1,type=item,x=197,y=2,z=-163,dy=0,dx=0,dz=0] run function c2:mg22/upgrade

#Shop
execute unless score @e[tag=mg22_start,limit=1] mg22.2 matches 30.. run title @a[scores={mg22=1..}] actionbar ["",{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"},{"text":" "},{"text":" "},{"text":" "},{"text":"Wave: ","color":"green"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.2"},"color":"yellow","bold":true}]
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 30.. run title @a[scores={mg22=1..}] actionbar ["",{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"},{"text":" "},{"text":" "},{"text":" "},{"text":"Wave: ","color":"green"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.2"},"color":"aqua","bold":true}]

execute unless entity @e[tag=mg22_start] as @a[scores={mg22=1..},x=201,y=2,z=-168,distance=..9] at @s unless entity @s[x=197,y=2,z=-163,distance=..3] run title @s actionbar ["",{"text":"Points: ","color":"yellow"},{"score":{"name":"@e[name=\"M@K\",limit=1]","objective":"mg22.1"},"color":"gold"}]
execute unless entity @e[tag=mg22_start] if data block 197 2 -173 Items[{Slot:0b}] unless data block 197 2 -173 Items[{Slot:0b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute unless entity @e[tag=mg22_start] if data block 197 2 -173 Items[{Slot:1b}] unless data block 197 2 -173 Items[{Slot:1b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:2b}] unless data block 197 2 -173 Items[{Slot:2b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:3b}] unless data block 197 2 -173 Items[{Slot:3b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:4b}] unless data block 197 2 -173 Items[{Slot:4b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:5b}] unless data block 197 2 -173 Items[{Slot:5b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:6b}] unless data block 197 2 -173 Items[{Slot:6b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:7b}] unless data block 197 2 -173 Items[{Slot:7b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:8b}] unless data block 197 2 -173 Items[{Slot:8b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:9b}] unless data block 197 2 -173 Items[{Slot:9b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:10b}] unless data block 197 2 -173 Items[{Slot:10b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:11b}] unless data block 197 2 -173 Items[{Slot:11b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:12b}] unless data block 197 2 -173 Items[{Slot:12b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:13b}] unless data block 197 2 -173 Items[{Slot:13b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:14b}] unless data block 197 2 -173 Items[{Slot:14b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:15b}] unless data block 197 2 -173 Items[{Slot:15b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:16b}] unless data block 197 2 -173 Items[{Slot:16b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:17b}] unless data block 197 2 -173 Items[{Slot:17b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:18b}] unless data block 197 2 -173 Items[{Slot:18b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:19b}] unless data block 197 2 -173 Items[{Slot:19b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:20b}] unless data block 197 2 -173 Items[{Slot:20b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:21b}] unless data block 197 2 -173 Items[{Slot:21b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:22b}] unless data block 197 2 -173 Items[{Slot:22b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:23b}] unless data block 197 2 -173 Items[{Slot:23b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:24b}] unless data block 197 2 -173 Items[{Slot:24b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:25b}] unless data block 197 2 -173 Items[{Slot:25b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute if data block 197 2 -173 Items[{Slot:26b}] unless data block 197 2 -173 Items[{Slot:26b,tag:{gui:1}}] run loot spawn 197 1 -173 mine 197 2 -173 stick{0:1}
execute as @e[name="M@K",limit=1] at @s in sister_dimension run function c2:mg22/buy
execute as @e[tag=mg22,tag=!mg22_mob] at @s run function c2:mg22/animate

#Structures
execute as @e[type=cod,tag=mg22] at @s store success score @s mg22 if blocks ~-1 ~ ~-1 ~1 ~ ~1 240 27 -166 all
execute as @e[type=cod,tag=mg22] at @s if score @s mg22 matches 0 run function c2:mg22/undo
execute as @e[type=cod,tag=mg22] at @s if score @s mg22 matches 1 run function c2:mg22/place
execute as @e[type=cod,tag=mg22] at @s run data merge entity @s {Health:0,DeathTime:19s}
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22] at @s unless data entity @p[scores={mg22=1..},distance=..2] SelectedItem run function c2:mg22/pack
#particles
execute as @e[type=falling_block,tag=mg22] at @s run data merge entity @s {Time:-10000000}
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22] at @s run tp @s ~ ~ ~ ~35 ~
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=!x,tag=!xx] at @s positioned ~ ~1 ~ run particle scrape ^ ^ ^4 0 0 0 0 25 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=x] at @s positioned ~ ~1 ~ run particle scrape ^ ^ ^7 0 0 0 0 25 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=xx] at @s positioned ~ ~1 ~ run particle scrape ^ ^ ^9 0 0 0 0 25 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=!x,tag=!xx,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s positioned ~ ~1 ~ run particle dust 0 1 0 1 ^ ^ ^4 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=x,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s positioned ~ ~1 ~ run particle dust 0 1 0 1 ^ ^ ^7 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=xx,tag=!lvl1,tag=!lvl2,tag=!lvl3] at @s positioned ~ ~1 ~ run particle dust 0 1 0 1 ^ ^ ^9 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=!x,tag=!xx,tag=lvl1] at @s positioned ~ ~1 ~ run particle dust 0 1 1 1 ^ ^ ^4 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=x,tag=lvl1] at @s positioned ~ ~1 ~ run particle dust 0 1 1 1 ^ ^ ^7 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=xx,tag=lvl1] at @s positioned ~ ~1 ~ run particle dust 0 1 1 1 ^ ^ ^9 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=!x,tag=!xx,tag=lvl2] at @s positioned ~ ~1 ~ run particle dust 1 1 0 1 ^ ^ ^4 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=x,tag=lvl2] at @s positioned ~ ~1 ~ run particle dust 1 1 0 1 ^ ^ ^7 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=xx,tag=lvl2] at @s positioned ~ ~1 ~ run particle dust 1 1 0 1 ^ ^ ^9 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=!x,tag=!xx,tag=lvl3] at @s positioned ~ ~1 ~ run particle dust 1 0.05 0 1 ^ ^ ^4 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=x,tag=lvl3] at @s positioned ~ ~1 ~ run particle dust 1 0.05 0 1 ^ ^ ^7 0 0 0 0 9 normal @a[scores={mg22=1..}]
execute unless entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,tag=xx,tag=lvl3] at @s positioned ~ ~1 ~ run particle dust 1 0.05 0 1 ^ ^ ^9 0 0 0 0 9 normal @a[scores={mg22=1..}]

#PRE-GAME
execute if block 196 3 -168 lever[powered=true] unless entity @e[tag=mg22_start] run function c2:mg22/countdown
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 70.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 1.2
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 70.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 1.2
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 70.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 2
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 40.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 1.6
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 40.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 1.6
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 40.. run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 2
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 0..39 run playsound block.sculk_sensor.clicking master @a[scores={mg22=1..}] 196 3 -168 3 2
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 0.. run tellraw @a[scores={mg22=1..}] ["",{"text":"\nCountdown aborted\n","color":"red"}]
execute if block 196 3 -168 lever[powered=false] if score @e[limit=1,name="M@K"] mg22.3 matches 1.. run scoreboard players reset @e[limit=1,name="M@K"] mg22.3

#GAME
bossbar set td_progress players @a[scores={mg22=1..}]
execute as @e[nbt={Item:{tag:{mg22_drop:1}}},limit=1] at @s run scoreboard players add @e[tag=mg22_start] mg22.1 10
execute as @e[nbt={Item:{tag:{mg22_drop:2}}},limit=1] at @s run scoreboard players add @e[tag=mg22_start] mg22.1 20
execute as @e[nbt={Item:{tag:{mg22_drop:3}}},limit=1] at @s run scoreboard players add @e[tag=mg22_start] mg22.1 30
kill @e[nbt={Item:{tag:{mg22_drop:1}}},limit=1]
kill @e[nbt={Item:{tag:{mg22_drop:2}}},limit=1]
kill @e[nbt={Item:{tag:{mg22_drop:3}}},limit=1]
execute store result bossbar td_progress value run scoreboard players get @e[name="M@K",limit=1] mg22.5
execute as @e[type=goat,tag=mg22_mob] at @s run particle dust 1 1 1 2 ~ ~-0.02 ~ 0 0 0 0.01 9 force @a[scores={mg22=1..}]
execute as @e[type=goat,tag=mg22_mob,nbt={HurtTime:10s}] at @s run particle angry_villager ~ ~1 ~ 0 0 0 1 3 force @a[scores={mg22=1..}]
execute as @e[type=goat,tag=mg22_mob,nbt={HurtTime:10s}] at @s run playsound entity.goat.screaming.hurt master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[tag=mg22_start] at @s in sister_dimension if score @s mg22.6 matches 0.. store result score @s mg22.6 if entity @e[tag=mg22_mob]
execute as @e[tag=mg22_mob] at @s if block ~ ~ ~ deepslate_brick_wall run setblock ~ ~ ~ air destroy
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 1
execute as @e[type=hoglin,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 1
execute as @e[type=hoglin,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.hoglin.attack master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[type=zoglin,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 2
execute as @e[type=hoglin,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.zoglin.attack master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[type=creeper,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 5
execute as @e[type=creeper,tag=mg22_mob,nbt={powered:1b}] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 3
execute as @e[type=creeper,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.generic.explode master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[type=goat,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run scoreboard players remove @e[tag=mg22_start] mg22.5 10
execute as @e[type=goat,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.goat.screaming.prepare_ram master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[type=goat,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.goat.screaming.ram_impact master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.5
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.zombie.attack_wooden_door master @a[scores={mg22=1..}] ~ ~ ~ 10000 0.4
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound entity.splash_potion.break master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.2
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run playsound block.end_portal_frame.fill master @a[scores={mg22=1..}] ~ ~ ~ 10000 1.7
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run particle large_smoke ~ ~0.5 ~ 0 1 0 0.1 90 force @a[scores={mg22=1..}]
execute as @e[type=creeper,tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run particle explosion ~ ~0.5 ~ 0.5 0.5 0.5 0.1 8 force @a[scores={mg22=1..}]
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run particle totem_of_undying ~ ~0.5 ~ 0 0 0 1 5 force @a[scores={mg22=1..}]
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run particle flame ~ ~0.5 ~ 0 0 0 1 5 force @a[scores={mg22=1..}]
execute as @e[tag=mg22_mob] at @s if block ~ ~-1 ~ chiseled_stone_bricks run data merge entity @s {Health:0,DeathTime:19s}
execute as @e[tag=mg22_rider] at @s if block ~ ~-2 ~ chiseled_stone_bricks run data merge entity @s {Health:0,DeathTime:19s}
execute as @e[tag=mg22_rider] at @s if block ~ ~-0.2 ~ air run tp ^ ^ ^-0.8
execute as @e[tag=mg22_rider] at @s if block ~ ~-0.2 ~ air run tp @s ~ ~-0.2 ~

#Battle projectiles
execute as @e[type=marker,tag=mg22,scores={mg22.3=0..160}] at @s run scoreboard players add @s mg22.3 1
execute if entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,scores={mg22.3=161},tag=!xx,tag=!x] at @s if entity @e[tag=mg22_mob,distance=..5] run function c2:mg22/attack
execute if entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,scores={mg22.3=161},tag=x] at @s if entity @e[tag=mg22_mob,distance=..7] run function c2:mg22/attack
execute if entity @e[tag=mg22_start] as @e[type=marker,tag=mg22,scores={mg22.3=161},tag=xx] at @s if entity @e[tag=mg22_mob,distance=..9] run function c2:mg22/attack

#Delayed Spawn
execute as @e[tag=mg22_start] at @s in sister_dimension if score @s mg22.7 matches 1 if score @s mg22.4 matches 1.. run function c2:mg22/prepare
execute as @e[tag=mg22_start] at @s if score @s mg22.2 matches 0.. if score @s mg22.7 matches 1.. run scoreboard players remove @s mg22.7 1
execute as @e[tag=mg22_start] at @s if score @s mg22.2 matches 0.. if score @s mg22.7 matches 0 if score @s mg22.4 matches 1.. run scoreboard players remove @s mg22.4 1
execute as @e[tag=mg22_start] at @s if score @s mg22.2 matches 0.. if score @s mg22.7 matches 0 if score @s mg22.4 matches 1.. run scoreboard players set @s mg22.7 30

#End
execute as @e[tag=mg22_start] at @s in sister_dimension if score @s mg22.2 matches 0.. if score @s mg22.6 matches 0 if score @s mg22.4 matches 0 if score @s mg22.7 matches 0 unless entity @e[tag=mg22_mob] run function c2:mg22/end
execute unless entity @a[scores={mg22=1..}] run setblock -351 2 -35 air

#Surrender
execute if score @e[tag=mg22_start,limit=1] mg22.5 matches ..0 run function c2:mg22/surrender

#Pathfinding
#poi mechanics
execute as @e[tag=mob_path1] at @s if block ~0.5 ~ ~ structure_void run data merge entity @s {Rotation:[180f]}
execute as @e[tag=mob_path1] at @s if block ~ ~ ~-0.5 structure_void run data merge entity @s {Rotation:[90f]}
execute as @e[tag=mob_path1] at @s if block ~-0.5 ~ ~ structure_void run data merge entity @s {Rotation:[0f]}
execute as @e[tag=mob_path1] at @s if block ~ ~ ~0.5 structure_void run data merge entity @s {Rotation:[90f]}
execute as @e[tag=mob_path2] at @s if block ~0.5 ~ ~ structure_void run data merge entity @s {Rotation:[0f]}
execute as @e[tag=mob_path2] at @s if block ~ ~ ~0.5 structure_void run data merge entity @s {Rotation:[90f]}
execute as @e[tag=mg22_carrier,nbt={DeathTime:9s}] at @s store result entity @e[dy=2,limit=1,tag=mg22_rider] Rotation[0] float 1 run data get entity @s Rotation[0]

#speed
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[type=!goat,tag=mg22_mob,type=!hoglin] at @s if data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] run tp ^ ^ ^0.06
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[tag=mg22_mob,type=hoglin] at @s if data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[type=!goat,tag=mg22_mob,type=!hoglin] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.15
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[tag=mg22_mob,type=hoglin] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.08
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 10.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.04
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 20.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.04
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 30.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 40.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 50.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 60.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 70.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 80.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 90.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 100.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 110.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 120.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 130.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 140.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 150.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 160.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 170.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 180.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 190.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 200.. as @e[type=!goat,tag=mg22_mob] at @s unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^0.02
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[tag=mg22_mob,type=goat] at @s run tp ^ ^ ^0.5
execute if score @e[tag=mg22_start,limit=1] mg22.2 matches 0.. as @e[tag=mg22_mob,tag=!mg22_rider,sort=random,limit=1] at @s if entity @e[tag=mg22_mob,tag=!mg22_carrier,tag=!mg22_rider,distance=0.01..1] unless data entity @s ActiveEffects[{Id:2b,Amplifier:4b}] unless data entity @s ActiveEffects[{Id:2b,Amplifier:-1b}] run tp ^ ^ ^-0.5

execute if entity @e[tag=mg22_start] as @a[scores={mg22=1..},tag=!SPmg22] at @s if block ~ ~-4 ~ deepslate_bricks run tp 216 2 -168
execute if entity @e[tag=mg22_start] as @a[scores={mg22=1..},tag=!SPmg22] at @s if block ~ ~-3 ~ deepslate_bricks run tp 216 2 -168
execute if entity @e[tag=mg22_start] as @a[scores={mg22=1..},tag=!SPmg22] at @s if block ~ ~-2 ~ deepslate_bricks run tp 216 2 -168
execute if entity @e[tag=mg22_start] as @a[scores={mg22=1..},tag=!SPmg22] at @s if block ~ ~-1 ~ deepslate_bricks run tp 216 2 -168
scoreboard players reset @a[scores={mg22=1..}] mk