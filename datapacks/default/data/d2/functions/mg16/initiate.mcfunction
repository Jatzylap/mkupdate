data merge block -90 4 -93 {Text3:'{"text":"@","color":"gold","obfuscated":true,"clickEvent":{"action":"run_command","value":"tag @s[tag=!T0] add SPmg16"}}'}
scoreboard players enable @a[scores={mg16=1..}] lobby
setblock -284 2 -66 redstone_block

tag @s add GWplayers
team modify mg16-red friendlyFire false
team modify mg16-red collisionRule pushOwnTeam
team modify mg16-red nametagVisibility hideForOtherTeams
team modify mg16-red seeFriendlyInvisibles true
team modify mg16-blue friendlyFire false
team modify mg16-blue collisionRule pushOwnTeam
team modify mg16-blue nametagVisibility hideForOtherTeams
team modify mg16-blue seeFriendlyInvisibles true
tellraw @a[x=135,y=1,z=-55,dx=10,dy=4,dz=8,team=,tag=!GWplayers] ["",{"text":"Gold","color":"gold","bold":true},{"text":"Wars","color":"aqua","bold":true},{"text":"> "},{"text":"---> [","color":"gold"},{"text":"Click here","color":"green","bold":true,"hoverEvent":{"action":"show_text","value":"You can also spectate via the Lobby sign which led you here!"},"clickEvent":{"action":"run_command","value":"/execute if entity @a[scores={mg16=1..}] run tag @s add SPmg8"}},{"text":"]","color":"gold"},{"text":" to watch the game!","color":"yellow"}]
effect clear @a[scores={mg16=1..},tag=GWplayers]
effect give @a[scores={mg16=1..},tag=GWplayers] weakness 52 100 true
effect give @a[scores={mg16=1..},tag=GWplayers] resistance 52 100 true
gamemode adventure @a[scores={mg16=1..},tag=GWplayers]
spawnpoint @a[team=mg16-red,tag=GWplayers] 142 20 -305
spawnpoint @a[team=mg16-blue,tag=GWplayers] 142 20 -407
tp @a[team=mg16-red,tag=GWplayers] 142 20 -305
tp @a[team=mg16-blue,tag=GWplayers] 142 20 -407