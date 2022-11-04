execute if entity @e[tag=mgc_custom_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] run tellraw @a[tag=ed1t] ["",{"text":"This structure file is empty.","color":"red"}]
execute if entity @e[tag=mgc_save,tag=!mgc_custom_l,tag=!mgc_temp1_l,tag=!mgc_temp2_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] run tellraw @a[tag=ed1t] ["",{"text":"This project had no content. So it was deleted.","color":"red"}]
execute if entity @e[tag=mgc_proj1_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save1] remove mgc_save1
execute if entity @e[tag=mgc_proj2_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save2] remove mgc_save2
execute if entity @e[tag=mgc_proj3_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save3] remove mgc_save3
execute if entity @e[tag=mgc_proj4_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save4] remove mgc_save4
execute if entity @e[tag=mgc_proj5_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save5] remove mgc_save5
execute if entity @e[tag=mgc_proj6_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save6] remove mgc_save6
execute if entity @e[tag=mgc_proj7_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save7] remove mgc_save7
execute if entity @e[tag=mgc_proj8_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save8] remove mgc_save8
execute if entity @e[tag=mgc_proj9_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save9] remove mgc_save9
execute if entity @e[tag=mgc_proj10_l] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=23,dz=16] if block -299 13 63 red_stained_glass if block -309 11 63 redstone_lamp[lit=false] unless entity @e[tag=3vent,x=-307,y=-10,z=55,dx=16,dy=26,dz=16] run tag @e[tag=mgc_save10] remove mgc_save10
tag @e[tag=mgc_save] remove mgc_proj1_l
tag @e[tag=mgc_save] remove mgc_proj2_l
tag @e[tag=mgc_save] remove mgc_proj3_l
tag @e[tag=mgc_save] remove mgc_proj4_l
tag @e[tag=mgc_save] remove mgc_proj5_l
tag @e[tag=mgc_save] remove mgc_proj6_l
tag @e[tag=mgc_save] remove mgc_proj7_l
tag @e[tag=mgc_save] remove mgc_proj8_l
tag @e[tag=mgc_save] remove mgc_proj9_l
tag @e[tag=mgc_save] remove mgc_proj10_l
tag @e[tag=mgc_save] remove mgc_temp1_l
tag @e[tag=mgc_save] remove mgc_temp2_l
tag @e[tag=mgc_save] remove mgc_custom_l