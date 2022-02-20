execute if entity @a[advancements={mk:achieve_all=true}] run tp @s[tag=D_C] -163 4 -93
execute unless entity @a[advancements={mk:achieve_all=true}] run tellraw @s[tag=D_C] ["",{"text":"\n[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Once all minigames are completed will this branch be unlocked...\n","color":"yellow","bold":false}]
tellraw @s[tag=D_D] ["",{"text":"\n[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" This area is in development... Please await an update or two, then we'll see.\n","color":"green","bold":false}]
playsound entity.item.pickup master @s ~ ~ ~ 10000
tp @s[tag=D_D] 
execute if entity @a[advancements={mk:achieve_all=true}] run tag @s[tag=D_C] add 10bby
execute if entity @a[advancements={mk:achieve_all=true}] run advancement grant @s[tag=D_C] only mk:play_minigame
tag @s remove 4
tag @s remove 5