tag @s add Win
summon firework_rocket 293 2.3 180 {LifeTime:8,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;15435844]}]}}}}
summon firework_rocket 293 2.3 179 {LifeTime:13,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:4b,Trail:1b,Colors:[I;14602026]}]}}}}
summon firework_rocket 296 2.3 179 {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:2b,Colors:[I;4312372]}]}}}}
summon firework_rocket 296 2.3 180 {LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Trail:1b,Colors:[I;11743532]}]}}}}
advancement grant @s[scores={mg18=1..},tag=Win] only mk:achieve_all mg18
execute at @s[scores={mg18=1..},tag=Win] store success score @s 3 run advancement grant @s only mk:unlock_all mg18
scoreboard players add @s[scores={mg18=1..,3=1},tag=Win] 7 1
tellraw @a[scores={mg18=1..},tag=!PG,tag=Drop1] ["",{"selector":"@a[scores={mg18=1..},tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg18=1..},tag=PG] ["",{"selector":"@a[scores={mg18=1..},tag=Win]","color":"yellow","bold":true},{"text":" has finished!","color":"yellow","bold":true}]
tellraw @a[scores={mg18=1..}] ["",{"selector":"@s","color":"yellow","bold":true},{"text":" has just completed ","color":"yellow","bold":true},{"text":"R","color":"red","bold":true},{"text":"A","color":"gold","bold":true},{"text":"I","color":"yellow","bold":true},{"text":"N","color":"green","bold":true},{"text":"B","color":"aqua","bold":true},{"text":"O","color":"light_purple","bold":true},{"text":"W","color":"white","bold":true},{"text":" Parkour","bold":true},{"text":"!","color":"yellow","bold":true}]
execute unless entity @s[scores={mg18=1..}] run function c3:mg18/end