execute as @a[scores={mg16=1..}] at @s run function clear:chat
clear @a[scores={mg16=1..}]
effect clear @a[scores={mg16=1..}]
effect give @a[scores={mg16=1..}] saturation 1 255 true
effect give @a[scores={mg16=1..}] regeneration 8 255 true
kill @e[tag=!PG,tag=mg16]
scoreboard players reset @a mg16.1
scoreboard players reset * mg16.2
scoreboard players reset * mg16.2_1
scoreboard players reset * mg16.2_2
scoreboard players reset * mg16.3
gamemode adventure @a[scores={mg16=1..}]
tag @a remove SPmg16
tag @a remove mg16_near0
tag @a remove mg16_near1
tag @a remove GWweak
tag @a remove GWdrop
tag @a remove GWdead
tag @a remove GWplayers
spawnpoint @a[scores={mg16=1..}] -90 3 -97
kill @e[type=item,x=113,y=3,z=-435,dx=58,dy=45,dz=158]
fill 142 28 -419 142 28 -293 air
setblock 142 27 -419 blue_stained_glass
setblock 142 27 -293 red_stained_glass
setblock 142 19 -407 gold_block
setblock 142 19 -305 gold_block
setblock 142 23 -426 stone_brick_wall
setblock 142 23 -412 stone_brick_wall
setblock 142 23 -286 stone_brick_wall
setblock 142 23 -300 stone_brick_wall
fill 113 3 -277 171 6 -357 air replace snow
fill 113 3 -435 171 6 -357 air replace snow

tp @a[scores={mg16=1..}] -90 3 -97
execute as @a[scores={mg16=1..}] at @s run function mk:restore
team remove mg16
team remove mg16-red
team remove mg16-blue
execute if entity @a[tag=PG,scores={mg16=1..}] run function library:event/schedule/next
scoreboard players reset @a mg16

data merge block -90 4 -93 {Text3:'{"text":""}'}