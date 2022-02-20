execute unless entity @a[scores={mg3=1..}] run function c1:mg3/reset
tag @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove SpleefPlayers
tag @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add SpleefPlayers
execute unless entity @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SpleefPlayers] run title @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg3=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SpleefPlayers] at @s run function c1:mg3/initiate

execute unless entity @a[scores={mg5=0..}] run function c1:mg5/reset
tag @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove SDplayers
tag @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add SDplayers
execute unless entity @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SDplayers] run title @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg5=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!SDplayers] at @s run function c1:mg5/initiate

execute unless entity @a[scores={mg6=0..}] run function c1:mg6/reset
tag @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove VFplayers
tag @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add VFplayers
execute unless entity @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!VFplayers] run title @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg6=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!VFplayers] at @s run function c1:mg6/initiate

execute unless entity @a[scores={mg7=0..}] run function c1:mg7/reset
tag @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove TRplayers
tag @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add TRplayers
execute unless entity @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TRplayers] run title @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg7=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TRplayers] at @s run function c1:mg7/initiate

execute unless entity @a[scores={mg9=0..}] run function c1:mg9/reset
tag @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove TTplayers
tag @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add TTplayers
execute unless entity @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TTplayers] run title @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg9=0..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!TTplayers] at @s run function c1:mg9/initiate

execute unless entity @a[scores={mg10=1..}] run function c1:mg10/reset
tag @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] remove CMplayers
tag @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,limit=1] add CMplayers
execute unless entity @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!CMplayers] run title @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute as @a[scores={mg10=1..},x=-73,y=2,z=69,dx=13,dy=3,dz=13,tag=!CMplayers] at @s run function c1:mg10/initiate

particle witch -60.3 4.5 76 0 0 0 2 10 force @a[tag=!N0]
setblock -61 4 76 oak_button[facing=west]