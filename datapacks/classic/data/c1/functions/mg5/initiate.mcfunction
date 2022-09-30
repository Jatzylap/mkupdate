data merge block -77 9 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg5"}}'}
scoreboard players enable @a[scores={mg5=0..}] lobby

tag @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SDplayers] add SDplayers
tag @a remove SDlonely
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

setblock -334 2 -48 redstone_block