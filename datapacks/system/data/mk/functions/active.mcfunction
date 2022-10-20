#TOOLS
execute as @e[type=bat,tag=pos] at @s run data merge entity @s {Health:0.01f,NoAI:1,HandDropChances:[0.0f,0.0f],Silent:1,ActiveEffects:[{Id:14b,Amplifier:1b,Duration:9999,ShowParticles:0b}],rewardExp:0b}
execute as @e[type=bat,tag=pos,limit=1,sort=random] at @s if entity @e[type=bat,tag=pos,distance=0.2..,tag=!pos2] run tag @s add pos2
execute as @e[type=bat,tag=pos2] at @s run tp @s ~ ~ ~ facing entity @e[type=bat,tag=!pos2,limit=1,tag=pos]
execute as @e[type=bat,tag=pos2] run tag @s remove pos
execute as @e[type=bat,tag=pos2] at @s run function mk:w/e_init
execute at @e[type=bat,tag=pos] run particle cloud ~ ~0.3 ~ 0.1 0.1 0.1 0.001 1
kill @e[type=bat,tag=pos,name=]
execute as @e[type=bat,tag=pos] at @s if entity @e[type=bat,tag=pos,dx=0,dy=0,dz=0,distance=0.1..0.2] run kill @e[tag=ray,distance=..2]
execute as @e[type=bat,tag=pos] at @s if entity @e[type=bat,tag=pos,dx=0,dy=0,dz=0,distance=0.1..0.2] run execute as @e[type=bat,tag=pos2,distance=..2] at @s run data merge entity @s {Health:0,DeathTime:19s}
execute as @e[type=bat,tag=pos] at @s if entity @s[dx=0,dy=0,dz=0] run data merge entity @s {Health:0,DeathTime:19s}
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{kill:1,tool:1b}}},scores={t=1..}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^2 if block ~ ~ ~ air run function mk:w/e_shootloop2
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{fill:1,tool:1b}}},scores={t=1..}] at @s positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ air run function mk:w/e_ray
execute as @a[tag=draw0d,scores={t=1..}] at @s if entity @s[x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run scoreboard players reset @s 6
scoreboard players reset @a[scores={t=1..}] t

#SPAWN
execute as @a[team=,tag=] at @s run tp -113 45 73
execute as @a[team=,tag=] at @s run gamemode adventure
execute as @a[team=,tag=] at @s run spawnpoint @s -113 45 73
effect give @a[team=,tag=0,tag=!mg-1,tag=!m-g] weakness 100000 100 true
effect give @a[team=,tag=0,tag=!m-g] resistance 100000 100 true
effect give @a[team=,tag=0,tag=!m-g] fire_resistance 100000 100 true
effect give @a[team=,tag=0,tag=!m-g] saturation 100000 255 true
effect give @a[team=,tag=0,tag=!m-g] regeneration 100000 255 true
execute as @a at @s unless entity @a[tag=00p] unless entity @s[x=-117,y=44,z=67,dx=8,dy=7,dz=11] unless data entity @s EnderItems[{Slot:13b}] run function mk:exit
fill -174 6 -7 -174 8 -9 iron_bars keep
function library:stage/loop
function default:loop
function classic:loop
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:0b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:1b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:2b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:6b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:7b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:8b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:9b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:10b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:11b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:15b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:16b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:17b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:18b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:19b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:20b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:24b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:25b}] run function mk:lobby/enter
execute as @a[scores={3=1},tag=!m-g] at @s unless data entity @s EnderItems[{Slot:26b}] run function mk:lobby/enter

tag @a remove 00p
execute as @a[limit=1] at @s unless entity @a[tag=00p] unless entity @a[advancements={mk:finish_tutorial=true}] run tag @s add 00p
execute as @a[team=,tag=] at @s run tag @s add 0
execute as @a[tag=00p,scores={6=0..2}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=2..4}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYER","color":"white","bold":true},{"text":" 1","color":"yellow","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=4..6}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYE","color":"white","bold":true},{"text":"R","color":"yellow","bold":true},{"text":" 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=6..8}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAY","color":"white","bold":true},{"text":"E","color":"yellow","bold":true},{"text":"R 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=8..10}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLA","color":"white","bold":true},{"text":"Y","color":"yellow","bold":true},{"text":"ER 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=10..12}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PL","color":"white","bold":true},{"text":"A","color":"yellow","bold":true},{"text":"YER 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=12..14}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"P","color":"white","bold":true},{"text":"L","color":"yellow","bold":true},{"text":"AYER 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=14..16}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"P","color":"yellow","bold":true},{"text":"LAYER 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=16..18}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYER 1","color":"gold","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=18..20}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYER","color":"gold","bold":true},{"text":" 1","color":"yellow","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=20..22}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYE","color":"gold","bold":true},{"text":"R","color":"yellow","bold":true},{"text":" 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=22..24}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAY","color":"gold","bold":true},{"text":"E","color":"yellow","bold":true},{"text":"R 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=24..26}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLA","color":"gold","bold":true},{"text":"Y","color":"yellow","bold":true},{"text":"ER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=26..28}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PL","color":"gold","bold":true},{"text":"A","color":"yellow","bold":true},{"text":"YER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=28..30}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"P","color":"gold","bold":true},{"text":"L","color":"yellow","bold":true},{"text":"AYER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=30..32}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"P","color":"yellow","bold":true},{"text":"LAYER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=32..}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"- ","color":"yellow","bold":true},{"text":"PLAYER 1","color":"white","bold":true},{"text":" -","color":"yellow","bold":true}]
execute as @a[tag=00p,scores={6=140..}] at @s unless entity @a[advancements={mk:finish_tutorial=true}] run scoreboard players set @s 6 0
execute as @a[team=!,tag=00p] at @s unless score @s 6 matches 0.. unless entity @a[advancements={mk:finish_tutorial=true}] run scoreboard players set @s 6 0
execute as @a[team=!] at @s if score @s 6 matches 140.. unless entity @a[advancements={mk:finish_tutorial=true}] run scoreboard players reset @a[team=!] 6

#PANDA
execute as @a[limit=1,team=!,tag=00p] at @s unless entity @e[tag=0p] unless block ~ ~-1 ~ #walls unless block ~ ~-1 ~ air unless entity @e[tag=p0ly] positioned ^ ^ ^1 run summon panda ~ 11 ~ {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Tags:[p0ly,"0"],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute as @e[tag=n,scores={0=..10}] at @s run playsound block.grass.hit master @a ~ ~ ~ 1 0.8
execute as @e[type=panda,tag=p0ly,tag=!y3s,tag=!0,tag=!b0ss] at @s if entity @a[advancements={mk:finish_tutorial=true}] unless block ~ ~0.5 ~ air unless block ~ ~0.5 ~ water unless block ~ ~0.5 ~ grass unless block ~ ~0.5 ~ tall_grass unless block ~ ~0.5 ~ lily_pad unless block ~ ~0.5 ~ #fences unless block ~ ~0.5 ~ #fence_gates unless block ~ ~0.5 ~ #trapdoors unless block ~ ~0.5 ~ #signs unless block ~ ~0.5 ~ #wool_carpets unless block ~ ~0.5 ~ #flowers run tp @s ~ ~1 ~
execute as @e[type=panda,tag=p0ly,tag=!0] at @s unless entity @e[tag=0p,tag=00p] run stopsound @a master music_disc.strad
execute as @e[tag=n,scores={0=..10}] at @s run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a[tag=!N0]
execute as @e[tag=p0ly,tag=0] at @s run scoreboard players add @e[tag=n,dy=1] 0 1
execute as @e[tag=p0ly,tag=0] at @s if score @e[tag=n,limit=1] 0 matches 1.. run weather clear
execute as @e[tag=p0ly,tag=!0] at @s run data merge entity @e[limit=1,tag=n,tag=!nb,dy=2] {CustomName:'',CustomNameVisible:0}
execute as @e[type=panda,tag=p0ly,tag=!0] at @s unless entity @e[tag=0p,tag=00p] unless entity @e[tag=3p,tag=!2p] run tp @s ~ ~-0.4 ~
execute as @e[type=panda,tag=p0ly,tag=0,tag=!6] at @s if entity @e[tag=3p,tag=!02p] run tp @s ~ ~-1000 ~
execute as @e[tag=p0ly,tag=!0,tag=!b0ss] at @s run kill @e[tag=n,limit=1,dy=2]
execute as @e[tag=p0ly,tag=!0,tag=!b0ss] at @s if entity @e[tag=3p,tag=02p] run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a[tag=!N0]
execute as @e[tag=p0ly] at @s if score @e[limit=1,tag=n] 0 matches 24 at @s unless block ~ ~-1 ~ air run playsound entity.player.big_fall master @s ~ ~ ~ 1
#First talk
execute at @e[tag=n,scores={0=50..}] unless entity @e[tag=1p] unless entity @e[tag=3p] run function mk:talk/1
#First Game
execute as @p[team=!,x=-42,y=3,z=-8,distance=..6] at @s if entity @e[tag=0p,tag=!1p] run scoreboard players reset @e[tag=n] 0
execute as @p[team=!,x=-113,y=3,z=-79,distance=..6] at @s if entity @e[tag=0p,tag=!1p] run scoreboard players reset @e[tag=n] 0
execute as @a[team=!,tag=!00p,tag=0,x=-42,y=3,z=-8,distance=..6] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @s actionbar ["",{"text":"Waiting for","color":"yellow","bold":true},{"text":" Player 1","color":"gold","bold":true},{"text":"...","color":"yellow","bold":true}]
execute as @a[team=!,tag=!00p,tag=0,x=-113,y=3,z=-79,distance=..6] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @s actionbar ["",{"text":"Waiting for","color":"yellow","bold":true},{"text":" Player 1","color":"gold","bold":true},{"text":"...","color":"yellow","bold":true}]
execute if entity @p[team=!,x=-42,y=3,z=-8,tag=00p,distance=..6] run tag @e[tag=0p,tag=00p] add 1p
execute if entity @p[team=!,x=-113,y=3,z=-79,tag=00p,distance=..6] run tag @e[tag=0p,tag=00p] add 1p
execute if entity @e[tag=0p,tag=1p,tag=00p] run execute as @e[tag=p0ly] at @s run tp ~ -1000 ~
execute as @p[team=!,tag=00p] at @s if entity @e[tag=0p,tag=1p,tag=00p] positioned ^ ^ ^1 run summon panda ~ 6 ~ {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Tags:[p0ly,y3s,"0"],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute as @e[name="M@K",tag=mode2,tag=1p,tag=0p] at @s if entity @p[team=!] run tag @s add 2p
execute at @e[tag=n,scores={0=5..}] if entity @e[tag=1p] run function mk:talk/2
execute as @e[tag=1p] at @s run tag @s remove 00p
execute if entity @e[tag=3p] run tag @a[team=!] remove 0

#Talking
execute as @e[tag=p0ly,tag=0] at @s if score @e[tag=n,limit=1] 0 matches 65.. if entity @a[tag=00p] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=p0ly,tag=0] at @s unless entity @a[tag=00p] unless entity @e[tag=3p] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=p0ly,tag=0,tag=!b0ss] at @s if score @e[tag=n,limit=1] 0 matches 5 run playsound music_disc.strad master @a ~ ~ ~ 5 0.5
execute as @e[tag=p0ly,tag=0] at @s unless score @e[tag=n,limit=1] 0 matches 690..950 if score @e[tag=n,limit=1] 0 matches 65.. unless entity @e[tag=6p] if entity @e[tag=3p,tag=!2p] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=p0ly,tag=0] at @s if score @e[tag=n,limit=1] 0 matches 90..200 if entity @e[tag=6p,tag=05p] run tp @s ~ ~ ~ facing entity @p
execute as @e[tag=p0ly,tag=0] at @s if score @e[tag=n,limit=1] 0 matches 600..1100 if entity @e[tag=6p,tag=05p] run tp @s ~ ~ ~ facing entity @p

#SPAWN
execute as @a[tag=!1,x=-113,y=12,z=-8,dy=50] at @s if block ~ ~-0.5 ~ air run scoreboard players reset @s 0
execute as @a[tag=1,tag=00p] at @s unless score @s 6 matches 0.. run scoreboard players set @s 6 0
execute as @a[tag=!1,x=-113,y=12,z=-8,dy=50] at @s if block ~ ~-0.5 ~ air run summon armor_stand ~ ~ ~ {Marker:1,Invisible:1b,NoGravity:1b,Tags:[r]}
execute as @e[type=!armor_stand,type=!marker,x=-113,y=12,z=-8,dy=50] at @s if block ~ ~-0.5 ~ air run tag @s add 1
execute as @a[tag=1] at @s if entity @e[tag=mode2,name="M@K"] run advancement grant @s only mk:story
execute as @a[tag=1] at @s run effect give @s weakness 10 100 true
execute as @a[tag=1] at @s run effect give @s saturation 1 255 true
execute as @a[tag=1] at @s run effect give @s regeneration 1 255 true
execute as @a[tag=1] at @s run effect give @s resistance 1 255 true
execute as @a[tag=1,team=Admin] at @s run effect give @s health_boost 100000 1 true
execute as @a[tag=1,team=!Admin] at @s run effect give @s jump_boost 3 145 true
execute as @a[tag=1,team=!Admin] at @s run effect give @s slowness 1 2 true
execute as @a[tag=1] at @s run scoreboard players reset @s 2
execute as @a[tag=1] at @s run scoreboard players reset @s lobby
execute as @a[tag=1] at @s run scoreboard players reset @s rank
execute as @a[tag=1,scores={0=1},tag=!mk.02] at @s run function clear:chat
execute as @a[tag=1] at @s run tag @s remove P0ft_pre
execute as @a[tag=1] at @s run tag @s remove C_
execute as @a[tag=1] at @s run tag @s remove D_
execute as @a[tag=1] at @s run tag @s remove L_
execute as @a[tag=1] at @s if entity @s[y=15,dy=35] run scoreboard players add @s 0 1
execute as @a[tag=!1,tag=!4,tag=!5,tag=!6,tag=!7,tag=!8,scores={0=25..}] at @s run scoreboard players reset @s 0
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=5}] at @s run title @s title [""]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=5..8}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"yellow","bold":true},{"text":"pawn ~","bold":true}]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=8..11}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"gold","bold":true},{"text":"p","color":"yellow","bold":true},{"text":"awn ~","bold":true}]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=11..14}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sp","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"wn ~","bold":true}]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=14..17}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Spa","color":"gold","bold":true},{"text":"w","color":"yellow","bold":true},{"text":"n ~","bold":true}]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=17..20}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Spaw","color":"gold","bold":true},{"text":"n","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute unless entity @a[tag=00p] as @a[tag=1,scores={0=20..23}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Spawn","color":"gold","bold":true},{"text":" ~","bold":true}]
execute unless entity @a[tag=00p] if entity @e[name="M@K",limit=1,tag=!0p,tag=!00p,tag=!01p,tag=!1p,tag=!2p] as @a[tag=1] at @s unless score @s mgc matches -1.. run title @s actionbar ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Loading Minigames...","color":"green","bold":true}]
execute as @a[tag=1,tag=Admin,team=!Admin,team=!Member] at @s run team join Admin @s[tag=!st0red]
execute as @a[tag=1,tag=Member,team=!Admin,team=!Member] at @s run team join Member @s[tag=!st0red]
execute as @a[team=,tag=1,tag=!Admin,tag=!Member] at @s run tag @s add Member
execute unless entity @a[tag=00p] run stopsound @a[tag=1] master
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air if score @s 0 matches 15..24 run title @s title [""]
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Spawn","color":"gold","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove 2
execute as @a[tag=1] at @s run tag @s remove 4
execute as @a[tag=1] at @s run tag @s remove 5
execute as @a[tag=1] at @s run tag @s remove 6
execute as @a[tag=1] at @s run tag @s remove 7
execute as @a[tag=1] at @s run tag @s remove 8
execute as @a[tag=1,scores={1=0..}] at @s unless block ~ ~-1 ~ air run tag @s add .1
execute as @a[tag=1] at @s if entity @a[advancements={mk:finish_tutorial=true}] unless block ~ ~-1 ~ air store result score @e[limit=1,sort=nearest,tag=r,type=armor_stand] 7 run scoreboard players get @s[scores={7=0..}] 7
execute as @a[tag=1] at @s if entity @a[advancements={mk:finish_tutorial=true}] unless block ~ ~-1 ~ air run scoreboard players reset @s[tag=!st0red]
execute as @a[tag=1] at @s if entity @a[advancements={mk:finish_tutorial=true}] unless block ~ ~-1 ~ air store result score @s 7 run scoreboard players get @e[limit=1,sort=nearest,tag=r,type=armor_stand] 7
execute as @a[tag=1] at @s run scoreboard players enable @s lobby
execute as @a[tag=1] at @s run scoreboard players enable @s particle
execute as @a[tag=1] at @s if entity @e[limit=1,name="M@K",scores={m=1..}] run scoreboard players enable @s rank
execute as @a[tag=.1] at @s run scoreboard players set @s 1 110
spawnpoint @a[tag=1] -113 14 -8
gamemode adventure @a[tag=1]
execute in overworld as @a at @s if entity @s[y=1,dy=75] run particle happy_villager ~ ~ ~ 60 60 60 0 70 normal @a[tag=!N0]
execute as @a[tag=1] at @s positioned ^ ^-0.3 ^ run particle dust 3 2 7 2 ~ ~ ~ 0.1 0.1 0.1 1 2 normal @a[tag=!N0]
effect give @e[tag=1] slow_falling 1 1 true
effect give @e[tag=1] resistance 1 100 true
effect give @e[tag=1] fire_resistance 1 100 true
execute as @e[type=armor_stand,tag=r] at @s unless block ~ ~-1 ~ air run kill
execute as @a[tag=1,tag=P0ft] at @s positioned ~ ~-0.3 ~ run particle firework ~ ~ ~ 0.1 0.1 0.1 0.1 1 force @a[tag=P0ft,tag=!N0]
execute as @a[tag=1] at @s if entity @s[x=-113,y=12,z=-8,dy=50] run execute as @e[type=armor_stand,tag=r,sort=nearest,limit=1] at @s positioned ^ ^-1 ^0.5 run particle totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0 5 normal @a[tag=!N0]
execute as @a[tag=1] at @s run tp @e[type=armor_stand,tag=r,sort=nearest,limit=1] ~ ~ ~
execute as @e[type=armor_stand,tag=r] at @s run tp @s ~ ~ ~ ~15 ~
execute as @a[tag=1,x=-113,y=12,z=-8,dy=50] at @s unless block ~ ~-1 ~ air run particle firework ~ ~ ~ 0 0.8 0 0.1 100 normal @a
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run effect give @s speed 10 2 true
execute as @a[tag=1,x=-113,y=12,z=-8,dy=50] at @s unless block ~ ~-1 ~ air run effect give @s speed 10 3 true
execute as @a[limit=1,team=!,tag=1,tag=00p] at @s unless block ~ ~-1 ~ air run effect give @s slowness 2 9 true
execute as @a[tag=1,tag=3dit,scores={d=1..}] at @s run function library:game/clear/mode
execute as @a[tag=3dit,scores={d=1..}] at @s run function mk:exit
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove l0se
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove l3ave
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove 10bby
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove mg0
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove mg0-1
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove mg0-2
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove mg0-3
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove mg0+1
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove m-g
execute as @a[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove .1
execute as @e[tag=1] at @s unless block ~ ~-1 ~ air run tag @s remove 1

#System Entrance
execute if entity @e[limit=1,name="M@K",scores={m=..0}] as @a[team=!,x=-113,y=11,z=9,dy=1] at @s if entity @e[tag=3p] unless score @s 1 matches 0.. run tag @s add 2
execute if entity @e[limit=1,name="M@K",scores={m=1..}] as @a[team=Admin,x=-113,y=11,z=9,dy=1] at @s if entity @e[tag=3p] unless score @s 1 matches 0.. run tag @s add 2
execute as @a[tag=!2] at @s if score @s 1 matches ..0 run scoreboard players reset @s 1
execute as @a[tag=2] at @s if score @s 1 matches 100.. run scoreboard players set @s 1 100
execute as @a[tag=2] at @s run scoreboard players add @s 1 1
execute as @a[tag=2] at @s if score @s 1 matches 3 run function mk:update

execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a at @s if score @s 1 matches 5..100 run particle cloud -113 8.5 24 0.3 0.3 0.3 0 30 normal @a[tag=!N0]
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 5 run fill -112 9 24 -114 10 24 air replace #fences
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 5 run setblock -111 10 24 spruce_fence
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 5 run setblock -115 10 24 spruce_fence
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 5 run clone -113 17 24 -113 8 24 -113 7 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 10 run clone -113 16 24 -113 7 24 -113 6 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 20 run clone -113 15 24 -113 6 24 -113 5 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 30 run clone -113 14 24 -113 5 24 -113 4 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 40 run clone -113 13 24 -113 4 24 -113 3 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 50 run clone -113 12 24 -113 3 24 -113 2 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 60 run clone -113 11 24 -113 2 24 -113 1 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 70 run clone -113 10 24 -113 1 24 -113 0 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 80 run clone -113 9 24 -113 1 24 -113 0 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 90 run clone -113 8 24 -113 1 24 -113 0 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 99 run effect give @s speed 6 3 true
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 100 run fill -112 10 25 -114 11 25 air destroy
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 100 run setblock -113 9 25 air destroy
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=2] at @s if score @s 1 matches 100 run setblock -113 16 24 stone_bricks

execute as @a[tag=!2,scores={1=1..}] at @s run scoreboard players remove @s 1 1
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 100 run setblock -113 16 24 air
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 100 run clone -113 8 24 -113 0 24 -113 1 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 95 run clone -113 9 24 -113 1 24 -113 2 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 90 run clone -113 10 24 -113 2 24 -113 3 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 85 run clone -113 11 24 -113 3 24 -113 4 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 80 run clone -113 12 24 -113 4 24 -113 5 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 75 run clone -113 13 24 -113 5 24 -113 6 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 70 run clone -113 14 24 -113 6 24 -113 7 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 65 run fill -112 9 24 -114 10 24 spruce_fence replace air
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 60 run clone -113 15 24 -113 7 24 -113 8 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 55 run clone -113 16 24 -113 8 24 -113 9 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 50 run clone -113 17 24 -113 9 24 -113 10 24 replace move
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 45 run fill -114 11 25 -112 11 25 spruce_planks
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 40 run fill -114 10 25 -112 10 25 stone_bricks
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 35 run fill -113 16 24 -113 13 24 oak_log
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 30 run setblock -113 12 24 glowstone
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 25 run fill -113 11 24 -113 8 24 oak_log
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 20 run fill -112 15 24 -114 19 24 air replace water
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 15 run setblock -113 17 24 stone_brick_wall
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 10 run setblock -111 10 24 air
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 5 run setblock -115 10 24 air
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 5 run setblock -113 9 25 stone_bricks
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 5 run fill -112 9 24 -114 10 24 spruce_fence replace water
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 5 run setblock -114 10 24 spruce_fence[east=true]
execute unless entity @e[limit=1,name="M@K",scores={m=1..}] as @a[tag=!2] at @s if score @s 1 matches 5 run setblock -112 10 24 spruce_fence[west=true]

#OPTIONS
execute as @a[x=-113,y=34,z=75,distance=..4,tag=!5,tag=4] at @s run scoreboard players reset @s 0
execute as @a[x=-113,y=34,z=75,distance=..4,tag=!5] at @s run tag @s remove 4
execute as @a[x=-113,y=34,z=75,distance=..4,tag=!4] at @s run tag @s add 5
execute as @a[tag=5] at @s unless score @s 0 matches 37.. run scoreboard players add @s 0 1
execute as @a[tag=5,scores={0=10}] at @s run title @s title ""
execute as @a[tag=5,scores={0=10..13}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"L","color":"yellow","bold":true},{"text":"andmark ~","bold":true}]
execute as @a[tag=5,scores={0=13..16}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"L","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"ndmark ~","bold":true}]
execute as @a[tag=5,scores={0=16..19}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"La","color":"gold","bold":true},{"text":"n","color":"yellow","bold":true},{"text":"dmark ~","bold":true}]
execute as @a[tag=5,scores={0=19..22}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Lan","color":"gold","bold":true},{"text":"d","color":"yellow","bold":true},{"text":"mark ~","bold":true}]
execute as @a[tag=5,scores={0=22..25}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Land","color":"gold","bold":true},{"text":"m","color":"yellow","bold":true},{"text":"ark ~","bold":true}]
execute as @a[tag=5,scores={0=25..28}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Landm","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"rk ~","bold":true}]
execute as @a[tag=5,scores={0=28..31}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Landma","color":"gold","bold":true},{"text":"r","color":"yellow","bold":true},{"text":"k ~","bold":true}]
execute as @a[tag=5,scores={0=31..34}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Landmar","color":"gold","bold":true},{"text":"k","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=5,scores={0=34..37}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Landmark","color":"gold","bold":true},{"text":" ~","bold":true}]

#MONUMENTS
execute as @a[tag=6,tag=4] at @s run scoreboard players reset @s 0
execute as @a[tag=6,tag=5] at @s run scoreboard players reset @s 0
execute as @a[tag=6] at @s run tag @s remove 4
execute as @a[tag=6] at @s run tag @s remove 5
execute as @a[tag=6] at @s unless score @s 0 matches 40.. run scoreboard players add @s 0 1
execute as @a[tag=6,scores={0=10}] at @s run title @s title ""
execute as @a[tag=6,scores={0=10..13}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"L","color":"yellow","bold":true},{"text":"abyrinth ~","bold":true}]
execute as @a[tag=6,scores={0=13..16}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"L","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"byrinth ~","bold":true}]
execute as @a[tag=6,scores={0=16..19}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"La","color":"gold","bold":true},{"text":"b","color":"yellow","bold":true},{"text":"yrinth ~","bold":true}]
execute as @a[tag=6,scores={0=19..22}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Lab","color":"gold","bold":true},{"text":"y","color":"yellow","bold":true},{"text":"rinth ~","bold":true}]
execute as @a[tag=6,scores={0=22..25}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Laby","color":"gold","bold":true},{"text":"r","color":"yellow","bold":true},{"text":"inth ~","bold":true}]
execute as @a[tag=6,scores={0=25..28}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Labyr","color":"gold","bold":true},{"text":"i","color":"yellow","bold":true},{"text":"nth ~","bold":true}]
execute as @a[tag=6,scores={0=28..31}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Labyri","color":"gold","bold":true},{"text":"n","color":"yellow","bold":true},{"text":"th ~","bold":true}]
execute as @a[tag=6,scores={0=31..34}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Labyrin","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"h ~","bold":true}]
execute as @a[tag=6,scores={0=34..37}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Labyrint","color":"gold","bold":true},{"text":"h","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=6,scores={0=37..40}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Labyrinth","color":"gold","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=7,tag=4] at @s run scoreboard players reset @s 0
execute as @a[tag=7,tag=5] at @s run scoreboard players reset @s 0
execute as @a[tag=7] at @s run tag @s remove 4
execute as @a[tag=7] at @s run tag @s remove 5
execute as @a[tag=7] at @s unless score @s 0 matches 31.. run scoreboard players add @s 0 1
execute as @a[tag=7,scores={0=10}] at @s run title @s title ""
execute as @a[tag=7,scores={0=10..13}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"T","color":"yellow","bold":true},{"text":"emple ~","bold":true}]
execute as @a[tag=7,scores={0=13..16}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"T","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"mple ~","bold":true}]
execute as @a[tag=7,scores={0=16..19}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Te","color":"gold","bold":true},{"text":"m","color":"yellow","bold":true},{"text":"ple ~","bold":true}]
execute as @a[tag=7,scores={0=19..22}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Tem","color":"gold","bold":true},{"text":"p","color":"yellow","bold":true},{"text":"le ~","bold":true}]
execute as @a[tag=7,scores={0=22..25}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Temp","color":"gold","bold":true},{"text":"l","color":"yellow","bold":true},{"text":"e ~","bold":true}]
execute as @a[tag=7,scores={0=25..28}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Templ","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=7,scores={0=28..31}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Temple","color":"gold","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=8,tag=4] at @s run scoreboard players reset @s 0
execute as @a[tag=8,tag=5] at @s run scoreboard players reset @s 0
execute as @a[tag=8] at @s run tag @s remove 4
execute as @a[tag=8] at @s run tag @s remove 5
execute as @a[tag=8] at @s unless score @s 0 matches 28.. run scoreboard players add @s 0 1
execute as @a[tag=8,scores={0=10}] at @s run title @s title ""
execute as @a[tag=8,scores={0=10..13}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"T","color":"yellow","bold":true},{"text":"ower ~","bold":true}]
execute as @a[tag=8,scores={0=13..16}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"T","color":"gold","bold":true},{"text":"o","color":"yellow","bold":true},{"text":"wer ~","bold":true}]
execute as @a[tag=8,scores={0=16..19}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"To","color":"gold","bold":true},{"text":"w","color":"yellow","bold":true},{"text":"er ~","bold":true}]
execute as @a[tag=8,scores={0=19..22}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Tow","color":"gold","bold":true},{"text":"e","color":"yellow","bold":true},{"text":"r ~","bold":true}]
execute as @a[tag=8,scores={0=22..25}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Towe","color":"gold","bold":true},{"text":"r","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=8,scores={0=25..28}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Tower","color":"gold","bold":true},{"text":" ~","bold":true}]

#OPTIFINE
execute as @r[tag=P0ft_pre,scores={lobby=1..}] at @s run function mk:reset/optifine
execute as @r[tag=P0ft_pre,tag=!st0red] at @s unless entity @s[x=-115,y=39,z=66,dx=3,dy=3,dz=15] run function mk:store
execute as @r[tag=P0ft_pre] at @s unless entity @s[x=-115,y=39,z=66,dx=3,dy=3,dz=15] run tellraw @s ["",{"text":"\n\nM","color":"green","bold":true},{"text":"K","color":"aqua","bold":true},{"text":">","color":"light_purple"},{"text":" This "},{"text":"Optifine Test","color":"yellow","bold":true},{"text":" certifies that you have installed an "},{"text":"OptiFine version","color":"yellow"},{"text":" and that your device supports it."},{"text":"\n Before you begin the Test:","color":"gold"},{"text":" escape to the Game Menu,","bold":true},{"text":"\n Go to:","color":"aqua"},{"text":" Options < Video Settings < Dynamic Lights","color":"yellow","bold":true},{"text":" and ","color":"gold"},{"text":"enable ","color":"green","bold":true},{"text":"it (","color":"gold"},{"text":"to Fast or above","color":"yellow"},{"text":")\n\n","color":"gold"}]
execute as @a[tag=P0ft_pre] at @s unless entity @s[x=-115,y=39,z=66,dx=3,dy=3,dz=15] run give @s torch
execute as @r[tag=P0ft_pre] at @s unless entity @s[x=-115,y=39,z=66,dx=3,dy=3,dz=15] run tp -113 42 81
execute as @a[tag=P0ft_pre,tag=!tst1] at @s if block -113 41 78 stone_button[powered=true] run function mk:lobby/pass
execute as @a[tag=P0ft_pre] at @s if block ~ ~ ~ light_blue_carpet run function mk:reset/optifine
execute as @a[tag=P0ft_pre,scores={lobby=1..}] at @s run function mk:reset/optifine
execute as @a[tag=P0ft_pre,scores={2=1..}] at @s run function mk:reset/optifine

execute if block -116 42 76 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 42 74 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 42 72 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 41 75 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 41 73 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 40 76 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 40 74 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 40 72 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 42 72 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 42 74 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 42 76 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 41 73 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 41 75 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 40 72 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 40 74 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -110 40 76 spruce_button[powered=true] run tag @a[tag=P0ft_pre] add P1
execute if block -116 42 76 #buttons[powered=true] unless block -116 42 76 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 42 74 #buttons[powered=true] unless block -116 42 74 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 42 72 #buttons[powered=true] unless block -116 42 72 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 41 75 #buttons[powered=true] unless block -116 41 75 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 41 73 #buttons[powered=true] unless block -116 41 73 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 76 #buttons[powered=true] unless block -116 40 76 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 74 #buttons[powered=true] unless block -116 40 74 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 72 #buttons[powered=true] unless block -116 40 72 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 42 72 #buttons[powered=true] unless block -110 42 72 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 42 74 #buttons[powered=true] unless block -110 42 74 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 42 76 #buttons[powered=true] unless block -110 42 76 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 41 73 #buttons[powered=true] unless block -110 41 73 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 41 75 #buttons[powered=true] unless block -110 41 75 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 72 #buttons[powered=true] unless block -110 40 72 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 74 #buttons[powered=true] unless block -110 40 74 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass
execute if block -116 40 76 #buttons[powered=true] unless block -110 40 76 spruce_button as @a[tag=P0ft_pre,tag=!tst2] at @s run function mk:lobby/pass

#LIBRARY
execute as @p[team=!,tag=00p,x=-184,y=3,z=-8,distance=..5] at @s if entity @e[tag=0p,tag=!2p] run fill -194 6 -7 -194 7 -9 air destroy
execute as @p[team=!,tag=00p,x=-184,y=3,z=-8,distance=..5] at @s if entity @e[tag=0p,tag=!2p] if block -193 9 -8 stone_brick_stairs run summon falling_block -193 9 -8 {DropItem:0,Time:1,BlockState:{Name:"stone_brick_stairs",Properties:{facing:west}}}
execute as @p[team=!,tag=00p,x=-184,y=3,z=-8,distance=..5] at @s if entity @e[tag=0p,tag=!2p] run setblock -193 9 -8 air
execute as @p[team=!,tag=00p,x=-184,y=3,z=-8,distance=..5] at @s if entity @e[tag=0p,tag=!2p] unless entity @e[name="M@K",tag=mode2] run advancement grant @a only mk:discover_library
execute as @a[team=!,tag=!00p,x=-184,y=3,z=-8,distance=..5] at @s if entity @e[tag=!0p,tag=!2p] unless entity @a[advancements={mk:finish_tutorial=true}] run title @s actionbar ["",{"text":"Waiting for","color":"yellow","bold":true},{"text":" Player 1","color":"gold","bold":true},{"text":"...","color":"yellow","bold":true}]
execute if entity @p[team=!,x=-184,y=3,z=-8,distance=..5] run tag @e[tag=0p] add 2p
tag @e[tag=01p,tag=1p,tag=2p] add 3p
execute if entity @e[tag=0p,tag=3p] run forceload add -233 -142
execute if entity @e[tag=0p,tag=3p] run fill -228 15 -142 -240 30 -142 air replace iron_bars
execute if entity @e[tag=0p,tag=3p] run forceload remove -233 -142
execute if entity @e[tag=0p,tag=3p] run scoreboard players reset @a 6
execute if entity @e[tag=0p,tag=3p] run advancement grant @a only mk:finish_tutorial
execute if entity @a[advancements={mk:finish_tutorial=true}] run gamerule doDaylightCycle true
execute if entity @a[advancements={mk:finish_tutorial=true}] run advancement grant @a only mk:extra
tag @e[tag=3p] remove 0p
tag @e[tag=3p] remove 01p
tag @e[tag=3p] remove 1p
execute as @a[x=-249,y=2,z=-8,distance=..25,tag=!4,tag=5] at @s run scoreboard players reset @s 0
execute as @a[x=-249,y=2,z=-8,distance=..25,tag=!4,tag=5] at @s run tag @s remove 5
execute as @a[x=-249,y=2,z=-8,distance=..25,tag=!5] at @s run tag @s add 4
execute as @a[tag=4] at @s unless score @s 0 matches 40.. run scoreboard players add @s 0 1
execute as @a[tag=4,scores={0=10}] at @s run title @s title ""
execute as @a[tag=4,scores={0=10..13}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"yellow","bold":true},{"text":"anctuary ~","bold":true}]
execute as @a[tag=4,scores={0=13..16}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"nctuary ~","bold":true}]
execute as @a[tag=4,scores={0=16..19}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sa","color":"gold","bold":true},{"text":"n","color":"yellow","bold":true},{"text":"ctuary ~","bold":true}]
execute as @a[tag=4,scores={0=19..22}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"San","color":"gold","bold":true},{"text":"c","color":"yellow","bold":true},{"text":"tuary ~","bold":true}]
execute as @a[tag=4,scores={0=22..25}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanc","color":"gold","bold":true},{"text":"t","color":"yellow","bold":true},{"text":"uary ~","bold":true}]
execute as @a[tag=4,scores={0=25..28}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanct","color":"gold","bold":true},{"text":"u","color":"yellow","bold":true},{"text":"ary ~","bold":true}]
execute as @a[tag=4,scores={0=28..31}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanctu","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"ry ~","bold":true}]
execute as @a[tag=4,scores={0=31..34}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanctua","color":"gold","bold":true},{"text":"r","color":"yellow","bold":true},{"text":"y ~","bold":true}]
execute as @a[tag=4,scores={0=34..37}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanctuar","color":"gold","bold":true},{"text":"y","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @a[tag=4,scores={0=37..40}] at @s run title @s subtitle ["",{"text":"~ ","bold":true},{"text":"Sanctuary","color":"gold","bold":true},{"text":" ~","bold":true}]

#Talk
execute as @p[team=!,x=-184,y=4,z=-8,distance=..5] at @s if entity @e[tag=3p,tag=2p] run forceload add -184 -8
execute as @p[team=!,x=-184,y=4,z=-8,distance=..5] at @s run tag @e[tag=3p,tag=2p] add 02p
execute if entity @e[tag=3p,tag=2p,tag=02p] as @e[tag=p0ly] at @s run tp ~ -1000 ~
execute if entity @e[tag=3p,tag=2p,tag=02p] run summon panda -184 4 -8 {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Tags:[p0ly,y3s,"0"],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
tag @e[tag=3p,tag=02p] remove 2p
execute at @e[tag=n,scores={0=50..}] if entity @e[tag=02p,tag=!04p,tag=!06p,tag=!6p] run function mk:talk/3
execute if entity @e[tag=3p,tag=03p] run forceload remove -184 -8
tag @e[tag=3p,tag=03p] remove 02p
tag @e[tag=3p,tag=03p] remove 03p
#Talk 2
execute as @p[team=!,x=-297,y=1,z=15,distance=..4] at @s run tag @e[tag=5p,tag=!05p,tag=!04p,tag=!6p] add 04p
execute if entity @e[tag=!05p,tag=04p] as @e[tag=p0ly] at @s run tp ~ -1000 ~
execute if entity @e[tag=!05p,tag=04p] run kill @e[tag=n]
execute as @r[team=!,x=-297,y=1,z=15,distance=..4] at @s if entity @e[tag=!05p,tag=04p] positioned ^ ^ ^-2 run summon panda ~ 0 ~ {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Rotation:[-90f],Tags:[p0ly,"0","6"],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute if entity @e[tag=!05p,tag=04p] as @e[tag=p0ly] at @s run playsound music_disc.strad master @a ~ ~ ~ 5 0.5
tag @e[tag=04p] add 05p
execute if entity @e[tag=n,scores={0=30..}] if entity @e[tag=04p] run function mk:talk/4
execute if entity @a[advancements={mk:unlock_all=true}] run tag @e[limit=1,name="M@K"] add 5p
execute if entity @a[advancements={mk:unlock_all=false}] run tag @e[limit=1,name="M@K"] remove 5p
#Talk 3
execute if entity @e[tag=5p,tag=04p,tag=4p] as @e[tag=p0ly] at @s run tp ~ -1000 ~
execute if entity @e[tag=5p,tag=04p,tag=4p] run summon panda -298 0 15 {Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Rotation:[-90f],Tags:[p0ly,"0","6"],Invulnerable:1b,Motion:[0d,0.8d,0d],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
tag @e[tag=5p,tag=04p,tag=4p] add 6p
tag @e[tag=6p] remove 04p
execute at @e[tag=n,scores={0=30..}] if entity @e[tag=6p] unless entity @a[tag=mg-1] unless entity @a[tag=XPwinner] if entity @e[tag=6,tag=p0ly] run function mk:talk/5

#Xopoly
kill @e[type=area_effect_cloud,x=-346,y=228,z=85,dx=26,dy=332,dz=26]
bossbar set mg-1 players @a[tag=XPplayers]
execute store result bossbar mg-1 value run scoreboard players get @p[tag=XPplayers] mg-1
execute as @e[tag=mg-1bc] at @s unless entity @s[x=-346,y=228,z=85,dx=26,dy=32,dz=26] run kill @s
execute as @a[tag=mg-1] at @s unless entity @s[x=-346,y=228,z=85,dx=26,dy=332,dz=26] run function library:stage/reset/player
execute as @a[tag=!mg-1,tag=XPwinner] at @s if entity @s[x=-346,y=222,z=85,dx=26,dy=5,dz=26] run function library:stage/reset/player
execute unless entity @a[tag=mg-1,x=-346,y=228,z=85,dx=26,dy=332,dz=26] run function library:stage/reset
execute as @a[tag=m-g,x=-390,y=210,z=59,dx=123,dy=4,dz=82] at @s run function mk:exit
execute if entity @a[tag=mg-1,scores={mg-1=5..}] as @e[tag=p0ly,tag=b0ss] at @s unless block ~ ~-1 ~ chiseled_stone_bricks run execute as @e[tag=!b0ss,tag=!p0ly,type=!shulker,type=!armor_stand,type=!player,tag=!mg-1b,tag=!mg-1bt,tag=!mg-1bc,distance=..4] at @s run tag @s add mg-1bp
execute as @e[tag=mg-1bp] at @s run data merge entity @s {Motion:[0d,0d,0d]}
execute as @e[tag=mg-1bp] at @s run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 15 force
execute as @e[tag=mg-1bp] at @s run particle portal ~ ~ ~ 0.05 0.2 0.05 0.1 15 force @a[tag=P0ft]
scoreboard players add @e[tag=mg-1bp] mg-1 1
execute as @e[tag=mg-1bp,scores={mg-1=40..}] at @s run data merge entity @s {Motion:[0d,-0.7d]}
execute as @e[tag=mg-1bp,scores={mg-1=40..},nbt={inGround:1b}] at @s run tag @s remove mg-1bp
execute as @e[tag=mg-1bp,scores={mg-1=40..}] at @s unless block ~ ~-0.5 ~ air run tag @s remove mg-1bp
execute as @r[tag=mg-1,scores={mg-1=10..}] at @s run tag @a[tag=XPplayers] add XPwinner
execute at @a[tag=XPwinner,tag=XPplayers] run advancement grant @a[tag=XPplayers] only mk:final_battle
spawnpoint @a[tag=mg-1,tag=XPwinner,scores={mg-1=10..}] -333 231 98

scoreboard players add @e[limit=1,name="M@K",scores={6=0..}] 6 1
execute at @a[tag=XPplayers] run scoreboard players add @e[limit=1,name="M@K"] mg-1 1
execute if score @e[limit=1,name="M@K",tag=!mg-1,tag=!mg-1s] 6 matches 856 as @a[tag=mg-1] at @s run playsound music_disc.pigstep master @s ~ ~ ~ 100000 1.9
execute if score @e[limit=1,name="M@K",tag=mg-1] 6 matches 1 run stopsound @a[tag=mg-1] master music_disc.pigstep
execute if score @e[limit=1,name="M@K",tag=mg-1] 6 matches 1 as @a[tag=mg-1] at @s run playsound music_disc.pigstep master @s ~ ~ ~ 100000 1.9
execute if score @e[limit=1,name="M@K",tag=mg-1s] 6 matches 10 as @a[tag=mg-1,scores={mg-1=..4}] at @s run playsound music_disc.pigstep master @s ~ ~ ~ 100000 1.9
execute if score @e[limit=1,name="M@K",tag=mg-1s] 6 matches 10 as @a[tag=mg-1,scores={mg-1=5..}] at @s run playsound music_disc.pigstep master @s ~ ~ ~ 100000 2
execute if entity @a[tag=mg-1] as @e[tag=p0ly,tag=6] at @s if score @e[limit=1,name="M@K",tag=!mg-1s] 6 matches 856 run data merge entity @s {Motion:[1.6d,0.6d]}
execute unless entity @a[tag=mg-1,tag=XPplayers] if score @e[limit=1,name="M@K",tag=!mg-1s] 6 matches 870.. run tag @a[tag=mg-1] add XPplayers
execute unless entity @a[tag=mg-1,tag=XPplayers] if score @e[limit=1,name="M@K",tag=mg-1s] 6 matches 70.. run tag @a[tag=mg-1] add XPplayers
execute if entity @e[limit=1,name="M@K",scores={6=1420..}] unless score @p[tag=mg-1] mg-1 matches 5.. run stopsound @a[tag=XPplayers] master music_disc.pigtep
execute if entity @e[limit=1,name="M@K",scores={6=1120..}] if entity @a[scores={mg-1=5..},tag=XPplayers] run stopsound @a[tag=XPplayers] master music_disc.pigtep
scoreboard players set @e[limit=1,name="M@K",scores={6=1420..}] 6 0
execute if entity @e[limit=1,name="M@K",tag=!mg-1,tag=!mg-1s] run scoreboard players reset @e[limit=1,name="M@K",scores={mg-1=280..}] mg-1
execute if entity @e[limit=1,name="M@K",tag=mg-1] run scoreboard players reset @e[limit=1,name="M@K",scores={mg-1=100..}] mg-1
execute if entity @e[limit=1,name="M@K",tag=mg-1s] run scoreboard players reset @e[limit=1,name="M@K",scores={mg-1=520..}] mg-1

#stage1
execute at @e[limit=1,name="M@K",scores={mg-1=15},tag=mg-1] unless entity @e[tag=b0ss,tag=p0ly] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",scores={mg-1=30},tag=mg-1] run function library:stage/shoot
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",scores={mg-1=45..95},tag=mg-1] run tp ~ ~-0.4 ~
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",scores={mg-1=45..95},tag=mg-1] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",scores={6=95..},tag=mg-1s] run data merge entity @s {Invulnerable:0b}
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] run effect give @s jump_boost 1 255 true

#stage2
execute unless entity @e[tag=p0ly,tag=b0ss,tag=6] if entity @e[name="M@K",limit=1,tag=mg-1s] run scoreboard players set @e[limit=1,name="M@K"] mg-1 0
execute unless entity @e[tag=p0ly,tag=b0ss,tag=6] if entity @e[name="M@K",limit=1,tag=mg-1s] run tag @e remove mg-1re
execute unless entity @e[tag=p0ly,tag=b0ss,tag=6] if entity @e[name="M@K",limit=1,tag=mg-1s] run kill @e[tag=n]
execute unless entity @e[tag=p0ly,tag=b0ss,tag=6] if entity @e[name="M@K",limit=1,tag=mg-1s] run summon panda -343 237 98 {AbsorptionAmount:3000.0f,Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Rotation:[-90f],Tags:[p0ly,"0","6",mg-1,b0ss],Invulnerable:1b,Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute as @e[tag=p0ly,tag=b0ss,tag=6,tag=!mg-1] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] run tp ~ ~-0.4 ~
execute as @e[limit=1,name="M@K",scores={mg-1=1},tag=mg-1s] at @s run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=10},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.1d,0.8d,1.5d]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=35..39},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=45},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.9d,0.5d,0.2d],Rotation:[-90f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=75},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=80},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.6d,0.7d,-0.2d]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=95..100},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=105},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.7d,0.5d,0.2d],Rotation:[-45f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=125},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=136},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.9d,0.8d,-0.1d],Rotation:[-115f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=158..163},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=171},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.2d,0.6d,-0.9d],Rotation:[195f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=200},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=202},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.1d,0.8d,-0.5d],Rotation:[180f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=212..214},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=215},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[0.1d,0.5d,-0.6d],Rotation:[195f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=240},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=248},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.2d,0.7d,-0.9d],Rotation:[165f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=278..283},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=285},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.9d,0.4d,-0.1d],Rotation:[105f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=298},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=308},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.8d,0.6d,0.15d],Rotation:[80f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=340..345},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=345},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.75d,0.5d,-0.1d],Rotation:[95f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=376},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=381},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.75d,0.7d,0.1d],Rotation:[85f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=415..420},tag=mg-1s,tag=!mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=422},tag=mg-1s,tag=!mg-1re] run data merge entity @s {Motion:[-0.3d,0.9d,1.3d],Rotation:[0f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=459},tag=mg-1s,tag=!mg-1re] run tp @s -343 237 98
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=10},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.1d,0.8d,-1.5d]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=35..39},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=45},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.9d,0.5d,-0.2d],Rotation:[-90f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=75},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=80},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.6d,0.7d,0.2d]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=95..100},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=105},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.7d,0.5d,-0.2d],Rotation:[-45f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=125},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=136},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.9d,0.8d,0.1d],Rotation:[-115f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=158..163},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=171},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.2d,0.6d,0.9d],Rotation:[325f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=200},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=202},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.1d,0.8d,0.5d],Rotation:[0f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=212..214},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=215},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[0.1d,0.5d,0.6d],Rotation:[15f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=240},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=248},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.2d,0.7d,0.9d],Rotation:[-15f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=278..283},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=285},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.9d,0.4d,0.1d],Rotation:[-230f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=298},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=308},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.8d,0.6d,-0.15d],Rotation:[-230f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=340..345},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=345},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.75d,0.5d,0.1d],Rotation:[95f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=376},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=381},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.75d,0.7d,-0.1d],Rotation:[-230f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=415..420},tag=mg-1s,tag=mg-1re] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=422},tag=mg-1s,tag=mg-1re] run data merge entity @s {Motion:[-0.3d,0.9d,-1.3d],Rotation:[180f]}
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=459},tag=mg-1s,tag=mg-1re] run tp @s -343 237 98
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=459},tag=mg-1s,tag=mg-1re] run tag @e remove mg-1re
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s unless block ~ ~-0.5 ~ air unless block ~ ~-0.5 ~ stone_brick_wall unless block ~ ~-0.5 ~ chiseled_stone_bricks if entity @e[limit=1,name="M@K",tag=mg-1s,scores={mg-1=50..133}] run function library:stage/do
execute as @e[tag=b0ss,tag=p0ly,tag=mg-1,tag=!st0p] at @s if entity @e[limit=1,name="M@K",scores={mg-1=400..},tag=mg-1s] if block ~ ~-0.5 ~ chiseled_stone_bricks run function library:stage/do

#mechanics
execute as @a[tag=mg-1,nbt={HurtTime:10s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:9s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:8s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:7s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:6s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:5s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:4s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:3s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:2s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,nbt={HurtTime:1s}] at @s store result score @s mg-1.x run effect clear @s levitation
execute as @a[tag=mg-1,scores={mg-1.x=1}] at @s run tag @s add mg-1x
execute as @a[tag=mg-1x] at @s run particle end_rod ~ ~ ~ 0.2 0.2 0.2 0.1 15 force
execute as @e[type=creeper,tag=mg-1c] at @s positioned as @p[tag=mg-1x] run tp @s ~ ~1.5 ~
execute as @a[tag=mg-1x] at @s unless entity @e[tag=mg-1c,distance=..2] run tag @s remove mg-1x
execute as @a[tag=mg-1] at @s if entity @s[y=300,dy=1000] run effect clear @s levitation
effect clear @e[tag=b0ss,tag=p0ly,tag=6] levitation
attribute @e[tag=b0ss,tag=p0ly,limit=1] generic.movement_speed base set 0
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] unless block ~ ~-0.6 ~ air run particle block dirt ~ ~ ~ 0.2 0.2 0.2 0 10 normal @a[tag=!N0]
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] run effect give @e[tag=!b0ss,type=!armor_stand,type=!slime,type=!shulker_bullet,distance=..1.5]
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[tag=XPplayers,distance=..1.5] run playsound entity.panda.bite master @a ~ ~ ~ 1
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[tag=XPplayers,distance=..1.5] run summon slime ~ ~-50 ~ {Tags:[mg-1bt],Invulnerable:1,Health:1,NoAI:1,Size:8,Silent:1,DeathLootTable:""}
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[tag=XPplayers,distance=..1.5] positioned ~ ~1 ~ run tp @e[tag=mg-1bt] @s
effect give @e[tag=mg-1bt] invisibility 1 1 true
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] run effect give @e[tag=!b0ss,type=!armor_stand,type=!slime,type=!shulker_bullet,distance=..2] levitation 1 90 true
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[tag=XPplayers,tag=mg-1,distance=..2] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] if entity @a[tag=XPplayers,distance=..2] run playsound entity.panda.bite master @a ~ ~ ~ 1
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] if entity @a[tag=XPplayers,distance=..2] run summon slime ~ ~-50 ~ {Tags:[mg-1bt],Invulnerable:1,Health:1,NoAI:1,Size:8,Silent:1,DeathLootTable:""}
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] if entity @a[tag=XPplayers,distance=..2] run tp @e[tag=mg-1bt] @s
execute as @e[tag=b0ss,tag=p0ly,nbt={HurtTime:10s},tag=!st0p] at @s if entity @e[limit=1,name="M@K",tag=mg-1s] run tp @s ^ ^ ^3 facing entity @p[tag=XPplayers]
execute as @e[tag=mg-1bt] at @s run scoreboard players add @e[tag=mg-1bt] mg-1 1
execute if score @e[tag=mg-1bt,limit=1] mg-1 matches 60.. run tp @e[tag=mg-1bt] ~ -1000 ~
execute as @e[tag=b0ss,tag=p0ly,tag=6] at @s unless entity @a[scores={mg-1=5..},tag=XPplayers] unless entity @s[nbt={HurtTime:0s}] if entity @a[tag=XPplayers,scores={mg9.3=0..},distance=..6] run summon firework_rocket ~ ~ ~ {LifeTime:6s}
execute as @e[tag=p0ly,tag=b0ss,tag=6,nbt={HurtTime:10s}] at @s unless entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[scores={mg-1=1..},tag=XPplayers] if entity @a[tag=XPplayers,scores={mg9.3=0..},distance=..6] run summon firework_rocket ~ ~ ~ {LifeTime:6s}
tag @a remove mg-1bt
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @e[limit=1,name="M@K",tag=!mg-1,tag=!mg-1s] run tp @s ~ ~ ~ facing entity @p[tag=mg-1]
execute as @e[tag=p0ly,tag=b0ss,tag=6] at @s unless entity @a[scores={mg-1=5..},tag=XPplayers] unless entity @s[nbt={HurtTime:0s}] if entity @a[tag=XPplayers,scores={mg9.3=0..},distance=..6] run function library:stage/change
execute as @e[tag=p0ly,tag=b0ss,tag=6,nbt={HurtTime:10s}] at @s unless entity @e[limit=1,name="M@K",tag=mg-1] if entity @a[scores={mg-1=1..},tag=XPplayers] if entity @a[tag=XPplayers,scores={mg9.3=0..},distance=..6] run function library:stage/change
execute store result score @e[limit=1,name="M@K"] mg-1.y if entity @e[tag=p0ly,tag=b0ss]
execute if score @e[name="M@K",limit=1] mg-1.y matches 2.. as @e[tag=p0ly,tag=b0ss] at @s run tp @s ~ -1 ~
execute as @e[tag=b0ss,tag=p0ly,nbt={HurtTime:0s}] at @s if entity @s[y=226,dy=-4] run tp @s ~ -1 ~
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @s[y=-1,dy=-2000] run scoreboard players set @e[name="M@K",limit=1] mg-1 0
execute as @e[tag=b0ss,tag=p0ly] at @s if entity @s[y=-1,dy=-2000] run data merge entity @s {Health:0,DeathTime:19s}
scoreboard players reset @a[tag=XPplayers,scores={mg9.3=0..}] mg9.3
scoreboard players reset @a[scores={mg-1.x=0..}] mg-1.x

#talk
execute as @a[limit=1,tag=mg-1,tag=!XPplayers] at @s if score @e[limit=1,name="M@K",tag=!mg-1s] 6 matches 10 run tp @e[type=panda,tag=p0ly] ~ -1000 ~
execute as @a[limit=1,tag=mg-1,tag=!XPplayers] at @s if score @e[limit=1,name="M@K"] 6 matches 10 run kill @e[tag=n]
execute as @a[limit=1,tag=mg-1,tag=!XPplayers] at @s if score @e[limit=1,name="M@K"] 6 matches 10 run summon panda -343 237 98 {AbsorptionAmount:3000.0f,Team:mg-1,Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n]}],Rotation:[-90f],Tags:[p0ly,"0","6",mg-1,b0ss],Invulnerable:1b,Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute if score @e[name="M@K",limit=1] 6 matches 0..5 run particle end_rod ~ ~-1 ~ 0.2 0.5 0.2 0.5 800 normal @a
execute at @e[tag=n,scores={0=20..}] if entity @a[tag=mg-1] if entity @e[limit=1,name="M@K",tag=!mg-1s,tag=!7p] run function mk:talk/6

#mid-talk
execute as @e[tag=n] at @s if entity @e[tag=p0ly,tag=b0ss,tag=6,tag=0] run function mk:talk/6-7
execute as @e[tag=p0ly,tag=b0ss,tag=6] at @s if entity @e[limit=1,name="M@K",scores={6=114..},tag=mg-1s] run tag @s remove 0
execute as @r[team=!,tag=mg-1,tag=XPwinner] at @s if score @e[limit=1,name="M@K",tag=!mg-1s] 6 matches 10 run tp @e[type=panda,tag=p0ly] ~ -1000 ~
execute as @r[team=!,tag=XPwinner,tag=mg-1] at @s run kill @e[tag=n]
execute as @r[team=!,tag=XPwinner,tag=mg-1] at @s run summon panda -339 230 98 {AbsorptionAmount:3000.0f,Passengers:[{id:armor_stand,Count:1,Invisible:1,Small:1,Tags:[n,nb]}],Rotation:[-90f],Tags:[p0ly,"0","6"],HandItems:[{id:bamboo,Count:1,tag:{0:1}}],Invulnerable:1b,Attributes:[{Base:0d,Name:generic.movement_speed}],DeathLootTable:""}
execute as @r[team=!,tag=XPwinner,tag=mg-1] at @s run stopsound @s master music_disc.pigstep
tag @a[tag=XPwinner] remove mg-1

#final talk
execute at @e[tag=n,scores={0=0..5}] unless entity @a[tag=mg-1] if entity @a[tag=XPwinner] run tag @e[tag=3p] add 7p
execute at @e[tag=n,scores={0=0..}] unless entity @a[tag=mg-1] if entity @e[tag=7p] run function mk:talk/7

#MODES
execute if block -109 46 72 air run setblock -108 46 72 lime_concrete
execute if block -109 46 72 air run setblock -109 46 72 spruce_wall_sign[facing=west]{Text4:'{"italic":true,"color":"aqua","text":"Right-Click","clickEvent":{"action":"run_command","value":"function mk:reset/mode"}}',Text3:'{"bold":true,"color":"yellow","text":"Story"}',Text2:'{"bold":true,"color":"gold","text":"- Mode -","clickEvent":{"action":"run_command","value":"setblock -108 46 72 light_blue_concrete"}}',Text1:'{"text":"","clickEvent":{"action":"run_command","value":"playsound ui.button.click master @s ~ ~ ~ 1 1"}}'}
execute if entity @e[limit=1,name="M@K",scores={m=..0}] run team modify Member prefix ""
execute if entity @e[limit=1,name="M@K",scores={m=..0}] run team modify Admin prefix ""
execute if entity @e[limit=1,name="M@K",scores={m=..0}] run team modify Member1 prefix ""
execute if entity @e[limit=1,name="M@K",scores={m=..0}] run team modify Admin1 prefix ""
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run team modify Member prefix ["",{"text":"[","color":"light_purple","bold":true},{"text":"Member","color":"green"},{"text":"] ","color":"light_purple","bold":true}]
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run team modify Admin prefix ["",{"text":"[","color":"light_purple","bold":true},{"text":"Admin","color":"red"},{"text":"] ","color":"light_purple","bold":true}]
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run team modify Member1 prefix ["",{"text":"[","color":"light_purple","bold":true},{"text":"Member","color":"green"},{"text":"] ","color":"light_purple","bold":true}]
execute if entity @e[limit=1,name="M@K",scores={m=1..}] run team modify Admin1 prefix ["",{"text":"[","color":"light_purple","bold":true},{"text":"Admin","color":"red"},{"text":"] ","color":"light_purple","bold":true}]

#TRIGGERS
execute as @a[scores={lobby=1..}] at @s run gamemode adventure @s
execute as @a[scores={lobby=1..}] at @s run function clear:chat
execute as @a[scores={lobby=1..},tag=!3dit] at @s if data entity @s EnderItems[{Slot:13b,tag:{gui:1}}] run tag @s remove T0
execute as @a[scores={lobby=1..},tag=m-g,tag=!3dit] at @s if data entity @s EnderItems[{Slot:13b,tag:{gui:1}}] run advancement grant @s only mk:use_trigger
execute as @a[scores={lobby=1..},tag=!3dit] at @s if data entity @s EnderItems[{Slot:13b,tag:{gui:1}}] run advancement grant @s only mk:extra
execute as @a[scores={2=1..}] at @s in overworld unless entity @s[tag=!m-g,team=] run tp @s -113 62 -8
execute as @a[scores={2=1..}] at @s in overworld unless entity @s[tag=!m-g,team=] run tag @s remove 10bby

execute as @a[scores={2=1..},tag=st0red] at @s run tellraw @s ["",{"text":"\n[","color":"yellow","bold":true},{"text":"@","color":"aqua","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":" You weren't reset from the previous game...","color":"red"},{"text":" \n[Click here to Reset/Re-join]\n","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}}]
execute as @a[scores={2=1..},tag=st0red] at @s run scoreboard players enable @s interact
execute as @a[scores={2=1..},tag=st0red] at @s run tag @s add mk.02
execute as @a[tag=mk.02,scores={interact=1..}] at @s run function mk:rejoin
execute as @a[scores={lobby=1..},tag=!m-g,tag=!3dit] at @s unless score @s mgc matches 0.. in overworld run tp @s -113 12.5 -8
execute as @a[tag=!m-g,tag=st0red,x=-300,y=14,z=62,dx=2,dy=2,dz=2] at @s unless score @s 2 matches 1.. unless score @s mgc matches -1.. run trigger interact
execute as @a[tag=m-g,nbt=!{SpawnForced:1b}] at @s run function mk:exit
execute as @a[scores={lobby=1..},tag=10bby,tag=!m-g] at @s run function mk:exit
execute as @a[scores={lobby=1..},tag=m-g] at @s unless score @s mgc matches 0.. run function mk:exit
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg0
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg0-1
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg0-2
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg0-3
execute as @a[scores={lobby=1..}] at @s run tag @s remove mg0+1

#P0ft Tag = for players who Passed OptiFine Test (new perks)
execute as @a[scores={lobby=1..},tag=P0ft] at @s run particle cloud ~ ~ ~ 1 2 1 0.1 10 force @a[tag=P0ft,tag=!N0]
execute as @a[scores={particle=1..}] at @s run function mk:lobby/particles

#RANKS
tag @a[team=Admin,tag=!3] add Admin
tag @a[team=Member,tag=!3] add Member
team join Admin @a[team=,tag=Admin,tag=!Member,tag=!3,tag=!m-g]
team join Member @a[team=,tag=Member,tag=!Admin,tag=!3,tag=!m-g]
execute as @a[team=Admin,tag=Member] at @s if entity @s[scores={rank=0}] run title @s actionbar ["",{"text":"You are now a Member! Use "},{"text":"/trigger rank","color":"yellow"},{"text":" to update"}]
execute as @a[team=Member,tag=Admin] at @s if entity @s[scores={rank=0}] run title @s actionbar ["",{"text":"You are recognised as an Admin! Use "},{"text":"/trigger rank","color":"yellow"},{"text":" to update"}]
execute as @a[scores={rank=1..}] at @s run tag @s[team=Member,tag=Admin] add 3
execute as @a[team=Admin,tag=Admin,tag=!3] at @s if entity @a[scores={rank=1..},team=Member,tag=Admin,tag=3] run advancement grant @s only mk:give_rank
execute as @a[team=Admin,tag=Admin,tag=!3] at @s if entity @a[scores={rank=1..},team=Member,tag=Admin,tag=3] run advancement grant @s only mk:extra
execute as @a[scores={rank=1..},team=Member,tag=Admin,tag=3] at @s run team join Admin @s
execute as @a[scores={rank=1..},team=Admin,tag=Admin,tag=3] at @s run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully upgraded to","color":"green"},{"text":" Rank: ","color":"yellow"},{"text":"[Admin]","color":"dark_aqua"}]
execute as @a[scores={rank=1..},team=Admin,tag=Admin,tag=3] at @s run tag @s remove Member
execute as @a[scores={rank=1..}] at @s run tag @s[team=Admin,tag=Member] add 3
execute as @a[scores={rank=1..},team=Admin,tag=Member,tag=3] at @s run team join Member @s
execute as @a[scores={rank=1..},team=Member,tag=Member,tag=Admin,tag=3] at @s run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Successfully downgraded to","color":"green"},{"text":" Rank: ","color":"yellow"},{"text":"[Member]","color":"gold"}]
execute as @a[scores={rank=1..},team=Member,tag=Member,tag=3] at @s run tag @s remove Admin
scoreboard players set @a[scores={rank=1..}] rank 0
tag @a remove 3

#MENU
#Classic
execute as @e[tag=C0,tag=s] at @s if entity @e[tag=c0,tag=f] run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=C0,tag=s,tag=!t] at @s unless entity @e[tag=c0,tag=f] store result entity @s Pose.Head[0] float 0.5 run scoreboard players get @s 4
execute as @e[tag=C0,tag=t,scores={4=40..}] at @s store result entity @s Pose.Head[0] float 0.5 run scoreboard players get @s 4
execute as @e[tag=C0,tag=s] at @s unless entity @e[tag=c0,tag=f] store result entity @s Pose.Head[1] float 0.5 run scoreboard players get @s 4
execute as @e[tag=C0,tag=s] at @s unless entity @e[tag=c0,tag=f] store result entity @s Pose.Head[2] float 0.5 run scoreboard players get @s 4
execute as @e[tag=C0,x=-29,y=9,z=-8,dy=3] at @s run tag @s add s
tag @e[tag=C0,scores={4=90..}] add t
#left
execute as @e[tag=c0_] at @s if entity @e[tag=c0,tag=left] run tp @e[tag=C0,limit=1,distance=..1.5] -28 8.5 -8
execute as @e[tag=c0,tag=left] at @s run tp @e[tag=C0,distance=..1.5,limit=1] -28 8.5 -7
execute as @e[tag=c0,tag=left] at @s run tp @e[tag=C0,x=-28,y=9,z=-9,dy=1,limit=1] ~ 8.5 ~
execute as @e[limit=1,sort=random,tag=C0,x=-28,y=9,z=-8,dy=1] at @s if entity @e[tag=c0,tag=left] run tp @s -28 8.5 -9
execute as @e[tag=c0,tag=left] at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2
#right
execute as @e[tag=_c0] at @s if entity @e[tag=c0,tag=right] run tp @e[tag=C0,limit=1,distance=..1.5] -28 8.5 -8
execute as @e[tag=c0,tag=right] at @s run tp @e[tag=C0,distance=..1.5,limit=1] -28 8.5 -9
execute as @e[tag=c0,tag=right] at @s run tp @e[tag=C0,x=-28,y=9,z=-7,dy=1,limit=1] ~ 8.5 ~
execute as @e[limit=1,sort=random,tag=C0,x=-28,y=9,z=-8,dy=1] at @s if entity @e[tag=c0,tag=right] run tp @s -28 8.5 -7
execute as @e[tag=c0,tag=right] at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2
execute if entity @e[limit=1,tag=c0,tag=!f] run scoreboard players add @e[tag=C0,tag=s,tag=!t,scores={4=0..}] 4 1
scoreboard players remove @e[tag=C0,tag=t,scores={4=0..}] 4 1
scoreboard players set @e[tag=C0,tag=!s,tag=C0] 4 0
scoreboard players reset @e[tag=C0,scores={4=..-1}] 4
execute as @e[tag=C0,tag=s,tag=!t,scores={4=5..17}] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=C0,tag=s,tag=!t,scores={4=18..25}] at @s run tp @s ~ ~ ~ ~13 ~
execute as @e[tag=C0,tag=s,tag=!t,scores={4=26..30}] at @s run tp @s ~ ~ ~ ~12 ~
execute as @e[tag=C0,tag=s,tag=!t,scores={4=30..35}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=C0,tag=s,tag=!t,scores={4=36..45}] at @s run tp @s ~ ~ ~ ~9 ~
execute as @e[tag=C0,tag=s,scores={4=46..52}] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=C0,tag=s,scores={4=53..61}] at @s run tp @s ~ ~ ~ ~7.5 ~
execute as @e[tag=C0,tag=s,scores={4=62..70}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=C0,tag=s,scores={4=71..79}] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[tag=C0,tag=s,scores={4=80..89}] at @s run tp @s ~ ~ ~ ~5.5 ~
execute as @e[tag=C0,tag=!s] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=C0,tag=t] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=C0,tag=s] at @s if entity @e[tag=c0,tag=f] run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=C0,tag=t,scores={4=13..28}] at @s run tp @s ~ ~ ~ ~5.125 ~
execute as @e[tag=C0,tag=t,scores={4=28..39}] at @s run tp @s ~ ~ ~ ~5.25 ~
execute as @e[tag=C0,tag=t,scores={4=39..48}] at @s run tp @s ~ ~ ~ ~5.5 ~
execute as @e[tag=C0,tag=t,scores={4=49..65}] at @s run tp @s ~ ~ ~ ~5.75 ~
execute as @e[tag=C0,tag=t,scores={4=66..75}] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=C0,tag=t,scores={4=76..79}] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[tag=C0,tag=t,scores={4=80..85}] at @s run tp @s ~ ~ ~ ~7 ~

execute as @e[tag=C0] at @s if entity @e[tag=c0,tag=left] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
execute as @e[tag=C0] at @s if entity @e[tag=c0,tag=right] run data merge entity @s {Pose:{Head:[20f,0f,0f]}}
tag @e[tag=C0,x=-28,y=9,z=-9,dy=1,dz=2] remove s
tag @e[tag=C0,x=-28,y=9,z=-9,dy=1,dz=2] remove t
execute as @e[tag=C_chabadu] at @s run function mk:lobby/close
tag @e[tag=c0] remove left
tag @e[tag=c0] remove right
execute as @e[tag=C0] at @s unless data entity @s ArmorItems[3] run function mk:reset/menu
execute as @e[tag=C0,tag=s,tag=u] at @s run particle witch ~ ~2 ~ 0 0 0 0.1 1 normal @a
execute as @e[tag=C0,tag=s,tag=!u] at @s if entity @p[distance=..3] run scoreboard players add @s 4.1 1
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 1 run summon armor_stand ~ ~-0.5 ~ {Small:1b,Tags:[c_spl4sh],Invisible:1b,NoGravity:1b,CustomName:''}
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 0..11 run execute as @e[tag=c_spl4sh] at @s run tp ~ ~0.16 ~
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 5..17 run execute as @e[tag=c_spl4sh] at @s run particle cloud ~ ~1 ~ 0 0 0 0.04 29 normal @a[tag=P0ft,tag=!N0]
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 0..15 run execute as @e[tag=c_spl4sh] at @s run particle enchant ~ ~1.5 ~ 0 0 0 0.04 9 normal @a[tag=!N0]
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 9..12 run execute as @e[tag=c_spl4sh] at @s run particle enchant ~ 12.3 ~ 0.5 0 0.5 0.9 1000 normal @a[tag=!N0]
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 38..45 run execute as @e[tag=c_spl4sh] at @s run particle enchant ~ 11.1 ~ 0.1 0 0.54 0.05 650 normal @a
execute as @e[tag=C0,tag=s,tag=g1,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=c_spl4sh,limit=1] {CustomName:'{"text":"Fight mobs or your friends!"}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=g2,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=c_spl4sh,limit=1] {CustomName:'{"text":"Test your skills!"}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=g3,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=c_spl4sh,limit=1] {CustomName:'{"text":"Complete a dungeon!"}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=g4,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=c_spl4sh,limit=1] {CustomName:'{"text":"Play with your friends!"}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=g5,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=c_spl4sh,limit=1] {CustomName:'{"text":"Customise the Game tower!"}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=u] at @s run data merge entity @s {CustomName:'{"text":"-Tournament Hosted-","color":"gold","bold":true}',CustomNameVisible:1}
execute as @e[tag=C0,tag=s,tag=!u] at @s if score @s 4.1 matches 40.. unless entity @p[distance=..3] run execute as @e[tag=c_spl4sh] at @s run particle enchant ~ 11.1 ~ 0.5 0 0.5 0.1 100 normal @a[tag=!N0]
execute as @e[tag=s,tag=C0] at @s unless entity @p[distance=..3] run scoreboard players reset @s 4.1
execute as @e[tag=s,tag=C0] at @s unless entity @p[distance=..3] run kill @e[tag=c_spl4sh]
execute as @e[tag=!s,tag=C0] at @s run data merge entity @s {CustomName:'',CustomNameVisible:0}
execute as @e[tag=!u,tag=C0] at @s run data merge entity @s {CustomName:'',CustomNameVisible:0}
execute as @e[tag=c0] at @s if entity @e[tag=g1,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:1}}],CustomName:'{"text":"- BATTLE -","color":"aqua","bold":true}',CustomNameVisible:1}
execute as @e[tag=c0] at @s if entity @e[tag=g2,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:2}}],CustomName:'{"text":"- CHALLENGE -","color":"yellow","bold":true}'}
execute as @e[tag=c0] at @s if entity @e[tag=g3,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:3}}],CustomName:'{"text":"- DUNGEON -","color":"green","bold":true}'}
execute as @e[tag=c0] at @s if entity @e[tag=g4,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:4}}],CustomName:'{"text":"- PARTY -","color":"light_purple","bold":true}'}
execute as @e[tag=c0] at @s if entity @e[tag=g5,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:5}}],CustomName:'{"text":"- PARAMETERS -","color":"gray","bold":true}'}

#Default
execute as @e[tag=D0,tag=s] at @s if entity @e[tag=d0,tag=f] run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=D0,tag=s,tag=!t] at @s unless entity @e[tag=d0,tag=f] store result entity @s Pose.Head[0] float 0.5 run scoreboard players get @s 4
execute as @e[tag=D0,tag=t,scores={4=40..}] at @s store result entity @s Pose.Head[0] float 0.5 run scoreboard players get @s 4
execute as @e[tag=D0,tag=s] at @s unless entity @e[tag=d0,tag=f] store result entity @s Pose.Head[1] float 0.5 run scoreboard players get @s 4
execute as @e[tag=D0,tag=s] at @s unless entity @e[tag=d0,tag=f] store result entity @s Pose.Head[2] float 0.5 run scoreboard players get @s 4
execute as @e[tag=D0,x=-113,y=9,z=-92,dy=3] at @s run tag @s add s
tag @e[tag=D0,scores={4=90..}] add t
#left
execute as @e[tag=d0_] at @s if entity @e[tag=d0,tag=left] run tp @e[tag=D0,limit=1,distance=..1.5] -113 8.5 -93
execute as @e[tag=d0,tag=left] at @s run tp @e[tag=D0,distance=..1.5,limit=1] -112 8.5 -93
execute as @e[tag=d0,tag=left] at @s run tp @e[tag=D0,x=-114,y=9,z=-93,dy=1,limit=1] ~ 8.5 ~
execute as @e[limit=1,sort=random,tag=D0,x=-113,y=9,z=-93,dy=1] at @s if entity @e[tag=d0,tag=left] run tp @s -114 8.5 -93
execute as @e[tag=d0,tag=left] at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2
#right
execute as @e[tag=_d0] at @s if entity @e[tag=d0,tag=right] run tp @e[tag=D0,limit=1,distance=..1.5] -113 8.5 -93
execute as @e[tag=d0,tag=right] at @s run tp @e[tag=D0,distance=..1.5,limit=1] -114 8.5 -93
execute as @e[tag=d0,tag=right] at @s run tp @e[tag=D0,x=-112,y=9,z=-93,dy=1,limit=1] ~ 8.5 ~
execute as @e[limit=1,sort=random,tag=D0,x=-113,y=9,z=-93,dy=1] at @s if entity @e[tag=d0,tag=right] run tp @s -112 8.5 -93
execute as @e[tag=d0,tag=right] at @s run playsound block.enchantment_table.use master @a ~ ~ ~ 1 1.2
execute if entity @e[limit=1,tag=d0,tag=!f] run scoreboard players add @e[tag=D0,tag=s,tag=!t,scores={4=0..}] 4 1
scoreboard players remove @e[tag=D0,tag=t,scores={4=0..}] 4 1
scoreboard players set @e[tag=D0,tag=!s,tag=D0] 4 0
scoreboard players reset @e[tag=D0,scores={4=..-1}] 4
execute as @e[tag=D0,tag=s,tag=!t,scores={4=5..17}] at @s run tp @s ~ ~ ~ ~15 ~
execute as @e[tag=D0,tag=s,tag=!t,scores={4=18..25}] at @s run tp @s ~ ~ ~ ~13 ~
execute as @e[tag=D0,tag=s,tag=!t,scores={4=26..30}] at @s run tp @s ~ ~ ~ ~12 ~
execute as @e[tag=D0,tag=s,tag=!t,scores={4=30..35}] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=D0,tag=s,tag=!t,scores={4=36..45}] at @s run tp @s ~ ~ ~ ~9 ~
execute as @e[tag=D0,tag=s,scores={4=46..52}] at @s run tp @s ~ ~ ~ ~8 ~
execute as @e[tag=D0,tag=s,scores={4=53..61}] at @s run tp @s ~ ~ ~ ~7.5 ~
execute as @e[tag=D0,tag=s,scores={4=62..70}] at @s run tp @s ~ ~ ~ ~7 ~
execute as @e[tag=D0,tag=s,scores={4=71..79}] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[tag=D0,tag=s,scores={4=80..89}] at @s run tp @s ~ ~ ~ ~5.5 ~
execute as @e[tag=D0,tag=!s] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=D0,tag=t] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=D0,tag=s] at @s if entity @e[tag=d0,tag=f] run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=D0,tag=t,scores={4=13..28}] at @s run tp @s ~ ~ ~ ~5.125 ~
execute as @e[tag=D0,tag=t,scores={4=28..39}] at @s run tp @s ~ ~ ~ ~5.25 ~
execute as @e[tag=D0,tag=t,scores={4=39..48}] at @s run tp @s ~ ~ ~ ~5.5 ~
execute as @e[tag=D0,tag=t,scores={4=49..65}] at @s run tp @s ~ ~ ~ ~5.75 ~
execute as @e[tag=D0,tag=t,scores={4=66..75}] at @s run tp @s ~ ~ ~ ~6 ~
execute as @e[tag=D0,tag=t,scores={4=76..79}] at @s run tp @s ~ ~ ~ ~6.5 ~
execute as @e[tag=D0,tag=t,scores={4=80..85}] at @s run tp @s ~ ~ ~ ~7 ~

execute as @e[tag=D0] at @s if entity @e[tag=d0,tag=left] run data merge entity @s {Pose:{Head:[20f]}}
execute as @e[tag=D0] at @s if entity @e[tag=d0,tag=right] run data merge entity @s {Pose:{Head:[20f]}}
tag @e[tag=D0,x=-114,y=9,z=-93,dy=1,dx=2] remove s
tag @e[tag=D0,x=-114,y=9,z=-93,dy=1,dz=2] remove t
execute as @e[tag=D_chabadu] at @s run function mk:lobby/close
tag @e[tag=d0] remove left
tag @e[tag=d0] remove right
execute as @e[tag=D0] at @s unless data entity @s ArmorItems[3] run function mk:reset/menu
execute as @e[tag=D0,tag=s,tag=u] at @s run particle witch ~ ~2 ~ 0 0 0 0.1 1 normal @a
execute as @e[tag=D0,tag=s,tag=!u] at @s if entity @p[distance=..3] run scoreboard players add @s 4.1 1
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 1 run summon armor_stand ~ ~-0.5 ~ {Small:1b,Tags:[d_spl4sh],Invisible:1b,NoGravity:1b,CustomName:''}
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 0..11 run execute as @e[tag=d_spl4sh] at @s run tp ~ ~0.16 ~
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 5..17 run execute as @e[tag=d_spl4sh] at @s run particle cloud ~ ~1 ~ 0 0 0 0.04 29 normal @a[tag=P0ft,tag=!N0]
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 0..15 run execute as @e[tag=d_spl4sh] at @s run particle enchant ~ ~1.5 ~ 0 0 0 0.04 9 normal @a[tag=!N0]
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 9..12 run execute as @e[tag=d_spl4sh] at @s run particle enchant ~ 12.3 ~ 0.5 0 0.5 0.9 1000 normal @a[tag=!N0]
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 40..45 run execute as @e[tag=d_spl4sh] at @s run particle enchant ~ 11.1 ~ 0.58 0 0.1 0.05 650 normal @a
execute as @e[tag=D0,tag=s,tag=g1,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=d_spl4sh,limit=1] {CustomName:'{"text":"Fight mobs or your friends!"}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=g2,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=d_spl4sh,limit=1] {CustomName:'{"text":"Test your skills!"}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=g3,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=d_spl4sh,limit=1] {CustomName:'{"text":"Mini dungeons to play in!"}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=g4,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=d_spl4sh,limit=1] {CustomName:'{"text":"Play with your friends!"}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=g5,tag=!u] at @s if score @s 4.1 matches 46 run data merge entity @e[tag=d_spl4sh,limit=1] {CustomName:'{"text":"Customise the Game tower!"}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=u] at @s run data merge entity @s {CustomName:'{"text":"-Tournament Hosted-","color":"gold","bold":true}',CustomNameVisible:1}
execute as @e[tag=D0,tag=s,tag=!u] at @s if score @s 4.1 matches 40.. unless entity @p[distance=..3] run execute as @e[tag=d_spl4sh] at @s run particle enchant ~ 11.1 ~ 0.5 0 0.5 0.1 100 normal @a[tag=!N0]
execute as @e[tag=s,tag=D0] at @s unless entity @p[distance=..3] run scoreboard players reset @s 4.1
execute as @e[tag=s,tag=D0] at @s unless entity @p[distance=..3] run kill @e[tag=d_spl4sh]
execute as @e[tag=!s,tag=D0] at @s run data merge entity @s {CustomName:'',CustomNameVisible:0}
execute as @e[tag=!u,tag=D0] at @s run data merge entity @s {CustomName:'',CustomNameVisible:0}
execute as @e[tag=d0] at @s if entity @e[tag=g1,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:1}}],CustomName:'{"text":"- BATTLE -","color":"aqua","bold":true}'}
execute as @e[tag=d0] at @s if entity @e[tag=g2,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:2}}],CustomName:'{"text":" - CHALLENGE -","color":"yellow","bold":true}'}
execute as @e[tag=d0] at @s if entity @e[tag=g3,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:3}}],CustomName:'{"text":"- DUNGEON - ","color":"green","bold":true}',CustomNameVisible:1}
execute as @e[tag=d0] at @s if entity @e[tag=g4,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:4}}],CustomName:'{"text":"- PARTY - ","color":"light_purple","bold":true}'}
execute as @e[tag=d0] at @s if entity @e[tag=g5,distance=..1.5] run data merge entity @s {ArmorItems:[{Count:1,id:oak_button,tag:{cg:5}}],CustomName:'{"text":"- PARAMETERS - ","color":"gray","bold":true}'}

#GAME MECHANICS
kill @e[nbt={Item:{tag:{0:1}}}]
execute as @e[tag=st0rage,sort=random,limit=1] at @s run tag @s add st0re
execute as @a[tag=st0red,tag=rest0re] at @s if score @s 5 = @e[limit=1,sort=nearest,tag=st0re] 5 run tp @e[limit=1,tag=st0re] @s
execute as @a[tag=st0red,tag=rest0re] at @s if score @s 5 = @e[limit=1,tag=st0rage,distance=..1] 5 run function mk:w/e_restore
tag @e[tag=st0rage] remove st0re
execute as @a[tag=!m-g] at @s if block ~ ~-1 ~ cobblestone run effect clear @s speed
execute as @a[team=!] at @s if entity @s[x=91,y=1,z=-11,distance=..2.6] run execute as @e[tag=st3ve,limit=1] at @s unless block ~ ~2.3 ~ air run tp @s ~ ~-0.2 ~
execute as @e[tag=st3ve,limit=1] at @s if block ~ ~2.3 ~ air run summon lightning_bolt
execute as @e[tag=st3ve,limit=1] at @s if block ~ ~2.3 ~ air run fill 93 1 -11 89 1 -6 air replace redstone_wall_torch
execute as @e[tag=st3ve,limit=1] at @s if block ~ ~2.3 ~ air run kill @s
execute as @a[team=!,tag=C_C,tag=P0ft] at @s if entity @s[x=-46,z=-13,y=6,dz=10,dy=-1,dx=8] unless entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 1 0.9 0.1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_C,tag=P0ft] at @s if entity @s[x=-118,z=-83,y=6,dx=10,dy=-1,dz=8] unless entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 1 0.9 0.1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_B,tag=P0ft] at @s if entity @s[x=-46,z=-13,y=6,dz=10,dy=-1,dx=8] unless entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 0 0.8 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_B,tag=P0ft] at @s if entity @s[x=-118,z=-83,y=6,dx=10,dy=-1,dz=8] unless entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 0 0.8 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_D,tag=P0ft] at @s if entity @s[x=-46,z=-13,y=6,dz=10,dy=-1,dx=8] unless entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 0.2 1 0 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_D,tag=P0ft] at @s if entity @s[x=-118,z=-83,y=6,dx=10,dy=-1,dz=8] unless entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 0.2 1 0 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_P,tag=P0ft] at @s if entity @s[x=-46,z=-13,y=6,dz=10,dy=-1,dx=8] unless entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 1 0 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_P,tag=P0ft] at @s if entity @s[x=-118,z=-83,y=6,dx=10,dy=-1,dz=8] unless entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run particle dust 1 0 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_X,tag=P0ft] at @s if entity @s[x=-46,z=-13,y=6,dz=10,dy=-1,dx=8] run particle dust 0.9 1.1 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_X,tag=P0ft] at @s if entity @s[x=-118,z=-83,y=6,dx=10,dy=-1,dz=8] run particle dust 1 1.05 1.05 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_X,tag=P0ft] at @s if entity @s[x=-21,y=31,z=-8,dx=7,dy=20,dz=8] if block ~ ~-1 ~ air run particle dust 0.9 1.1 1 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=D_X,tag=P0ft] at @s if entity @s[x=-73,y=18,z=-53,dx=8,dy=20,dz=8] if block ~ ~-1 ~ air run particle dust 1 1.05 1.05 5 ~ ~ ~ 0.5 1.5 0.5 0 20 force @a[tag=P0ft,tag=!N0]
execute as @a[team=!,tag=C_X] at @s if entity @s[x=-46,z=-13,y=2,dz=10,dy=-1,dx=8] run tp -18 53 -4
execute as @a[team=!,tag=D_X] at @s if entity @s[x=-118,z=-83,y=2,dx=10,dy=-1,dz=8] run tp -69 40 -49
execute as @a[team=!,tag=!m-g] at @s if entity @s[x=-287,y=14,z=-42,dx=83,dy=10,dz=89] run tp @s -222 9 -8 90 0
execute as @a at @s store result score @s mge run xp query @s levels
execute as @e[name="M@K",limit=1] at @s store result score @s dt run time query daytime
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:light_gray_glazed_terracotta"}] if block -313 9 -8 white_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"white"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:white_glazed_terracotta"}] if block -113 4 -61 white_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:white_glazed_terracotta"}] if block -68 46 -11 white_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:red_glazed_terracotta"}] if block -313 9 -8 red_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:pink_glazed_terracotta"}] if block -113 4 -61 pink_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:pink_glazed_terracotta"}] if block -68 46 -11 red_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"red"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:purple_glazed_terracotta"}] if block -313 9 -8 magenta_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:magenta_glazed_terracotta"}] if block -113 4 -61 magenta_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:magenta_glazed_terracotta"}] if block -68 46 -11 magenta_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"light_purple"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:green_glazed_terracotta"}] if block -313 9 -8 lime_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:lime_glazed_terracotta"}] if block -113 4 -61 lime_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:lime_glazed_terracotta"}] if block -68 46 -11 lime_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"green"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:cyan_glazed_terracotta"}] if block -313 9 -8 light_blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:light_blue_glazed_terracotta"}] if block -113 4 -61 light_blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:light_blue_glazed_terracotta"}] if block -68 46 -11 light_blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"aqua"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:blue_glazed_terracotta"}] if block -313 9 -8 blue_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:cyan_glazed_terracotta"}] if block -113 4 -61 blue_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:cyan_glazed_terracotta"}] if block -68 46 -11 blue_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"blue"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:gray_glazed_terracotta"}] if block -313 9 -8 gray_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:light_gray_glazed_terracotta"}] if block -113 4 -61 gray_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:light_gray_glazed_terracotta"}] if block -68 46 -11 gray_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"gray"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:0b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.0 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:8b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.8 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:9b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.9 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:17b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.17 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:18b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.18 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:26b,id:"minecraft:orange_glazed_terracotta"}] if block -313 9 -8 yellow_shulker_box unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.26 with skull_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Library shortcuts show up here]","italic":false}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:1b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.1 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:2b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.2 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:6b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.6 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:7b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.7 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:10b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.10 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:11b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.11 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:15b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.15 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:16b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.16 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:19b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.19 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:20b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.20 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:24b,id:"minecraft:yellow_glazed_terracotta"}] if block -113 4 -61 yellow_carpet unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.24 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Default shortcuts show here]","italic":false,"color":"yellow"}'}}
execute as @a at @s unless data entity @s EnderItems[{Slot:25b,id:"minecraft:yellow_glazed_terracotta"}] if block -68 46 -11 yellow_terracotta unless entity @a[tag=00p] run item replace entity @s[tag=!m-g] enderchest.25 with globe_banner_pattern{gui:1,HideFlags:61,display:{Name:'{"text":"[Classic shortcuts show here]","italic":false,"color":"yellow"}'}}

execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.0 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.8 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.9 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.17 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.18 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.26 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.1 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.2 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.6 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.7 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.10 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.11 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.15 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.16 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.19 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.20 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.24 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=!PG] enderchest.25 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.0 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.8 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.9 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.17 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.18 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG,tag=v0ted] enderchest.26 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.1 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.2 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.6 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.7 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.10 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.11 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.15 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.16 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.19 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.20 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.24 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s run item replace entity @s[tag=PG] enderchest.25 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.0 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.8 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.9 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.17 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.18 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.26 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.1 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.2 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.6 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.7 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.10 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.11 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.15 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.16 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.19 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.20 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.24 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run item replace entity @s[tag=PG] enderchest.25 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.0 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.8 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.9 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.17 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.18 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.26 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.1 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.2 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.6 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.7 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.10 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.11 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.15 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.16 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.19 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.20 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.24 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}
execute as @a at @s unless entity @e[limit=1,name="M@K",tag=PGvote] unless entity @a[tag=00p] run item replace entity @s[tag=m-g,tag=PG] enderchest.25 with barrier{gui:1,HideFlags:61,display:{Name:'{"text":""}'}}

execute store result score @a m run scoreboard players get @e[name="M@K",limit=1] m
execute unless entity @a[tag=00p] as @a[tag=!PG] at @s run loot replace entity @s enderchest.13 loot ui/player
execute unless entity @a[tag=00p] as @a[tag=PG] at @s run loot replace entity @s enderchest.13 loot ui/party
execute as @e[type=!player,type=!armor_stand,type=!item_frame,type=!item,tag=spawner] at @s run data merge entity @s {Silent:1,Invulnerable:1b,DeathLootTable:""}
execute as @e[type=pig,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:pig"}}
execute as @e[type=cow,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:cow"}}
execute as @e[type=chicken,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:chicken"}}
execute as @e[type=squid,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:squid"}}
execute as @e[type=sheep,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:sheep"}}
execute as @e[type=zombie,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:zombie"}}
execute as @e[type=skeleton,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:skeleton"}}
execute as @e[type=creeper,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:creeper"}}
execute as @e[type=spider,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:spider"}}
execute as @e[type=cave_spider,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:cave_spider"}}
execute as @e[type=blaze,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:blaze"}}
execute as @e[type=wither_skeleton,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:wither_skeleton"}}
execute as @e[type=zombified_piglin,tag=spawner] at @s run setblock ~ ~ ~ spawner{RequiredPlayerRange:6s,SpawnCount:1s,SpawnData:{id:"minecraft:zombified_piglin"}}
kill @e[type=!player,type=!armor_stand,type=!item_frame,type=!item,tag=spawner]
clear @a #ui{gui:1}
kill @e[type=item,nbt={Item:{tag:{gui:1}}}]
#Coliseum
effect clear @a[team=!,x=-239,y=3,z=65,distance=..16,tag=!m-g]
execute as @a[team=!,x=-239,y=3,z=65,distance=..16,tag=!m-g] at @s run attribute @s generic.attack_speed base set 10
execute as @a[team=Member,x=-239,y=3,z=65,distance=..16] at @s run team join Member1 @s
execute as @a[team=Admin,x=-239,y=3,z=65,distance=..16] at @s run team join Admin1 @s
execute as @a[team=Member1,x=-239,y=3,z=65,distance=16..] at @s run tag @s remove m-g
execute as @a[team=Admin1,x=-239,y=3,z=65,distance=16..] at @s run tag @s remove m-g
execute as @a[team=!,tag=!m-g,tag=!10bby,tag=!mg-1] at @s if entity @e[name="M@K"] unless entity @s[x=-239,y=3,z=65,distance=..16] unless entity @s[x=-187,y=2,z=-153,distance=..9] unless entity @s[x=-203,y=2,z=-149,distance=..9] unless entity @s[x=-192,y=2,z=-121,dx=10,dy=4,dz=8] run function mk:reset/coliseum
execute as @a[tag=!m-g,x=-239,y=3,z=65,distance=..16] at @s run advancement grant @s only mk:play_minigame2
execute as @a[tag=!m-g,x=-239,y=3,z=65,distance=..16] at @s run tag @s add m-g
execute as @a[team=!,scores={lobby=1..},x=-239,y=3,z=65,distance=..16] at @s run tag @s remove m-g
execute as @a[tag=mg-1] at @s if entity @e[name="M@K"] run function mk:reset/coliseum
execute store result score @e[limit=1,name="M@K"] 3.2 if entity @a[team=!,x=-239,y=3,z=65,distance=..16]
execute as @e[name="M@K",limit=1] at @s if score @s 3.2 matches 2.. run tag @s add g1
execute as @e[name="M@K",limit=1,tag=g1] at @s if entity @a[x=-239,y=3,z=65,distance=..16,scores={mg4.1=1..}] run tag @s add g1.1
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon firework_rocket -239 18 51 {Tags:[g1.1],LifeTime:15,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;11743532,2437522,4312372,14602026,6719955,15435844],FadeColors:[I;11743532,2437522,4312372,14602026,6719955,15435844]}]}}}}
execute as @e[type=firework_rocket,limit=1,tag=g1.1] at @s run summon experience_orb ~ ~ ~ {Motion:[0.0d,0.4d,0.5d],Value:18s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -222 17.5 65 {Motion:[-0.5d,0.3d,0.0d],Value:20s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -233 15.5 52 {Motion:[-0.2d,0.4d,0.5d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -231 15.5 53 {Motion:[-0.4d,0.4d,0.5d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -229 15.5 54 {Motion:[-0.6d,0.4d,0.5d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -228 15.5 55  {Motion:[-0.4d,0.4d,0.3d],Value:20s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -227 15.5 56 {Motion:[-0.3d,0.4d,0.3d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -224 15.5 60 {Motion:[-0.4d,0.5d,0.1d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -222 16.6 65 {Motion:[-0.4d,0.5d],Value:20s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -224 15.5 70 {Motion:[-0.4d,0.5d,-0.1d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -228 15.5 75 {Motion:[-0.4d,0.4d,-0.3d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -231 15.5 77 {Motion:[-0.3d,0.4d,-0.4d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -233 15.5 78 {Motion:[-0.1d,0.4d,-0.4d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -239 16.7 81 {Motion:[0.0d,0.4d,-0.5d],Value:20s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -245 15.5 78 {Motion:[0.1d,0.4d,-0.5d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -248 15.5 76 {Motion:[0.4d,0.4d,-0.3d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -251 15.5 74 {Motion:[0.2d,0.4d,-0.3d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -253 15.5 71 {Motion:[0.4d,0.4d,-0.4d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -256 16.7 65 {Motion:[0.5d,0.4d,0.05d],Value:20s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -254 15.5 60 {Motion:[0.5d,0.4d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -250 15.5 55 {Motion:[0.5d,0.4d,0.4d],Value:7s}
execute as @e[name="M@K",limit=1,tag=g1.1] at @s if score @s 3.2 matches ..1 run summon experience_orb -247 15.5 53 {Motion:[0.3d,0.4d,0.4d],Value:7s}
execute as @e[name="M@K",limit=1] at @s if score @s 3.2 matches ..1 run tag @s remove g1.1
execute as @e[name="M@K",limit=1] at @s if score @s 3.2 matches ..1 run tag @s remove g1
scoreboard players reset @a mg4.1
#Trading Area
execute if entity @a[x=-275,y=6,z=-116,dy=0] run function library:display-text

particle portal -254 15 -123 0 1 0 0.5 5 normal @a
give @a[level=1..,x=-254,y=14,z=-123,dy=2,limit=1] gold_ingot{display:{Name:'{"text":"Enchanted","color":"gold","italic":false,"extra":[{"text":" Ingot","color":"yellow"}]}'},Enchantments:[{id:12,lvl:1}]}
playsound block.conduit.ambient.short master @a[level=1..,x=-254,y=14,z=-123,dy=2,limit=1] ~ ~ ~
xp add @a[level=1..,x=-254,y=14,z=-123,dy=2,limit=1] -1 levels
xp add @a[level=1..,x=-254,y=14,z=-123,dy=2,limit=1] -1 points
execute as @a[team=!,tag=!m-g,scores={vt=1..}] at @s run advancement grant @s only mk:trade_item
scoreboard players reset @a vt
#Mining Area
execute as @a[x=-239,y=13,z=-154,dx=7,dy=9] at @s run tag @s add mg0-1
execute as @a[x=-240,y=16,z=-151,dz=2,dy=4] at @s run tag @s add mg0-2
execute as @a[x=-229,y=13,z=-150,dz=2,dy=4] at @s run tag @s add mg0-3
effect clear @a[tag=mg0-1,tag=!m-g,tag=!3dit,x=-239,y=13,z=-154,dx=7,dy=9]
effect clear @a[tag=mg0-2,tag=!m-g,tag=!3dit,x=-240,y=15,z=-152,dz=2,dy=4]
effect clear @a[tag=mg0-3,tag=!m-g,tag=!3dit,x=-229,y=13,z=-150,dz=2,dy=4]
gamemode survival @a[tag=mg0-1,tag=!m-g,x=-239,y=13,z=-154,dx=7,dy=9]
gamemode survival @a[tag=mg0-2,tag=!m-g,x=-240,y=15,z=-152,dz=2,dy=4]
gamemode survival @a[tag=mg0-3,tag=!m-g,x=-229,y=13,z=-150,dz=2,dy=4]
execute as @a[tag=!m-g,tag=mg0-1,x=-239,y=13,z=-154,dx=7,dy=9] at @s unless score @s mg15 matches 1.. run function clear:chat
execute as @a[tag=!m-g,tag=mg0-2,x=-240,y=15,z=-152,dz=2,dy=4] at @s unless score @s mg15 matches 1.. run function clear:chat
execute as @a[tag=!m-g,tag=mg0-3,x=-229,y=13,z=-150,dz=2,dy=4] at @s unless score @s mg15 matches 1.. run function clear:chat
execute as @a[tag=!m-g,tag=mg0-1,x=-239,y=13,z=-154,dx=7,dy=9] at @s unless score @s mg15 matches 1.. in parallel_overworld run tp @s 0 90 0
execute as @a[tag=!m-g,tag=mg0-2,x=-240,y=15,z=-152,dz=2,dy=4] at @s unless score @s mg15 matches 1.. in parallel_nether run tp @s 0 90 0
execute as @a[tag=!m-g,tag=mg0-3,x=-229,y=13,z=-150,dz=2,dy=4] at @s unless score @s mg15 matches 1.. in the_end run tp @s ~ 90 ~
execute as @a[tag=!m-g,tag=mg0-1] at @s unless score @s mg15 matches 1.. in parallel_overworld run spreadplayers 0 0 0 44 false @s
execute as @a[tag=!m-g,tag=mg0-2] at @s unless score @s mg15 matches 1.. in parallel_nether run spreadplayers 0 0 0 999 under 99 false @s
execute as @a[tag=!m-g,tag=mg0-3] at @s unless score @s mg15 matches 1.. in the_end run spreadplayers 0 0 0 999 under 250 false @s
tag @a[tag=mg0-1] add m-g
tag @a[tag=mg0-2] add m-g
tag @a[tag=mg0-3] add m-g

execute as @a[tag=mg0-3,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run particle end_rod ^ ^0.5 ^2 0 0 0 0.1 9
execute as @a[tag=mg0-3,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run title @s actionbar ["",{"text":"The box disappeared into thin air..","color":"dark_aqua","bold":true}]
execute as @a[tag=mg0-3,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run playsound entity.shulker.hurt master @s ^ ^1 ^2 0.5 1.2
execute as @a[tag=mg0-2,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run particle end_rod ^ ^0.5 ^2 0 0 0 0.1 9
execute as @a[tag=mg0-2,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run title @s actionbar ["",{"text":"The box disappeared into thin air..","color":"dark_aqua","bold":true}]
execute as @a[tag=mg0-2,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run playsound entity.shulker.hurt master @s ^ ^1 ^2 0.5 1.2
execute as @a[tag=mg0-1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run particle end_rod ^ ^0.5 ^2 0 0 0 0.1 9
execute as @a[tag=mg0-1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run title @s actionbar ["",{"text":"The box disappeared into thin air..","color":"dark_aqua","bold":true}]
execute as @a[tag=mg0-1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run playsound entity.shulker.hurt master @s ^ ^1 ^2 0.5 1.2
execute as @a[tag=mg0+1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run particle end_rod ^ ^0.5 ^2 0 0 0 0.1 9
execute as @a[tag=mg0+1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run title @s actionbar ["",{"text":"The box disappeared into thin air..","color":"dark_aqua","bold":true}]
execute as @a[tag=mg0+1,scores={b1=1..}] at @s positioned ~ ~1.5 ~ run playsound entity.shulker.hurt master @s ^ ^1 ^2 0.5 1.2
scoreboard players reset @a[scores={b1=1..}] b1

#Gallery
tp @a[x=-319,y=-1,z=9,dy=-3,dx=6,dz=5] -372 138 -233 -0.7 4.8
execute unless entity @a[tag=mg-1,tag=!m-g] as @a[x=-293,y=-4,z=13,dx=3,dy=-3,dz=4] at @s run function library:stage/enter
execute as @a[tag=sb_gen] at @s run function library:island/craft
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 white_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:0,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 red_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:14,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 magenta_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:2,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 lime_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:5,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 light_blue_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:3,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 blue_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:11,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 gray_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:7,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute unless entity @e[tag=L_chabadu] if block -313 9 -8 yellow_shulker_box if block -294 4 0 sculk_sensor[sculk_sensor_phase=active] run summon shulker -294 4 0 {DeathLootTable:"",NoAI:1,Rotation:[-90f],Silent:1,Color:4,Tags:[L_chabadu,s],AttachFace:2,Invulnerable:1,PersistenceRequired:1b}
execute as @e[tag=L_chabadu,tag=s] at @s run scoreboard players add @s 6 1
#archives
execute as @e[tag=L_chabadu,tag=s,scores={6=20}] at @s run tp ~ ~1 ~
execute as @e[tag=L_chabadu,tag=s,scores={6=45}] at @s run tp ~1 ~ ~
execute as @e[tag=L_chabadu,tag=s,scores={6=65}] at @s run tp ~1 ~ ~
execute as @e[tag=L_chabadu,tag=s,scores={6=75}] at @s run setblock -291 3 0 barrier
execute as @e[tag=L_chabadu,tag=s,scores={6=75..76}] at @s run tp ~ ~-1 ~
execute as @e[tag=L_chabadu,tag=s,scores={6=85}] at @s run data merge entity @s {AttachFace:2,Peek:100}
execute as @e[tag=L_chabadu,tag=s,scores={6=90..160}] at @s unless entity @a[tag=3xp] if entity @a[x=-292,dx=4,y=1,dy=3,z=-5,dz=7] run playsound entity.shulker.ambient master @a ~ ~ ~ 0.6 1.8
execute as @e[tag=L_chabadu,tag=s,scores={6=90..160}] at @s unless entity @a[tag=3xp] if entity @a[x=-292,dx=4,y=1,dy=3,z=-5,dz=7] run schedule function mk:expel 1.5s
execute as @e[tag=L_chabadu,tag=s,scores={6=90..160}] at @s unless entity @a[tag=3xp] run tag @a[x=-292,dx=4,y=1,dy=3,z=-5,dz=7] add 3xp
execute as @e[tag=L_chabadu,tag=s,scores={6=90..160}] at @s if entity @a[tag=3xp] run function mk:expel
execute as @e[tag=L_chabadu,tag=s,scores={6=90..160}] at @s if entity @a[distance=..2,dy=2,tag=3xp] run function mk:expel
execute as @e[tag=L_chabadu,tag=s,scores={6=130}] at @s run data merge entity @s {Rotation:[-150f]}
execute as @e[tag=L_chabadu,tag=s,scores={6=175}] at @s run tp ~ ~-1 ~
execute as @e[tag=L_chabadu,tag=s,scores={6=180}] at @s run particle block spruce_stairs -292 2 0 0.3 0.2 0.3 0 20 normal @a
execute as @e[tag=L_chabadu,tag=s,scores={6=190}] at @s run tp ~ ~-1 ~1
execute as @e[tag=L_chabadu,tag=s,scores={6=190}] at @s run setblock -291 3 0 air
execute as @e[tag=L_chabadu,tag=s,scores={6=190..193}] at @s run particle cloud ~ ~ ~ 0.1 0 0.7 0 10 normal @a
execute as @e[tag=L_chabadu,tag=s,scores={6=192}] at @s run tp ~ ~ ~1
execute as @e[tag=L_chabadu,tag=s,scores={6=255}] at @s run tp ~-1 ~ ~
execute as @e[tag=L_chabadu,tag=s,scores={6=256}] at @s run particle cloud ~ ~ ~ -0.7 0 0.1 0 10 normal @a
execute as @e[tag=L_chabadu,tag=s,scores={6=269}] at @s run tp ~ ~1 ~
execute as @e[tag=L_chabadu,tag=s,scores={6=269}] at @s run data merge entity @s {AttachFace:1,Rotation:[90f],Peek:0}
execute as @e[tag=L_chabadu,tag=s,scores={6=290..360}] at @s unless entity @a[tag=3xp] if entity @a[x=-307,y=1,z=1,dz=2,dx=15,dy=2] run playsound entity.shulker.ambient master @a ~ ~ ~ 0.6 1.8
execute as @e[tag=L_chabadu,tag=s,scores={6=290..360}] at @s unless entity @a[tag=3xp] if entity @a[x=-307,y=1,z=1,dz=2,dx=15,dy=2] run schedule function mk:expel 1.5s
execute as @e[tag=L_chabadu,tag=s,scores={6=290..360}] at @s unless entity @a[tag=3xp] if entity @a[x=-307,y=1,z=1,dz=2,dx=15,dy=2] run tag @a[x=-307,y=1,z=1,dz=2,dx=14,dy=2] add 3xp
execute as @e[tag=L_chabadu,tag=s,scores={6=290..360}] at @s if entity @a[tag=3xp] run function mk:expel
execute as @e[tag=L_chabadu,tag=s,scores={6=275}] at @s run data merge entity @s {Rotation:[-90f],Peek:100}
execute as @e[tag=L_chabadu,tag=s,scores={6=305}] at @s run data merge entity @s {Rotation:[90f]}
execute as @e[tag=L_chabadu,tag=s,scores={6=361}] at @s run data merge entity @s {Peek:0}
execute as @e[tag=L_chabadu,tag=s,scores={6=388..393}] at @s run tp ~ ~ ~1
execute as @e[tag=L_chabadu,tag=s,scores={6=388..393}] at @s run particle end_rod ~ ~0.5 ~ 0 0 0 0 1 normal @a
execute as @e[tag=L_chabadu,tag=s,scores={6=400}] at @s run tp @s ~ ~-1000 ~
execute as @e[tag=L_chabadu,tag=s,scores={6=400..}] at @s run scoreboard players reset @s 6

execute if score @p[tag=4xp] 6 matches 15 run forceload add -294 14 -294 16
execute if score @p[tag=4xp] 6 matches 15 run fill -292 3 13 -292 3 17 air
execute if score @p[tag=4xp] 6 matches 20 run fill -292 2 13 -292 3 17 air
execute if score @p[tag=4xp] 6 matches 25 run fill -292 1 13 -292 3 17 air
execute if score @p[tag=4xp] 6 matches 30 run fill -292 1 17 -293 3 13 air
execute if score @p[tag=4xp] 6 matches 30 run setblock -295 0 15 air
execute if score @p[tag=4xp] 6 matches 31 run summon falling_block -295 1 15 {Time:1,BlockState:{Name:stone_bricks}}
execute if score @p[tag=4xp] 6 matches 31 run setblock -295 1 15 air
execute if score @p[tag=4xp] 6 matches 35 run summon falling_block -295 2 15 {Time:1,BlockState:{Name:stone_bricks}}
execute if score @p[tag=4xp] 6 matches 35 run setblock -295 2 15 air
execute if score @p[tag=4xp] 6 matches 39 run summon falling_block -295 3 15 {Time:1,BlockState:{Name:stone_bricks}}
execute if score @p[tag=4xp] 6 matches 39 run setblock -295 3 15 air
execute if score @p[tag=4xp] 6 matches 49 run particle witch -295 0.8 15 0.2 0 0.2 1 20 force @a
execute if score @p[tag=4xp] 6 matches 51 run setblock -295 0 15 stone_bricks
execute if score @p[tag=4xp] 6 matches 55 run fill -295 1 11 -295 3 19 redstone_block replace oak_leaves
execute if score @p[tag=4xp] 6 matches 65 run fill -295 1 11 -295 3 19 oak_leaves[persistent=true] replace redstone_block
execute if score @p[tag=4xp] 6 matches 68 run particle block stone_bricks -294.63 2 13.53 0.1 2 0.1 0.1 100 force @a
execute if score @p[tag=4xp] 6 matches 68 run particle block stone_bricks -294.63 2 17.53 0.1 2 0.1 0.1 100 force @a
execute if score @p[tag=4xp] 6 matches 69 run forceload remove -294 14 -294 16
execute as @p[tag=4xp] at @s if score @s 6 matches 69 run function library:open
#Waiting area
execute if block -61 4 76 oak_button[powered=true] run function c1:reload
execute if block -82 3 87 spruce_button[powered=true] run function c2:reload
execute if block 732 209 55 oak_button[powered=true] run function d2:reload
#Parameters
execute as @a[tag=draw0c,x=-22,y=27,z=-8,dx=8,dy=9,dz=8] at @s run tp @s -90 28 -8 -90 0
execute as @a[tag=draw0d,x=-73,y=14,z=-53,dx=8,dy=9,dz=8] at @s run tp @s -113 28 -31 180 0
execute as @a[tag=draw0l,x=-155,y=29,z=-65,dx=8,dy=9,dz=8] at @s run tp @s -136 28 -8 90 0
execute as @a[tag=draw0c] at @s run title @s actionbar ["",{"text":"Wield blocks in your","color":"yellow"},{"text":" Offhand (","color":"gold"},{"text":"left hand","color":"green"},{"text":")","color":"gold"},{"text":" to paint","color":"yellow"},{"text":"  -  ","color":"light_purple","bold":true},{"text":"Type","color":"yellow"},{"text":" /trigger lobby","color":"aqua"},{"text":" to exit","color":"yellow"}]
execute as @a[tag=draw0d] at @s run title @s actionbar ["",{"text":"Wield blocks in your","color":"yellow"},{"text":" Offhand (","color":"gold"},{"text":"left hand","color":"green"},{"text":")","color":"gold"},{"text":" to paint","color":"yellow"},{"text":"  -  ","color":"light_purple","bold":true},{"text":"Type","color":"yellow"},{"text":" /trigger lobby","color":"aqua"},{"text":" to exit","color":"yellow"}]
execute as @a[tag=draw0l] at @s run title @s actionbar ["",{"text":"Wield blocks in your","color":"yellow"},{"text":" Offhand (","color":"gold"},{"text":"left hand","color":"green"},{"text":")","color":"gold"},{"text":" to paint","color":"yellow"},{"text":"  -  ","color":"light_purple","bold":true},{"text":"Type","color":"yellow"},{"text":" /trigger lobby","color":"aqua"},{"text":" to exit","color":"yellow"}]
execute if entity @a[team=!] run scoreboard players add @a[scores={6=0..}] 6 1
execute if entity @a[scores={6=1950..1955},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run particle cloud -113 31 -38 0.5 0 0.5 0 300 normal @a
execute if entity @a[scores={6=1955},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon falling_block -113 30 -38  {BlockState:{Name:respawn_anchor},Time:1}
execute if entity @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -113 12 -38 {LifeTime:29,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1,Trail:0,Colors:[I;8273333,8273333,8273333,8273333,8273333,11751612],FadeColors:[I;8273333,8273333,11751612,11751612,8273333,11751612]}]}}}}
execute if entity @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run setblock -121 25 -52 structure_block[mode=load]{metadata:"",mirror:"NONE",ignoreEntities:1b,powered:0b,seed:0L,posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,integrity:1.0f,showair:0b,name:"library:6",sizeY:10,sizeZ:1,showboundingbox:0b}
execute if entity @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run setblock -121 24 -52 redstone_block
execute if entity @a[scores={6=1991},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run fill -121 24 -52 -121 25 -52 air
execute as @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.99
execute as @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[scores={6=1990},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.hat master @s ~ ~ ~ 1 1.83
execute as @a[scores={6=1998},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.85
execute as @a[scores={6=1998},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[scores={6=2009},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.65
execute as @a[scores={6=2009},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[scores={6=2009},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.snare master @s ~ ~ ~ 1 2
execute as @a[scores={6=2021},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[scores={6=2021},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1
execute as @a[scores={6=2021},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.snare master @s ~ ~ ~ 1
execute as @a[scores={6=2022},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1 1.5
execute as @a[scores={6=2022},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.harp master @s ~ ~ ~ 1
execute as @a[scores={6=2022},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] at @s run playsound block.note_block.snare master @s ~ ~ ~ 1
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -113 12 -38 {LifeTime:29,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253,9843760,7047881,14540253,14540253,9843760],FadeColors:[I;14540253,7047881,7047881,7047881,7047881,14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -118 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -117 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -116 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -115 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -114 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -113 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -112 24.6 -51 {LifeTime:6,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -111 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -110 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -109 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -108 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2011},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -107 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2012},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run summon firework_rocket -106 24.6 -51 {LifeTime:3,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Flicker:1,Trail:0,Colors:[I;14540253],FadeColors:[I;14540253]}]}}}}
execute if entity @a[scores={6=2022},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] run setblock -113 11 -38 air
scoreboard players reset @a[scores={6=2023..},x=-114,y=28,z=-31,dx=2,dy=2,dz=1] 6

#GAME TOWER
#Classic
execute at @p[team=!] unless entity @e[tag=C_chabadu] run summon shulker -42 8 -8 {DeathLootTable:"",Tags:[C_chabadu],NoAI:1,Silent:1,PersistenceRequired:1,Invulnerable:1b,AttachFace:1b,Color:5,Rotation:[90f]}
execute as @e[tag=C_chabadu] at @s run tag @a[distance=..10] add C_
execute as @e[tag=C_chabadu] at @s run tag @a[distance=..10] remove D_
execute if block -38 6 -8 air run tag @e[tag=C_chabadu] add c
execute unless block -38 6 -8 air run tag @e[tag=C_chabadu] remove c
execute as @e[tag=C_chabadu] at @s unless entity @a[tag=00p] if entity @a[team=!,tag=C_,distance=..5] run tp @s ~ 9 ~
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] unless entity @a[team=!,tag=C_,distance=..6] run tp @s ~ 8 ~
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] unless entity @a[team=!,tag=C_,distance=..6] run data merge entity @s {Rotation:[90f],Peek:0}
execute as @e[tag=C_chabadu] at @s unless data entity @s {Peek:0b} run function mk:lobby/shulker
execute as @e[tag=C_chabadu] at @s unless entity @a[team=!,tag=C_,distance=..6] run data merge entity @s {CustomNameVisible:0,CustomName:''}
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=C_,distance=..5] run tellraw @a[tag=C_,distance=..9] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"yellow"},{"text":"CONFIRM DESCENT","color":"green"},{"text":"---","color":"yellow"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ✔ ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<\n\n\n"}]
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=C_,distance=..5] run scoreboard players enable @a[tag=C_,distance=..9] interact
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=C_,distance=..5] run tag @a[tag=C_,distance=..9] add mk.01
execute as @e[tag=C_chabadu] at @s unless entity @a[tag=00p] if entity @a[team=!,tag=C_,distance=..5] run data merge entity @s {Peek:90}
execute as @e[tag=C_chabadu] at @s unless entity @s[tag=c] if entity @e[tag=3p] if entity @a[team=!,tag=C_,distance=..5] run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"OK?","bold":true}'}
#bullet
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -44 6 -13 -40 6 -9 air destroy
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -44 6 -3 -40 6 -7 air destroy
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -46 6 -11 -43 6 -5 air destroy
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -38 6 -5 -41 6 -11 air destroy
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -39 6 -12 -39 6 -4 air destroy
execute as @e[tag=C_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -45 6 -12 -45 6 -4 air destroy
#player
execute if block -37 0 -8 light_blue_concrete run tag @a[tag=C_] add C_B
execute if block -37 0 -8 light_blue_concrete run tag @a[tag=C_] remove C_C
execute if block -37 0 -8 light_blue_concrete run tag @a[tag=C_] remove C_D
execute if block -37 0 -8 light_blue_concrete run tag @a[tag=C_] remove C_P
execute if block -37 0 -8 yellow_concrete run tag @a[tag=C_] add C_C
execute if block -37 0 -8 yellow_concrete run tag @a[tag=C_] remove C_B
execute if block -37 0 -8 yellow_concrete run tag @a[tag=C_] remove C_D
execute if block -37 0 -8 yellow_concrete run tag @a[tag=C_] remove C_P
execute if block -37 0 -8 lime_concrete run tag @a[tag=C_] add C_D
execute if block -37 0 -8 lime_concrete run tag @a[tag=C_] remove C_C
execute if block -37 0 -8 lime_concrete run tag @a[tag=C_] remove C_B
execute if block -37 0 -8 lime_concrete run tag @a[tag=C_] remove C_P
execute if block -37 0 -8 pink_concrete run tag @a[tag=C_] add C_P
execute if block -37 0 -8 pink_concrete run tag @a[tag=C_] remove C_C
execute if block -37 0 -8 pink_concrete run tag @a[tag=C_] remove C_D
execute if block -37 0 -8 pink_concrete run tag @a[tag=C_] remove C_B
execute if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run tag @a[tag=C_] add C_X
execute unless entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:5}}]}] run tag @a[tag=C_] remove C_X
execute as @a[tag=C_] at @s if entity @s[x=-49,y=15,z=-15,dx=14,dy=5,dz=14] if entity @e[tag=C_chabadu] run setblock -34 18 -8 air destroy

#Default
execute at @p[team=!] unless entity @e[tag=D_chabadu] run summon shulker -113 9 -79 {DeathLootTable:"",Tags:[D_chabadu],NoAI:1,Silent:1,PersistenceRequired:1,Invulnerable:1b,AttachFace:1b,Color:2}
execute as @e[tag=D_chabadu] at @s run tag @a[distance=..10] add D_
execute as @e[tag=D_chabadu] at @s run tag @a[distance=..10] remove C_
execute if block -113 6 -83 air run tag @e[tag=D_chabadu] add c
execute unless block -113 6 -83 air run tag @e[tag=D_chabadu] remove c
execute as @e[tag=D_chabadu] at @s unless entity @a[tag=00p] if entity @a[team=!,tag=D_,distance=..5] run tp @s ~ 9 ~
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] unless entity @a[team=!,tag=D_,distance=..6] run tp @s ~ 8 ~
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] unless entity @a[team=!,tag=D_,distance=..6] run data merge entity @s {Rotation:[180f],Peek:0}
execute as @e[tag=D_chabadu] at @s unless data entity @s {Peek:0b} run function mk:lobby/shulker
execute as @e[tag=D_chabadu] at @s unless entity @a[team=!,tag=D_,distance=..6] run data merge entity @s {CustomNameVisible:0,CustomName:''}
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=D_,distance=..5] run tellraw @a[tag=D_,distance=..9] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"yellow"},{"text":"CONFIRM DESCENT","color":"light_purple"},{"text":"---","color":"yellow"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"light_purple","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ✔ ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<\n\n\n"}]
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=D_,distance=..5] run scoreboard players enable @a[tag=D_,distance=..9] interact
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] if data entity @s {Peek:0b} if entity @a[advancements={mk:finish_tutorial=true}] if entity @a[team=!,tag=D_,distance=..5] run tag @a[tag=D_,distance=..9] add mk.01
execute as @e[tag=D_chabadu] at @s unless entity @a[tag=00p] if entity @a[team=!,tag=D_,distance=..5] run data merge entity @s {Peek:90}
execute as @e[tag=D_chabadu] at @s unless entity @s[tag=c] if entity @e[tag=3p] if entity @a[team=!,tag=D_,distance=..5] run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"OK?","bold":true}'}
#bullet
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -108 6 -81 -112 6 -77 air destroy
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -118 6 -81 -114 6 -77 air destroy
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -116 6 -83 -110 6 -80 air destroy
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -116 6 -75 -110 6 -78 air destroy
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -117 6 -76 -109 6 -76 air destroy
execute as @e[tag=D_chabadub] at @s unless block ~ ~-0.1 ~ air run fill -117 6 -82 -109 6 -82 air destroy
#player
execute if block -113 0 -84 light_blue_concrete run tag @a[tag=D_] add D_B
execute if block -113 0 -84 light_blue_concrete run tag @a[tag=D_] remove D_C
execute if block -113 0 -84 light_blue_concrete run tag @a[tag=D_] remove D_D
execute if block -113 0 -84 light_blue_concrete run tag @a[tag=D_] remove D_P
execute if block -113 0 -84 yellow_concrete run tag @a[tag=D_] add D_C
execute if block -113 0 -84 yellow_concrete run tag @a[tag=D_] remove D_B
execute if block -113 0 -84 yellow_concrete run tag @a[tag=D_] remove D_D
execute if block -113 0 -84 yellow_concrete run tag @a[tag=D_] remove D_P
execute if block -113 0 -84 lime_concrete run tag @a[tag=D_] add D_D
execute if block -113 0 -84 lime_concrete run tag @a[tag=D_] remove D_C
execute if block -113 0 -84 lime_concrete run tag @a[tag=D_] remove D_B
execute if block -113 0 -84 lime_concrete run tag @a[tag=D_] remove D_P
execute if block -113 0 -84 pink_concrete run tag @a[tag=D_] add D_P
execute if block -113 0 -84 pink_concrete run tag @a[tag=D_] remove D_C
execute if block -113 0 -84 pink_concrete run tag @a[tag=D_] remove D_D
execute if block -113 0 -84 pink_concrete run tag @a[tag=D_] remove D_B
execute if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run tag @a[tag=D_] add D_X
execute unless entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:5}}]}] run tag @a[tag=D_] remove D_X
execute as @a[tag=mk.01,scores={interact=1..}] at @s run function mk:lobby/open
execute as @a[tag=D_] at @s if entity @s[x=-120,y=15,z=-86,dx=14,dy=5,dz=14] if entity @e[tag=D_chabadu] run setblock -113 18 -87 air destroy

#Library
execute unless entity @e[tag=p0ly] if entity @e[tag=3p,tag=!02p,tag=!2p] if entity @a[x=-184,y=4,z=-8,distance=..5] run summon shulker -184 6 -8 {Tags:[p0ly],NoAI:1,Silent:1,Invulnerable:1b,Color:0,AttachFace:1b,Rotation:[-90f]}
execute as @e[type=shulker,tag=p0ly] at @s run tag @a[distance=..10] add L_
execute as @e[type=shulker,tag=p0ly] at @s run tag @a[distance=..10] remove C_
execute as @e[type=shulker,tag=p0ly] at @s run tag @a[distance=..10] remove D_
execute as @e[type=shulker,tag=p0ly] at @s run tag @a[distance=10..] remove L_
execute as @e[type=shulker,tag=p0ly] at @s if entity @p[distance=..6] run execute as @e[tag=L0] at @s run tp ~ 5 ~
execute as @e[type=shulker,tag=p0ly] at @s if entity @p[distance=..6] run tp ~ 6 ~
execute as @e[type=shulker,tag=p0ly] at @s if entity @p[distance=..6] run execute as @e[tag=L0] at @s run execute as @e[type=panda,tag=p0ly,tag=!b0ss,tag=!6] at @s run tp @s ~ ~-2 ~
execute as @e[type=shulker,tag=p0ly] at @s unless entity @a[team=!,distance=..7] run data merge entity @s {Rotation:[-90f],Peek:0}
execute as @e[type=shulker,tag=p0ly] at @s unless entity @e[tag=L0] unless entity @a[tag=02p] unless entity @a[team=!,distance=..7] run tp ~ 3.9 ~
execute as @e[type=shulker,tag=p0ly] at @s unless entity @a[team=!,distance=..7] unless entity @e[type=panda,tag=p0ly] unless entity @e[tag=6p] unless entity @e[tag=b0ss] run function library:summon
execute as @e[type=shulker,tag=p0ly] at @s unless entity @a[team=!,distance=..7] unless entity @e[type=panda,tag=p0ly] if entity @e[tag=6p] if entity @a[tag=XPwinner] unless entity @e[tag=b0ss] run function library:summon
execute as @e[type=shulker,tag=p0ly,tag=0] at @s unless entity @a[team=!,distance=..7] run data merge entity @s {CustomNameVisible:0,CustomName:''}
execute as @e[type=shulker,tag=p0ly] at @s if entity @a[team=!,distance=..6] run tag @s add 0
execute as @e[type=shulker,tag=p0ly,tag=0] at @s run data merge entity @s {Rotation:[-90f],Peek:100}
execute as @e[type=shulker,tag=p0ly] at @s unless data entity @s {Peek:0b} run function mk:lobby/shulker
execute as @e[type=shulker,tag=p0ly] at @s unless entity @e[tag=L0] if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} if score @e[limit=1,name="M@K"] pg1.4 matches 51..600 if entity @a[team=!,distance=..6] run tellraw @a[distance=..6,tag=!m-g] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"gold","bold":true},{"text":"@","color":"aqua","obfuscated":true},{"text":"]","color":"gold","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME EVENT","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"gold","bold":true},{"text":"@","color":"aqua","obfuscated":true},{"text":"]","color":"gold","bold":true},{"text":"\n\n a ","color":"yellow"},{"text":"Minigame Event","bold":true},{"text":" is being held in approximately ","color":"yellow"},{"text":"30","color":"gold"},{"text":" seconds! ","color":"yellow"},{"text":"Join? \n\n","bold":true},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":"<<<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ✔ ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":"<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/function library:event/join"}},{"text":"<<<<<<\n\n\n"}]
execute as @e[type=shulker,tag=p0ly] at @s unless entity @e[tag=L0] if entity @a[team=!,distance=..6] run function library:display-shortcuts
function library:display-slots
execute if block -114 9 -69 air run function default:display-slots
execute if block -52 9 -9 air run function classic:display-slots
execute as @e[type=shulker,tag=p0ly,tag=0] at @s if entity @e[tag=L0] unless entity @a[team=!,distance=..7] run function mk:lobby/close
execute as @e[type=shulker,tag=p0ly] at @s if entity @a[team=!,distance=..5] unless data entity @e[limit=1,tag=L0,tag=g1] CustomName run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"New things will occur when you explore a little more...","bold":true}'}
execute as @e[type=shulker,tag=p0ly] at @s if entity @a[team=!,distance=..5] if score @e[limit=1,name="M@K"] pg1.4 matches 51..600 run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"I heard your kind have organised a Party Event? How exciting!","bold":true}'}
execute as @e[type=shulker,tag=p0ly] at @s if entity @a[team=!,distance=..5] unless score @e[limit=1,name="M@K"] pg1.4 matches 51..600 if data entity @e[limit=1,tag=L0,tag=g1] CustomName run data merge entity @s {CustomNameVisible:1,CustomName:'{"text":"Shortcut slots set upon a location will be saved here!","bold":true}'}
#bullet
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run kill @e[tag=L0]
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -185 3 -4 spruce_wood[axis=z] destroy
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -183 3 -5 spruce_wood[axis=z] destroy
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -182 3 -7 stone_bricks destroy
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -182 3 -9 stone_bricks destroy
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -183 3 -11 stone_bricks destroy
execute as @e[tag=L_chabadub] at @s unless block ~ ~-0.1 ~ air run setblock -185 3 -12 spruce_wood[axis=z] destroy
#player
execute as @a[tag=L_] at @s if entity @s[x=-191,y=12,z=-15,dx=14,dy=5,dz=14] if entity @e[tag=p0ly,type=shulker] run setblock -192 15 -8 air destroy
execute as @e[tag=L0] at @s align xz if entity @p[dy=-1] run setblock ~ 3 ~ redstone_lamp[lit=true]
execute as @e[tag=L0] at @s align xz unless entity @p[dy=-1] run setblock ~ 3 ~ redstone_lamp[lit=false]

execute as @a[tag=!mg0,tag=!mg0+1,tag=!mg0-1,tag=!mg0-2,tag=!mg0-3,nbt=!{Dimension:"minecraft:void"},nbt=!{Dimension:"minecraft:parallel_overworld"},nbt=!{Dimension:"minecraft:parallel_nether"},nbt=!{Dimension:"minecraft:the_end"}] at @s anchored eyes unless score @s mgc matches -1.. run execute as @e[type=item,tag=,nbt={Age:1s},distance=..15000] at @s unless data entity @s Thrower unless entity @s[x=-254,y=17,z=-123,distance=..13] unless entity @s[x=-295,y=13,z=54,dx=6,dy=3] unless entity @s[x=-187,y=2,z=-153,distance=..9] unless entity @s[x=-203,y=2,z=-149,distance=..9] unless entity @s[x=-192,y=2,z=-121,dx=10,dy=4,dz=8] unless entity @s[x=411,y=133,z=-3,dx=101,dy=37,dz=142] unless data entity @s Item.tag run kill
execute as @a[tag=!mg0,scores={mgc=-1..}] at @s anchored eyes run execute as @e[type=item,tag=mgc_m0b,nbt={Age:1s}] at @s unless data entity @s Thrower run kill
execute as @a[tag=!mg0,scores={mgc=-1..}] at @s anchored eyes run execute as @e[type=item,tag=mgc_m0b,nbt={Age:1s}] at @s unless data entity @s Thrower run kill
execute as @a[tag=!mg0,scores={mgc=-1..}] at @s anchored eyes run execute as @e[type=item,tag=mgc_m0b,nbt={Age:1s}] at @s unless data entity @s Thrower run kill