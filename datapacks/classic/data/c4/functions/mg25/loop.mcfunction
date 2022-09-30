#Spectators
gamemode spectator @a[tag=SPmg25]
execute as @a[tag=SPmg25] at @s unless entity @s[x=284,y=12,z=12,distance=..24] run tp 284 12 12

execute as @r[scores={mg25=1..},tag=!st0red] at @s run function mk:store
execute as @a[scores={mg25=1..,lobby=1..},tag=st0red] at @s run function mk:restore
execute as @a[scores={mg25=1..,2=1..},tag=st0red] at @s run clear @a[scores={mg25=1..}]
execute as @a[scores={mg25=1..,2=1..},tag=st0red] at @s run function mk:exit
execute as @a[scores={mg25=1..,lobby=1..}] at @s run tag @s remove SPmg25
execute as @a[scores={mg25=1..,lobby=1..}] at @s run scoreboard players reset @s mg25

#Main
execute as @e[name="M@K",limit=1,scores={mg25=0..299}] at @s run scoreboard players add @s mg25 1
execute as @e[name="M@K",limit=1,scores={mg25=301..999}] at @s run scoreboard players add @s mg25 1
execute as @e[name="M@K",limit=1,scores={mg25=5}] at @s run tellraw @a[scores={mg25=1..}] ["",{"text":"\nStarting Countdown...","color":"yellow"}]
execute if entity @e[name="M@K",limit=1,scores={mg25=5}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000 0
execute if entity @e[name="M@K",limit=1,scores={mg25=50}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000
execute if entity @e[name="M@K",limit=1,scores={mg25=70}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000
execute if entity @e[name="M@K",limit=1,scores={mg25=90}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000
execute if entity @e[name="M@K",limit=1,scores={mg25=110}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000
execute if entity @e[name="M@K",limit=1,scores={mg25=130}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 10000
execute if entity @e[name="M@K",limit=1,scores={mg25=150}] as @a[scores={mg25=1..}] at @s run playsound block.note_block.cow_bell master @s ~ ~ ~ 10000
execute as @e[name="M@K",limit=1,scores={mg25=50}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=70}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=90}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=110}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=130}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=150}] at @s run title @a[scores={mg25=1..}] title [""]
execute as @e[name="M@K",limit=1,scores={mg25=50}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"5","color":"green","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=70}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"4","color":"green","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=90}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"3","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=110}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"2","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=130}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"1","color":"gold","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=150}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"GO!","color":"gold","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=156}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"G","color":"yellow","bold":true},{"text":"O!","color":"gold","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=157}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"GO","color":"yellow","bold":true},{"text":"!","color":"gold","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=158}] at @s run title @a[scores={mg25=1..}] subtitle ["",{"text":"GO!","color":"yellow","bold":true}]
execute as @e[name="M@K",limit=1,scores={mg25=150}] at @s run title @a[scores={mg25=1..},tag=RGUplayers] actionbar ["",{"text":"<","color":"gray"},{"text":"You must play in Mesopotamian of course!","color":"yellow"},{"text":">","color":"gray"}]
execute as @e[name="M@K",limit=1,scores={mg25=355}] at @s unless entity @e[tag=mg25,type=villager] run function c4:mg25/set
execute if entity @e[name="M@K",limit=1,scores={mg25=..180}] unless entity @a[tag=RGUturn] run scoreboard players reset @a mg25.1
execute if entity @e[name="M@K",limit=1,scores={mg25=200}] as @r[scores={mg25=1..},tag=RGUplayers,tag=!RGUturn] at @s run function c4:mg25/pre-turn
execute as @e[tag=mg25,type=villager] at @s run tp ~ 27 ~
effect give @a[tag=RGUturn] glowing 1 0 true
effect clear @a[tag=RGUplayers,tag=!RGUturn] glowing
effect give @e[tag=mg25,type=villager] invisibility 1 9 true
execute if entity @a[tag=RGUturn,team=mg25-white] run effect give @e[tag=mg25,type=shulker,team=mg25-white] glowing 1 0 true
execute if entity @a[tag=RGUturn,team=mg25-black] run effect give @e[tag=mg25,type=shulker,team=mg25-black] glowing 1 0 true

#Score
fill 308 35 -2 308 29 26 black_concrete replace white_concrete

#black
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=0}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=0}] run fill 308 29 -2 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=0}] run fill 308 35 -2 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=0}] run fill 308 29 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=1}] run fill 308 29 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=2}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=2}] run fill 308 32 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=2}] run fill 308 32 1 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=2}] run fill 308 31 -2 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=2}] run fill 308 29 -2 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=3}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=3}] run fill 308 35 1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=3}] run fill 308 32 1 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=3}] run fill 308 29 1 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=4}] run fill 308 35 -2 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=4}] run fill 308 32 -1 308 32 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-black,scores={mg25.1=4}] run fill 308 35 1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=0}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=0}] run fill 308 29 -2 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=0}] run fill 308 35 -2 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=0}] run fill 308 29 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=1}] run fill 308 29 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=2}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=2}] run fill 308 32 1 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=2}] run fill 308 32 1 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=2}] run fill 308 31 -2 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=2}] run fill 308 29 -2 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=3}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=3}] run fill 308 35 1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=3}] run fill 308 32 1 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=3}] run fill 308 29 1 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=4}] run fill 308 35 -2 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=4}] run fill 308 32 -1 308 32 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=4}] run fill 308 35 1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=5}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=5}] run fill 308 35 -2 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=5}] run fill 308 32 -1 308 32 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=5}] run fill 308 31 1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=5}] run fill 308 29 1 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=6}] run fill 308 35 1 308 35 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=6}] run fill 308 34 -2 308 29 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=6}] run fill 308 29 -1 308 29 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=6}] run fill 308 30 1 308 32 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=6}] run fill 308 32 1 308 32 -2 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=7}] run fill 308 35 -2 308 35 1 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,scores={mg25.2=7}] run fill 308 29 1 308 35 1 white_concrete
#white
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=0}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=0}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=0}] run fill 308 29 26 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=0}] run fill 308 29 23 308 35 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=1}] run fill 308 29 26 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=2}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=2}] run fill 308 32 26 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=2}] run fill 308 32 25 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=2}] run fill 308 31 23 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=2}] run fill 308 29 24 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=3}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=3}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=3}] run fill 308 32 25 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=3}] run fill 308 29 25 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=4}] run fill 308 35 23 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=4}] run fill 308 32 24 308 32 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=..300}] if entity @a[team=mg25-white,scores={mg25.1=4}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=0}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=0}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=0}] run fill 308 29 26 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=0}] run fill 308 29 23 308 35 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=1}] run fill 308 29 26 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=2}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=2}] run fill 308 32 26 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=2}] run fill 308 32 25 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=2}] run fill 308 31 23 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=2}] run fill 308 29 24 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=3}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=3}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=3}] run fill 308 32 25 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=3}] run fill 308 29 25 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=4}] run fill 308 35 23 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=4}] run fill 308 32 24 308 32 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=4}] run fill 308 35 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=5}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=5}] run fill 308 35 23 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=5}] run fill 308 32 24 308 32 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=5}] run fill 308 31 26 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=5}] run fill 308 29 25 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=6}] run fill 308 35 26 308 35 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=6}] run fill 308 34 23 308 29 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=6}] run fill 308 29 24 308 29 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=6}] run fill 308 30 26 308 32 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=6}] run fill 308 32 25 308 32 23 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=7}] run fill 308 35 23 308 35 26 white_concrete
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,scores={mg25.2=7}] run fill 308 29 26 308 35 26 white_concrete

#light points
setblock 305 1 0 redstone_lamp
setblock 305 1 8 redstone_lamp
setblock 305 1 16 redstone_lamp
setblock 305 1 24 redstone_lamp
execute if block 301 5 0 white_concrete run setblock 305 1 0 redstone_lamp[lit=true]
execute if block 301 5 8 white_concrete run setblock 305 1 8 redstone_lamp[lit=true] 
execute if block 301 5 16 white_concrete run setblock 305 1 16 redstone_lamp[lit=true] 
execute if block 301 5 24 white_concrete run setblock 305 1 24 redstone_lamp[lit=true]

#dice roll
execute as @e[name="M@K",limit=1,scores={mg25=233}] at @s in sister_dimension run playsound entity.firework_rocket.twinkle_far master @a[scores={mg25=1..}] 301 2 12 100 1.7
execute as @e[name="M@K",limit=1,scores={mg25=235}] at @s in sister_dimension run playsound entity.firework_rocket.twinkle_far master @a[scores={mg25=1..}] 301 2 12 100 1.6
execute as @e[name="M@K",limit=1,scores={mg25=333}] at @s in sister_dimension run playsound entity.firework_rocket.twinkle_far master @a[scores={mg25=1..}] 301 2 12 100 1.7
execute as @e[name="M@K",limit=1,scores={mg25=335}] at @s in sister_dimension run playsound entity.firework_rocket.twinkle_far master @a[scores={mg25=1..}] 301 2 12 100 1.6
execute if entity @e[name="M@K",limit=1,scores={mg25=229}] run schedule function c4:mg25/roll 2
execute if entity @e[name="M@K",limit=1,scores={mg25=329}] run schedule function c4:mg25/roll 2

#pawn move
execute if entity @e[name="M@K",limit=1,scores={mg25=355..}] unless entity @a[scores={mg25=2}] unless entity @e[tag=mg25,tag=moved] as @a[tag=RGUplayers,tag=RGUturn,scores={v=1..}] at @s unless score @s s matches 1.. positioned ~ ~1.619 ~ positioned ^-.00095 ^ ^1 run function c4:mg25/ray
execute if entity @e[name="M@K",limit=1,scores={mg25=355..}] unless entity @a[scores={mg25=2}] unless entity @e[tag=mg25,tag=moved] as @a[tag=RGUplayers,tag=RGUturn,scores={s=1,v=1..}] at @s positioned ~ ~1.269 ~ positioned ^-.00095 ^ ^1 run function c4:mg25/ray
execute as @e[tag=mg25,type=shulker] at @s unless block ~1 ~ ~ black_concrete run tag @s remove pass
execute as @e[tag=moved,tag=mg25,type=shulker] at @s if block ~1 ~ ~ black_concrete run tag @s add pass
execute as @e[tag=moved,tag=mg25,tag=pass] at @s unless block ~2 ~ ~ glass run scoreboard players set @p[tag=RGUturn] mg25.1 0
execute as @e[tag=mg25,tag=moved] at @s if entity @p[tag=RGUturn,scores={mg25.1=0..}] run function c4:mg25/pathfind
execute as @e[tag=!moved,tag=mg25,tag=pass] at @s if block ~2 ~ ~ glass run fill ~ ~-1 ~-1 ~ ~1 ~1 air replace #shulker_boxes
execute as @e[tag=!moved,tag=mg25,tag=pass] at @s if block ~2 ~ ~ glass run data merge entity @s {Health:0,DeathTime:19s}
scoreboard players reset @a[scores={mg25=1..}] v
scoreboard players reset @a[scores={mg25=1..}] s

#end
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] unless entity @a[scores={mg25=2}] as @p[scores={mg25=1..,mg25.2=7..},tag=RGUplayers] at @s run function c4:mg25/achieve
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-black,tag=RGUplayers] unless entity @e[team=mg25-black,type=shulker,tag=mg25] if entity @e[team=mg25-white,type=shulker,tag=mg25] run schedule function c4:mg25/achieve 1s replace
execute if entity @e[name="M@K",limit=1,scores={mg25=301..}] if entity @a[team=mg25-white,tag=RGUplayers] unless entity @e[team=mg25-white,type=shulker,tag=mg25] if entity @e[team=mg25-black,type=shulker,tag=mg25] run schedule function c4:mg25/achieve 1s replace
execute if entity @e[name="M@K",limit=1,scores={mg25=0..}] if entity @a[team=mg25-black,tag=RGUplayers] unless entity @a[team=mg25-white,tag=RGUplayers] run function c4:mg25/end
execute if entity @e[name="M@K",limit=1,scores={mg25=0..}] if entity @a[team=mg25-white,tag=RGUplayers] unless entity @a[team=mg25-black,tag=RGUplayers] run function c4:mg25/end