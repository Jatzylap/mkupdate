clear @s[tag=st0red]
tellraw @s ["",{"text":"[","color":"yellow","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"yellow","bold":true},{"text":" That game just ended... Welcome back!","color":"aqua"}]
playsound block.beehive.exit master @s ~ ~ ~ 1 2
function mk:restore