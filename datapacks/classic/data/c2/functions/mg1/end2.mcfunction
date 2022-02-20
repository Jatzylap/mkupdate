tp @a[scores={mg1=1..}] -51 5 47
data merge block -317 2 -44 {Command:"/summon zombie -8 2 -42 {DeathLootTable:\"\",CustomName:\"{\\\"text\\\":\\\"Zombie\\\",\\\"color\\\":\\\"green\\\"}\",CustomNameVisible:1b,Tags:[TeamZombie],CanBreakDoors:1,Health:10,PersistenceRequired:1b,HandDropChances:[1.0f,0.0f],HandItems:[{Count:1,id:gold_ingot,tag:{DTV:1b}}],ArmorItems:[{Count:1,id:leather_boots,tag:{DTV:1b}},{Count:1,id:leather_leggings,tag:{DTV:1b}},{Count:1,id:leather_chestplate,tag:{DTV:1b}},{Count:1,id:leather_helmet,tag:{DTV:1b}}]}"}
scoreboard players reset #VillagersLeft mg1.1
data merge block -290 2 -53 {Command:"setblock ~-3 ~ ~ redstone_block replace"}
fill -302 2 -54 -316 2 -54 repeater[facing=east,delay=4]
data merge block -319 4 -46 {Command:"/setblock -308 2 -56 air replace"}
fill -307 2 -56 -302 2 -56 repeater[facing=east,delay=4]
effect give @a[scores={mg1=1..}] regeneration 1 255 true
gamemode adventure @a[scores={mg1=1..}]
scoreboard players reset @a mg1.3
scoreboard players reset @a mg1
data merge block -47 6 47 {Text3:'{"text":""}',Text4:'{"text":"Right-Click","color":"aqua","italic":true,"clickEvent":{"action":"run_command","value":"execute unless entity @s[tag=T0] run function c2:mg1/enter"}}'}
