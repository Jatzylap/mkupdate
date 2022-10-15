#SET
bossbar add pg_timer ["",{"text":"Awaiting more players...","color":"green","bold":true}]
bossbar set pg_timer max 600
bossbar set pg_timer color pink
scoreboard players set @e[limit=1,name="M@K"] pg1.4 600

#announce?
execute if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} run tellraw @a[team=!,tag=!T1,tag=!T2,tag=!T3,tag=!m-g] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME EVENT","color":"yellow","bold":true},{"text":"---","color":"yellow"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n a ","color":"yellow"},{"text":"Minigame Event","bold":true},{"text":" is currently being held in approximately ","color":"yellow"},{"text":"30 seconds","color":"gold"},{"text":"! ","color":"yellow"},{"text":"Join? \n\n","bold":true},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ✔ ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<\n\n\n"}]
execute if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} run scoreboard players enable @a[tag=!T1,tag=!T2,tag=!T3,tag=!m-g] interact
execute if data block -327 3 -4 {Text3:'{"bold":true,"color":"green","text":"YES"}'} run tag @a[tag=!T1,tag=!T2,tag=!T3,tag=!m-g] add mk.05
tellraw @a[tag=pT0] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"---","color":"gold"},{"text":"MINIGAME EVENT","color":"yellow","bold":true},{"text":"---","color":"yellow"},{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":"\n\n a ","color":"yellow"},{"text":"Minigame Event","bold":true},{"text":" is currently being held ","color":"yellow"},{"text":"for you","color":"gold"},{"text":"!","color":"yellow"},{"text":" Start? \n\n","bold":true},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ✔ ","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<"},{"text":"\n "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":" "},{"text":">>>>>>"},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":" ","hoverEvent":{"action":"show_text","value":"OK!"},"clickEvent":{"action":"run_command","value":"/trigger interact"}},{"text":"<<<<<<\n\n\n"}]
execute as @a[tag=pT0] at @s run scoreboard players enable @s interact
execute as @a[tag=pT0] at @s run tag @s add mk.05
execute if data block -325 4 -4 {Text3:'{"bold":true,"color":"yellow","text":"Party vote"}'} run kill @e[limit=1,tag=PG,tag=pre,nbt={Small:1b}]
tag @e[tag=PG,nbt={Small:1b}] remove pre
tag @a remove pT0
execute as @e[limit=1,name="M@K"] at @s unless entity @e[tag=PG,tag=!pre,nbt={Small:1b}] store result score @s pg1.5 run scoreboard players get @s pg1