#Debug
scoreboard players reset @a mg8.4
scoreboard players reset @a mg8.5_1
scoreboard players reset @a mg8.5_2
scoreboard players reset @a mg8.5_3
scoreboard players reset @a mg8.5_4

data merge block -14 5 -14 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg8"}}'}
scoreboard players enable @a[team=mg8] lobby
setblock -351 2 -46 air

team join mg8 @a[tag=SWplayers]
team join mg8-1 @e[limit=1,name="SkyWars Exit"]
team modify mg8 collisionRule pushOtherTeams
team modify mg8-1 collisionRule never
tellraw @a[x=316,y=3,z=-143,dx=38,dy=32,dz=27,tag=!SWplayers] ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":"> "},{"text":"---> [","color":"gold"},{"text":"Click here","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"You can also spectate via the Lobby sign which led you here!"},"clickEvent":{"action":"run_command","value":"/execute if entity @a[team=mg8] run tag @s add SPmg8"}},{"text":"]","color":"gold"},{"text":" to watch the game!","color":"yellow"}]
effect clear @a[team=mg8]
bossbar set sw_timer2 color green
bossbar set sw_timer2 name ["",{"text":"Sky","color":"aqua","bold":true},{"text":"Wars","color":"gold","bold":true},{"text":" - ","color":"yellow"},{"text":"Stage 1","color":"green","bold":true}]]
effect give @a[team=mg8] resistance 9 100 true
gamemode adventure @a[team=mg8,tag=SWplayers]
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 386 44 -162
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 415 44 -158
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 425 44 -142
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 417 44 -112
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 387 44 -115
tp @r[team=mg8,tag=SWplayers,x=316,y=3,z=-143,dx=38,dy=32,dz=27] 379 44 -135