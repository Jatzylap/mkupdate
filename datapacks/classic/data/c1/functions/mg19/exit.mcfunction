execute as @a[scores={mg19=1..},tag=mg19_win] at @s run function clear:chat
fill 13 46 -14 13 48 -14 air destroy
kill @e[type=item]
tellraw @a[scores={mg19=1..},tag=mg19_win] ["",{"text":"\n\nWell in that case... Into the void!","color":"#9330"}]
tag @a remove mg19_4