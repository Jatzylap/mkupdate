tag @a remove RGUturn
tag @s add RGUturn
tellraw @a[scores={mg25=1..}] ["",{"text":"\nYour throw, ","color":"yellow"},{"selector":"@s"},{"text":"!\n","color":"yellow"}]
execute as @a[scores={mg25=1..}] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 100000 0