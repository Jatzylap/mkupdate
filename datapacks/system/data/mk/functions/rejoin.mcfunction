function c1:rejoin
function c2:rejoin
function c3:rejoin
function c4:rejoin
function d1:rejoin
function d2:rejoin
function d3:rejoin
function d4:rejoin
execute unless entity @a[tag=ed1t] unless entity @a[scores={mgc=1..}] run function library:game/reset
execute at @s[tag=3dit] run scoreboard players set @s lobby 1
execute at @s[tag=!m-g] run function mk:reset/game