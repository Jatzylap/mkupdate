tellraw @s ["",{"text":"[","color":"red","bold":true},{"text":"Map version","color":"gold","bold":false},{"text":"]","color":"red","bold":true},{"text":" 1.7.3_pre1","color":"gold","bold":true}]
execute as @a[tag=2,scores={1=2}] at @s if block -113 9 9 beacon{Levels:1} run tellraw @s ["",{"text":"\nM","color":"green","bold":true},{"text":"K","color":"aqua","bold":true},{"text":">","color":"light_purple"},{"text":" Version ","color":"green"},{"text":"1.7.3_pre1","color":"gold","bold":true}]
execute as @a[tag=2,scores={1=2}] at @s if entity @e[tag=3p] if block -113 9 9 beacon{Levels:1} run tellraw @s ["",{"text":"\no---------------------------------------------o","color":"yellow"},{"text":"\n "},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"CHANGES IN THIS VERSION","color":"green","hoverEvent":{"action":"show_text","value":"Click to unravel"},"bold":true,"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"\no_____________________________________________o","color":"yellow"}]
execute as @a[tag=2,scores={1=2}] at @s if entity @e[tag=3p] if block -113 9 9 beacon{Levels:1} run scoreboard players enable @s interact
execute as @a[tag=2,scores={1=2}] at @s if entity @e[tag=3p] if block -113 9 9 beacon{Levels:1} run tag @s add mk.08
execute as @a[tag=mk.08,scores={interact=1..}] at @s run function version:log