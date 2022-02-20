fill -285 0 18 -285 0 30 blue_concrete
kill @e[tag=s3q]
data merge entity @e[type=item_frame,x=-297,y=3,z=12,dy=1,limit=1] {ItemRotation:7}
data merge block -295 0 15 {Command:"setblock ~-1 ~ ~4 redstone_block"}
fill -295 0 30 -296 0 18 bedrock replace redstone_block
data merge block -297 5 15 {Text3:'',Text2:''}