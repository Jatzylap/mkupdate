forceload add -112 -177 -81 -400
kill @e[nbt={Item:{tag:{LC:1b}}}]
kill @e[tag=LC]
kill @e[tag=pmc]
fill -104 8 -206 -96 8 -326 air replace chest

clear @a #lc_items{LC:1b}
fill -112 8 -161 -81 50 -182 air replace #lc_blocks
fill -112 51 -161 -81 88 -182 air replace #lc_blocks
fill -112 8 -182 -81 50 -203 air replace #lc_blocks
fill -112 51 -182 -81 88 -203 air replace #lc_blocks
fill -112 8 -203 -81 50 -224 air replace #lc_blocks
fill -112 51 -203 -81 88 -224 air replace #lc_blocks
fill -112 8 -224 -81 50 -245 air replace #lc_blocks
fill -112 51 -224 -81 88 -245 air replace #lc_blocks
fill -112 8 -245 -81 50 -266 air replace #lc_blocks
fill -112 51 -245 -81 88 -266 air replace #lc_blocks
fill -112 8 -266 -81 50 -287 air replace #lc_blocks
fill -112 51 -266 -81 88 -287 air replace #lc_blocks
fill -112 8 -287 -81 50 -308 air replace #lc_blocks
fill -112 51 -287 -81 88 -308 air replace #lc_blocks
fill -112 8 -308 -81 50 -329 air replace #lc_blocks
fill -112 51 -308 -81 88 -329 air replace #lc_blocks
fill -112 8 -329 -81 50 -350 air replace #lc_blocks
fill -112 51 -329 -81 88 -350 air replace #lc_blocks
fill -112 8 -350 -81 50 -368 air replace #lc_blocks
fill -112 51 -350 -81 88 -368 air replace #lc_blocks

fill -104 7 -262 -96 7 -271 water replace air
fill -103 10 -279 -97 10 -279 water replace air
fill -100 7 -255 -100 7 -258 lava replace air

execute as @e[tag=mg11] at @s run kill @e[type=experience_orb,distance=..10]
execute as @e[tag=mg11] at @s run kill @e[type=item,distance=..10]
tag @a[tag=LCplayers] remove r
tag @a remove LC_dropper-ed
tag @a remove LC_anvil_trapped
tag @a remove LC_water_trapped
tag @a remove LC_lava_trapped
tag @a remove LC_bewitched
tag @a remove LC_splashed
effect clear @a[scores={mg11=1..},tag=LCplayers]
effect give @a[scores={mg11=1..},tag=LCplayers] regeneration 1 255 true
effect give @a[scores={mg11=1..},tag=LCplayers] saturation 1 255 true
tp @a[scores={mg11=1..},tag=LCplayers] -66 7 -90
execute as @a[scores={mg11=1..},tag=LCplayers] at @s run function mk:restore
spawnpoint @a[scores={mg11=1..},tag=LCplayers] -66 7 -90
tag @a remove LCplayers
tag @a remove LCwinner
fill -98 8 -357 -102 8 -357 air
scoreboard players reset @a mg11.2
scoreboard players reset @a mg11.1
fill -320 4 -96 -320 4 -95 air
fill -102 8 -186 -98 10 -186 iron_bars[east=true,west=true] keep
setblock -321 2 -94 air
execute if entity @a[tag=PG,scores={mg11=1..}] run function library:event/schedule/next
scoreboard players reset @a mg11
tag @e[tag=mg11] add LC
data merge block -66 8 -94 {Text3:''}
forceload remove -112 -177 -81 -400