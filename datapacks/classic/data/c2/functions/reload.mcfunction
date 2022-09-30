execute unless entity @a[scores={mg23=1..}] run function c2:mg23/reset
tag @a[scores={mg23=1..},x=-94,y=1,z=80,dx=13,dy=3,dz=13] remove CTFplayers
tag @a[scores={mg23=1..},x=-94,y=1,z=80,dx=13,dy=3,dz=13,limit=1] add CTFplayers
execute unless entity @a[scores={mg23=1..},x=-94,y=1,z=80,dx=13,dy=3,dz=13,tag=!CTFplayers] run title @a[scores={mg23=1..},tag=!PG,x=-94,y=1,z=80,dx=13,dy=3,dz=13] actionbar ["",{"text":"There aren't enough Players to begin","color":"red","bold":true}]
execute if entity @a[scores={mg23=1..},team=!,tag=CTFplayers] run tellraw @a[scores={mg23=1..},team=,x=-94,y=1,z=80,dx=13,dy=3,dz=13] ["",{"text":"C","color":"red","bold":true},{"text":"T","color":"gold","bold":true},{"text":"F","color":"aqua","bold":true},{"text":"> "},{"text":"---> [","color":"gold"},{"text":"Click here","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"You can also spectate via the Lobby sign which led you here!"},"clickEvent":{"action":"run_command","value":"/execute if entity @a[scores={mg23=1..},team=!,tag=CTFplayers] run tag @s add SPmg23"}},{"text":"]","color":"gold"},{"text":" to watch the game!","color":"yellow"}]
execute if entity @a[scores={mg23=1..},x=-94,y=1,z=80,dx=13,dy=3,dz=13,tag=!CTFplayers] run function c2:mg23/initiate

particle witch -81.2 3.5 87 0 0 0 2 10 force @a[tag=!N0]
setblock -82 3 87 spruce_button[facing=west]