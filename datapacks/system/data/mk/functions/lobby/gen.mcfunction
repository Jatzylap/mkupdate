#Classic
execute unless entity @e[limit=1,tag=CL0,x=-42,y=4,z=-18,dy=1] run summon item_frame -42 4 -18 {Facing:3,Tags:[CL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=CL0,x=-33,y=4,z=-8,dy=1] run summon item_frame -33 4 -8 {Facing:4,Tags:[CL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=CL0,x=-42,y=4,z=2,dy=1] run summon item_frame -42 4 2 {Facing:2,Tags:[CL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=CL0,x=-51,y=4,z=-8,dy=1] run summon item_frame -51 4 -8 {Facing:5,Tags:[CL0],Invulnerable:1,Fixed:1}

#C
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -42 3 -18 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c1:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"SURVIVAL"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=-18,dy=1] {Item:{id:bow,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -33 3 -8 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c2:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"STRATEGY"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-33,y=4,z=-8,dy=1] {Item:{id:golden_apple,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -42 3 2 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c3:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"PARKOUR"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=2,dy=1] {Item:{id:vine,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -51 3 -8 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c4:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"LOGIC"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-51,y=4,z=-8,dy=1] {Item:{id:ender_eye,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:2}}]}] run fill -47 0 -14 -37 0 -2 yellow_concrete replace #concrete

#B
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -42 3 -18 {Text4:'{"color":"green","clickEvent":{"action":"run_command","value":"function c1:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Beat them All"}',Text2:'{"bold":true,"color":"aqua","text":"BTA"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=-18,dy=1] {Item:{id:zombie_head,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -33 3 -8 {Text4:'{"color":"green","clickEvent":{"action":"run_command","value":"function c2:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Player vs Player"}',Text2:'{"bold":true,"color":"aqua","text":"PVP"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-33,y=4,z=-8,dy=1] {Item:{id:diamond_sword,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -42 3 2 {Text4:'{"color":"green","clickEvent":{"action":"run_command","value":"function c3:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Mob vs Mob"}',Text2:'{"bold":true,"color":"aqua","text":"MVM"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=2,dy=1] {Item:{id:golden_carrot,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -51 3 -8 {Text1:'',Text2:'',Text3:'',Text4:''}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-51,y=4,z=-8,dy=1] {Item:{id:''}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:1}}]}] run fill -47 0 -14 -37 0 -2 light_blue_concrete replace #concrete

#P
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -42 3 -18 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c1:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"SKILL"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=-18,dy=1] {Item:{id:fire_charge,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -33 3 -8 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c2:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"RACE"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-33,y=4,z=-8,dy=1] {Item:{id:minecart,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -42 3 2 {Text4:'',Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c3:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"MISCELLANEOUS"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=2,dy=1] {Item:{id:painting,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -51 3 -8 {Text1:'',Text2:'',Text3:'',Text4:''}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-51,y=4,z=-8,dy=1] {Item:{id:''}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:4}}]}] run fill -47 0 -14 -37 0 -2 pink_concrete replace #concrete

#D
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -42 3 -18 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=-18,dy=1] {Item:{id:''}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -33 3 -8 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"function c4:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"green","text":"ESCAPE"}',Text1:'{"color":"green","text":"@----------@"}'}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-33,y=4,z=-8,dy=1] {Item:{id:golden_chestplate,Count:1}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -42 3 2 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-42,y=4,z=2,dy=1] {Item:{id:''}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -51 3 -8 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-51,y=4,z=-8,dy=1] {Item:{id:''}}
execute if entity @s[tag=C_] if entity @e[tag=c0,nbt={ArmorItems:[{tag:{cg:3}}]}] run fill -47 0 -14 -37 0 -2 lime_concrete replace #concrete

#Default
execute unless entity @e[limit=1,tag=DL0,x=-123,y=4,z=-79,dy=1] run summon item_frame -123 4 -79 {Facing:5,Tags:[DL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=DL0,x=-113,y=4,z=-88,dy=1] run summon item_frame -113 4 -88 {Facing:3,Tags:[DL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=DL0,x=-103,y=4,z=-79,dy=1] run summon item_frame -103 4 -79 {Facing:4,Tags:[DL0],Invulnerable:1,Fixed:1}
execute unless entity @e[limit=1,tag=DL0,x=-113,y=4,z=-70,dy=1] run summon item_frame -113 4 -70 {Facing:2,Tags:[DL0],Invulnerable:1,Fixed:1}

#C
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -123 3 -79 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d1:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"LOGIC"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-123,y=4,z=-79,dy=1] {Item:{id:comparator,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -113 3 -88 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d2:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"STRATEGY"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-88,dy=1] {Item:{id:carrot_on_a_stick,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -103 3 -79 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d3:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"SURVIVAL"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-103,y=4,z=-79,dy=1] {Item:{id:crossbow,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge block -113 3 -70 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d4:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"yellow","text":"TRIVIA"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-70,dy=1] {Item:{id:totem_of_undying,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:2}}]}] run fill -107 0 -84 -119 0 -74 yellow_concrete replace #concrete

#B
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -123 3 -79 {Text4:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d1:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Player vs Entity"}',Text2:'{"bold":true,"color":"aqua","text":"PVE"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-123,y=4,z=-79,dy=1] {Item:{id:phantom_spawn_egg,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -113 3 -88 {Text4:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d2:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Player vs Player"}',Text2:'{"bold":true,"color":"aqua","text":"PVP"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-88,dy=1] {Item:{id:iron_sword,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -103 3 -79 {Text4:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d3:join"},"text":"@----------@"}',Text3:'{"color":"white","text":"Cooperative"}',Text2:'{"bold":true,"color":"aqua","text":"Co-Op"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-103,y=4,z=-79,dy=1] {Item:{id:golden_shovel,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge block -113 3 -70 {Text1:'',Text2:'',Text3:'',Text4:''}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-70,dy=1] {Item:{id:''}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:1}}]}] run fill -107 0 -84 -119 0 -74 light_blue_concrete replace #concrete

#P
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -123 3 -79 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d1:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"SKILL"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-123,y=4,z=-79,dy=1] {Item:{id:nether_star,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -113 3 -88 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d2:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"RACE"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-88,dy=1] {Item:{id:firework_rocket,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -103 3 -79 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d3:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"light_purple","text":"CREATIVE"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-103,y=4,z=-79,dy=1] {Item:{id:pufferfish_bucket,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge block -113 3 -70 {Text1:'',Text2:'',Text3:'',Text4:''}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-70,dy=1] {Item:{id:''}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:4}}]}] run fill -107 0 -84 -119 0 -74 pink_concrete replace #concrete

#D
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -123 3 -79 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-123,y=4,z=-79,dy=1] {Item:{id:''}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -113 3 -88 {Text4:'',Text3:'{"color":"light_purple","clickEvent":{"action":"run_command","value":"function d4:join"},"text":"@----------@"}',Text2:'{"bold":true,"color":"green","text":"DEEP DUNGEON"}',Text1:'{"color":"light_purple","text":"@----------@"}'}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-88,dy=1] {Item:{id:skeleton_skull,Count:1}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -103 3 -79 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-103,y=4,z=-79,dy=1] {Item:{id:''}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge block -113 3 -70 {Text4:'',Text3:'',Text2:'',Text1:''}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run data merge entity @e[limit=1,x=-113,y=4,z=-70,dy=1] {Item:{id:''}}
execute if entity @s[tag=D_] if entity @e[tag=d0,nbt={ArmorItems:[{tag:{cg:3}}]}] run fill -107 0 -84 -119 0 -74 lime_concrete replace #concrete