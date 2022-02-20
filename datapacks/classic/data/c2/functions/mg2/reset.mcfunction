clear @a[scores={mg2=1..}]
effect clear @a[scores={mg2=1..}]
effect give @a[scores={mg2=1..}] saturation 1 255 true
effect give @a[scores={mg2=1..}] regeneration 8 255 true
effect give @a[scores={mg2=1..}] weakness 100000 255 true
scoreboard players reset * mg2.1
scoreboard players reset * mg2.2
scoreboard players reset * mg2.3
scoreboard players reset * mg2.4
scoreboard players reset * mg2.5
gamemode adventure @a[scores={mg2=1..}]
tag @e remove mg2_X
tag @e remove mg2_XX
tag @e remove mg2X_
tag @e remove mg2_3
tag @e remove STGu
tag @e remove STGweak
tag @a remove mg2_win
tag @a remove STGplayers
spawnpoint @a[scores={mg2=1..}] -18 4 -13
kill @e[type=item,x=113,y=3,z=-435,dx=58,dy=45,dz=158]

#Main Removals
setblock -345 2 -78 air
kill @e[tag=!PG,tag=mg2]
kill @e[type=item,x=411,y=133,z=-3,dx=101,dy=37,dz=142]
bossbar remove sg_countdown

#Reset structures
setblock 429 133 55 structure_block[mode=load]{metadata:"",mirror:"NONE",seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:29,posZ:0,integrity:1.0f,showair:0b,name:"library:mg2_c",sizeY:32,sizeZ:27,showboundingbox:0b}
setblock 429 134 55 redstone_block
setblock 430 149 -1 structure_block[mode=load]{metadata:"",mirror:"NONE",seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"library:mg2_3",sizeY:20,sizeZ:26,showboundingbox:0b}
setblock 430 150 -1 redstone_block
setblock 485 149 57 structure_block[mode=load]{metadata:"",mirror:"NONE",seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:26,posZ:0,integrity:1.0f,showair:0b,name:"library:mg2_2",sizeY:20,sizeZ:23,showboundingbox:0b}
setblock 485 150 57 redstone_block
setblock 430 149 112 structure_block[mode=load]{metadata:"",mirror:"NONE",seed:0L,posX:0,mode:"LOAD",posY:1,sizeX:23,posZ:0,integrity:1.0f,showair:0b,name:"library:mg2_1",sizeY:20,sizeZ:26,showboundingbox:0b}
setblock 430 150 112 redstone_block

#Clear blocks
fill 512 170 139 411 169 -3 air replace #stg_blocks
fill 512 167 139 411 168 -3 air replace #stg_blocks
fill 512 166 139 411 165 -3 air replace #stg_blocks
fill 512 164 139 411 163 -3 air replace #stg_blocks
fill 512 162 139 411 161 -3 air replace #stg_blocks
fill 512 160 139 411 159 -3 air replace #stg_blocks
fill 512 158 139 411 157 -3 air replace #stg_blocks
fill 512 156 139 411 155 -3 air replace #stg_blocks
fill 512 154 139 411 153 -3 air replace #stg_blocks
fill 512 152 139 411 151 -3 air replace #stg_blocks
fill 512 150 139 411 149 -3 air replace #stg_blocks
fill 512 148 139 411 147 -3 air replace #stg_blocks
fill 512 146 139 411 145 -3 air replace #stg_blocks
fill 512 144 139 411 143 -3 air replace #stg_blocks
fill 512 142 139 411 141 -3 air replace #stg_blocks
fill 512 140 139 411 139 -3 air replace #stg_blocks
fill 512 138 139 411 137 -3 air replace #stg_blocks
fill 512 136 139 411 135 -3 air replace #stg_blocks
fill 512 134 139 411 133 -3 air replace #stg_blocks

tp @a[scores={mg2=1..}] -18 4 -13
tag @a remove SPmg2
fill -353 2 -77 -351 2 -77 air
team remove mg2
team remove mg2-red
team remove mg2-yellow
team remove mg2-blue
execute if entity @a[tag=PG,scores={mg2=1..}] run function library:event/schedule/next
scoreboard players reset * mg2

data merge block -90 4 -93 {Text3:'{"text":""}'}