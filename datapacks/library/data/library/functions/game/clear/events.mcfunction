execute if entity @e[tag=3vent] run tellraw @s ["",{"text":"[","color":"light_purple","bold":true},{"text":"@","color":"gold","obfuscated":true},{"text":"]","color":"light_purple","bold":true},{"text":" Clearing all Event markers...","color":"yellow"}]
kill @e[tag=3vent]
kill @e[tag=it3m]
function library:game/clear/location