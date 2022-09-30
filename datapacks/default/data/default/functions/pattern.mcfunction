tag @s add m-g
setblock -113 27 -31 barrier
tag @s add draw0d
playsound ui.button.click master @s ~ ~ ~ 100000
function mk:store
function get:panel_tools
scoreboard players set @s[tag=draw0d] 6 1