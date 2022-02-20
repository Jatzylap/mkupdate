data merge block -77 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg9"}}'}
scoreboard players enable @a[scores={mg9=0..}] lobby

tag @s add TTplayers
effect clear @a[scores={mg9=0..}]
tellraw @a[scores={mg9=0..}] ["",{"text":"Beginning Game...","color":"gold"}]
tp @a[scores={mg9=0..}] 109.0 36 -58.0
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove TTplayers
team modify mg9 friendlyFire false
team modify mg9 color red
bossbar add tt_timer ["",{"text":"TNT","color":"red","bold":true},{"text":" Timer","color":"gold","bold":true}]
bossbar set tt_timer color red
bossbar set tt_timer max 1000
tellraw @a[scores={mg9=0..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Pass on the TNT tag if you are hit and run away! The player with the tag explodes when time runs out!"},{"text":" \u21b2","color":"gold","bold":true}]

scoreboard players reset @a mg9.1
gamemode adventure @a[scores={mg9=0..},tag=TTplayers]

setblock -337 2 -74 redstone_block