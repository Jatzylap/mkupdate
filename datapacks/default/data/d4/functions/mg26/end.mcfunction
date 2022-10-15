kill @e[tag=q,tag=mg26]
execute unless entity @e[tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] run effect give @a[scores={mg26=1..}] blindness 3 1 true
execute as @a[tag=mg26_win1,tag=mg26_win2,tag=mg26_win3] at @s run title @s actionbar ["",{"text":" You beat a Trivia Cube game!","color":"yellow","bold":true}]
execute in sister_dimension run fill 13 -1 -369 29 -1 -385 air replace redstone_block
tag @e[tag=mg26_start] remove mg26_start
function d4:mg26/reset-walls
function d4:mg26/reset-lights
schedule function d4:mg26/reset 3s