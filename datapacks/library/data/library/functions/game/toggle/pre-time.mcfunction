execute as @e[tag=3vent,tag=start] at @s run scoreboard players add @s mgc-1.6 1
execute if data block -307 15 72 {Text2:'{"bold":true,"color":"aqua","text":"ON"}'} unless entity @e[tag=3vent,tag=start] run tellraw @s ["",{"text":"A","color":"red"},{"text":" Start Event","color":"green"},{"text":" must be set for this to work.","color":"red"}]
