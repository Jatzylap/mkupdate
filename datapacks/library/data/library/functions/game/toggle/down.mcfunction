playsound entity.armor_stand.break master @s ~ ~ ~ 0.2
execute as @e[name="M@K",limit=1] at @s if score @s mgc-1 matches 1.. run scoreboard players remove @s mgc-1 1
execute if score @e[limit=1,name="M@K"] mgc-1 matches ..0 run title @a[tag=ed1t] title ""
execute if score @e[limit=1,name="M@K"] mgc-1 matches ..0 run title @a[tag=ed1t] subtitle ["",{"text":"You cannot go lower than the void!"}]
execute as @e[limit=1,name="M@K"] at @s if score @s mgc-1 matches ..0 run scoreboard players set @s mgc-1 1