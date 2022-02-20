data merge block -77 9 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg5"}}'}
scoreboard players enable @a[scores={mg5=0..}] lobby

tag @s add SDplayers
tag @a remove SDlonely
tellraw @a[scores={mg5=0..}] ["",{"text":"Beginning Game...","color":"light_purple"}]
tp @a[scores={mg5=0..}] -5 2 35
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove SDplayers
team modify mg5 collisionRule never
team modify mg5 friendlyFire false
gamemode adventure @a[scores={mg5=0..}]
bossbar add avalanche_countdown ["",{"text":"Avalanche","color":"reset","bold":true}]
bossbar set avalanche_countdown color white
bossbar set avalanche_countdown style progress
bossbar set avalanche_countdown max 69
bossbar set avalanche_countdown value 69
tellraw @a[scores={mg5=0..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Dodge an avalanche of snowballs by taking shelter underneath wooden platforms. Getting caught in it will eliminate you!"},{"text":" \u21b2","color":"gold","bold":true}]

setblock -334 2 -48 redstone_block