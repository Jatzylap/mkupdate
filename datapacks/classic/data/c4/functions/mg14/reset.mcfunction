execute in parallel_aether run kill @e[type=item,x=-131,y=114,z=79,dx=12,dy=2,dz=30]
execute in parallel_aether run playsound entity.arrow.hit_player master @a[scores={mg14=1..},x=-125,y=114,z=82,distance=..1] ~ ~ ~ 100000 2
execute in parallel_aether run stopsound @a[scores={mg14=1..}] master music.menu
advancement grant @a[tag=CTM3achieve] only mk:achieve_all mg14
advancement grant @a[tag=CTM3achieve] only mk:unlock_all mg14
team leave @a[tag=CTM3achieve]
tag @a remove CTM3-1

execute in parallel_aether run fill -126 114 83 -124 114 81 air replace quartz_slab
execute in parallel_aether run fill -124 93 102 -126 96 102 quartz_pillar keep
execute in parallel_aether run fill -128 93 103 -122 95 103 iron_bars
execute in parallel_aether run fill -123 92 108 -125 92 108 air
execute in parallel_aether run fill -125 92 108 -125 91 108 air
execute in parallel_aether run fill -126 87 106 -127 87 106 air
execute in parallel_aether run fill -127 80 100 -125 80 96 air replace redstone_block
execute in parallel_aether run setblock -127 80 100 air
execute in parallel_aether run fill -121 96 103 -129 96 109 air
execute in parallel_aether run setblock -128 89 103 lever[face=wall,facing=south,powered=false]
execute in parallel_aether run setblock -126 89 103 lever[face=wall,facing=south,powered=false]
execute in parallel_aether run setblock -124 89 103 lever[face=wall,facing=south,powered=false]
execute in parallel_aether run setblock -122 89 103 lever[face=wall,facing=south,powered=false]
tp @a[scores={mg14=1..},tag=!CTM3achieve] -122.0 42 80.0 0.0 1
execute in overworld run setblock -187 0 -80 air
tag @a remove CTM3achieve