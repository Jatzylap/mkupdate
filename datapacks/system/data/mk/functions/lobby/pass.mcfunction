tag @s add m-g
title @s reset
title @s[tag=P0ft_pre,tag=tst1,tag=!tst2] title ["",{"text":"1/2","color":"dark_aqua","bold":true}]
title @s[tag=P0ft_pre,tag=tst1,tag=tst2] title ["",{"text":"2/2","color":"dark_aqua","bold":true}]
playsound ui.loom.take_result master @s[tag=P0ft_pre] ~ ~ ~ 1
execute if entity @s[tag=P0ft_pre,tag=!tst1,tag=!tst2] run tp @s -113 40 76
execute if entity @s[tag=P0ft_pre,tag=tst1,tag=!tst2] run tp @s -113 40 70
execute if entity @s[tag=P0ft_pre,tag=tst1,tag=tst2] run tp @s -113 40 66
execute if entity @s[tag=P0ft_pre,tag=!tst1,tag=!tst2] run schedule function mk:lobby/schedule 15s
execute if entity @s[tag=P0ft_pre,tag=tst1,tag=!tst2] run schedule function mk:lobby/schedule 25s
tag @s[tag=P0ft_pre,tag=tst1] add tst2
tag @s[tag=P0ft_pre] add tst1