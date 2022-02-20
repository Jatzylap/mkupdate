execute as @a[scores={mg12=1..},tag=!pclaim] at @s run title @s title [""]
execute as @a[scores={mg12=1..},tag=!pclaim] at @s run tellraw @s ["",{"text":"The Phantoms are surrounding the Camp!","color":"light_purple"}]
tag @a[scores={mg12=1..}] add pclaim