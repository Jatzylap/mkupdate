#Debug
kill @e[x=101,y=2,z=-31,dx=29,dz=28,dy=20,type=tnt]

data merge block -78 8 81 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s add SPmg7"}}'}
scoreboard players enable @a[scores={mg7=0..}] lobby

tag @s add TRplayers
effect clear @a[scores={mg7=0..}]
tellraw @a[scores={mg7=0..}] ["",{"text":"Beginning Game...","color":"light_purple"}]
tp @a[scores={mg7=0..}] 115 18 -17
tag @a[x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove TRplayers
team modify mg7 friendlyFire false
scoreboard players reset @a mg7.1
scoreboard players set @a[scores={mg7=0..},tag=TRplayers] mg7.3 300
effect give @a[scores={mg7=0..}] regeneration 1 255 true
effect give @a[scores={mg7=0..}] resistance 100000 100 true
spreadplayers 115 -17 3 6 under 18 false @a[scores={mg7=0..}]
tellraw @a[scores={mg7=0..}] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME INFO","color":"aqua","bold":true},{"text":"---","color":"gold"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"green","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n\u21b1","color":"gold"},{"text":" Keep sprinting across the platform, don't let it catch you dropping through the last floor! However simple this may seem, remind yourself that the floors bear TNT too."}]
gamemode adventure @a[scores={mg7=0..},tag=TRplayers]

setblock -315 2 -64 redstone_block