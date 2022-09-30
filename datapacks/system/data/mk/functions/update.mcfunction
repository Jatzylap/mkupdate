tag @s remove 4
tag @s remove 5
tag @s remove 6
tag @s remove 7
tag @s remove 8

execute if entity @e[limit=1,name="M@K",scores={m=1..}] run tp @s -113 9.5 27
execute if block -113 9 9 beacon{Levels:0} run tellraw @s ["",{"text":"\nM","color":"green","bold":true},{"text":"K","color":"aqua","bold":true},{"text":">","color":"light_purple"},{"text":" No new updates found... Try reloading the world.","color":"red"}]
execute if block -113 9 9 beacon{Levels:1} unless block -282 2 -42 stone run title @s title ["",{"text":"\u26a0","color":"yellow"},{"text":"Outdated Map","color":"red"},{"text":"\u26a0","color":"yellow"}]
execute if block -113 9 9 beacon{Levels:1} unless block -282 2 -42 stone run playsound entity.elder_guardian.curse master @s ~ ~ ~ 1
execute if block -113 9 9 beacon{Levels:1} unless block -282 2 -42 stone run title @s subtitle ["",{"text":" Please re-download it!","color":"yellow"}]
execute if block -113 9 9 beacon{Levels:1} run scoreboard players set @a 3.1 1
execute if block -113 9 9 beacon{Levels:1} run setblock -113 8 9 air

#<new minigames>





