execute at @s[tag=LC_dropper-ed,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] run summon ender_dragon ~ ~ ~ {Health:0}
stopsound @a[scores={mg11=1..},tag=LCplayers] hostile entity.ender_dragon.death
execute unless entity @s[tag=LC_dropper-ed,tag=LC-1,tag=LC-2,tag=LC-3,tag=LC-4,tag=LC-5] run title @s actionbar ["",{"text":"Close.. Maybe next time, eh?","bold":true}]
scoreboard players reset @s mg11.1
effect clear @s slow_falling
tag @s remove r
tag @s remove LC-1
tag @s remove LC-2
tag @s remove LC-3
tag @s remove LC-4
tag @s remove LC-5
tag @s remove LC-5
tag @s remove LC_dropper-ed