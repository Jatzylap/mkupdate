data merge block -78 9 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg3"}}'}
scoreboard players enable @a[scores={mg3=1..}] lobby

fill -15 25 91 -50 25 125 snow_block keep
fill -15 14 91 -50 14 125 snow_block keep
fill -15 3 91 -50 3 125 snow_block keep
tag @s add SpleefPlayers
effect clear @a[scores={mg3=1..}]
tellraw @a[scores={mg3=1..}] ["",{"text":"Beginning Game...","color":"light_purple"}]
tp @a[scores={mg3=1..}] -32 27 108
#tag @a[scores={mg3=1..}] remove st0red
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove SpleefPlayers
scoreboard players reset @a mg3.1
effect give @a[scores={mg3=1..}] resistance 100000 100 true
effect give @a[scores={mg3=1..}] fire_resistance 100000 100 true
gamemode adventure @a[scores={mg3=1..},tag=SpleefPlayers]
tellraw @a[scores={mg3=1..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Use your shovel to lure opponents onto the bottom floors. Collect snowballs to destroy snow blocks from a distance."}]
setblock -312 2 -41 redstone_block