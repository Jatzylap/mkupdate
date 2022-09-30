execute unless entity @a[scores={mg24=1..}] run function d2:mg24/reset
tag @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42] remove MMplayers
tag @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42,limit=1] add MMplayers
execute unless entity @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42,tag=!MMplayers,tag=!PG] run title @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute if entity @a[scores={mg24=1..},x=726,y=205,z=42,dx=39,dy=9,dz=42,tag=!MMplayers] run function d2:mg24/initiate

particle witch 732.2 209.5 55 0 0 0 2 10 force @a[tag=!N0]
setblock 732 209 55 oak_button[facing=east]