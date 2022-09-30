playsound ui.button.click master @s ~ ~ ~ 0.2
data merge block -308 15 69 {Text3:''}
#C
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'} run tag @s add 0n1
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if entity @s[tag=!0n1] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} as @s[tag=0n1] at @s run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Strategy"}'} run tag @s add 0n2
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Parkour"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Parkour"}'} run tag @s add 0n3
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} as @s[tag=0n3] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n3] if data block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Logic"}'} run tag @s add 0n4
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"yellow","text":"Challenge"}'} as @s[tag=0n4] at @s run data merge block -308 15 68 {Text2:'{"bold":true,"color":"yellow","text":"Survival"}'}

#B
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BTA"}'} run tag @s add 0n1
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'} run tag @s add 0n1
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n1] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BTA"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n1] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} as @s[tag=0n1] at @s run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvP"}'} run tag @s add 0n2
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"MvM"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Co-op"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"MvM"}'} run tag @s add 0n3
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Co-op"}'} run tag @s add 0n3
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} as @s[tag=0n3] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"BTA"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"aqua","text":"Battle"}'} as @s[tag=0n3] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"PvE"}'}

#P
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if entity @s[tag=!0n2,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'} run tag @s add 0n1
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if entity @s[tag=!0n1] if data block -308 15 68 {Text2:'{"bold":true,"color":"aqua","text":"Branch?"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} as @s[tag=0n1] at @s run data merge block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Race"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if entity @s[tag=!0n1,tag=!0n3,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Race"}'} run tag @s add 0n2
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"green","text":"CLASSIC"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Miscellaneous"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} as @s[tag=0n2] at @s if data block -308 15 70 {Text2:'{"bold":true,"color":"light_purple","text":"DEFAULT"}'} run data merge block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Creative"}'}
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Miscellaneous"}'} run tag @s add 0n3
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} if entity @s[tag=!0n1,tag=!0n2,tag=!0n4] if data block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Creative"}'} run tag @s add 0n3
execute if data block -308 15 69 {Text2:'{"bold":true,"color":"light_purple","text":"Party"}'} as @s[tag=0n3] at @s run data merge block -308 15 68 {Text2:'{"bold":true,"color":"light_purple","text":"Skill"}'}

tag @s remove 0n1
tag @s remove 0n2
tag @s remove 0n3
tag @s remove 0n4