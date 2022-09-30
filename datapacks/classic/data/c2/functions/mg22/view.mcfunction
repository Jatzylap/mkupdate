tag @s[tag=TDviewers] add 0ff
tag @s[tag=!TDviewers] add 0n

tp @s[tag=0n] 238 34 -171 90 90
title @s[tag=0n] title ""
title @s[tag=0n] subtitle ["",{"text":"Switched to: ","color":"yellow"},{"text":"BOARD VIEW","bold":true}]
tag @s[tag=0n] add TDviewers


tag @s[tag=0ff] remove TDviewers
tp @s[tag=0ff] 216 2 -168 -90 0
title @s[tag=0ff] title ""
title @s[tag=0ff] subtitle ["",{"text":"Switched to: ","color":"yellow"},{"text":"TOWER VIEW","bold":true}]

tag @s remove 0n
tag @s remove 0ff