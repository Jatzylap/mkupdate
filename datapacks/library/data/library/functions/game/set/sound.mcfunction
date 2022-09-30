tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s0
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s1
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s2
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s3
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s4
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s5
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s6
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s7
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s8
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s9
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s10
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s11
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s12
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s13
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s14
tag @e[tag=3vent,tag=sound,tag=focus] remove mgc.s15
setblock -293 15 54 note_block
setblock -293 14 54 air
execute as @e[tag=3vent,tag=focus,tag=!start,tag=!end,tag=!entity] at @s run data modify entity @s ArmorItems[0].tag set from entity @e[tag=sl0t,limit=1] Item
execute as @e[tag=3vent,tag=sound,tag=focus] at @s if data entity @s ArmorItems[0].tag{id:"?"} run setblock -293 14 54 barrier
execute as @e[tag=3vent,tag=sound,tag=focus] at @s if data entity @s ArmorItems[0].tag{id:"?"} run particle block_marker barrier -293 14.5 54 0 0 0 0 1 force
execute as @e[tag=3vent,tag=sound,tag=focus] at @s unless data entity @s ArmorItems[0].tag{id:"?"} run summon falling_block -293 14 54 {DropItem:0,Time:1,Tags:[3vent_s0und]}