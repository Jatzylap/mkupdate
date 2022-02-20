team add mgc-marker
team add mgc-target
team add mgc-button
team add mgc-start
team add mgc-end
team add mgc-title
team modify mgc-title color gold
team modify mgc-marker color aqua
team modify mgc-marker collisionRule never
team modify mgc-target collisionRule never
team modify mgc-button color yellow
team modify mgc-button collisionRule never
team modify mgc-start color green
team modify mgc-start collisionRule never
team modify mgc-end color light_purple
team modify mgc-end collisionRule never

kill @e[tag=mgc_t1tle,limit=1]
kill @e[tag=mgc_t1tle2,limit=1]
kill @e[tag=mgc_b4r,limit=1]
kill @e[tag=it3m]
kill @e[tag=curs0r]
kill @e[type=item_frame,x=-290,y=16,z=61,dy=1]
kill @e[type=item_frame,x=-304,y=16,z=72,dy=1]
summon item_frame -289.03 16.50 61.50 {Facing:4b,Invulnerable:1b,Item:{id:"minecraft:cobweb",Count:1b,tag:{display:{Name:'{"text":"Target nearest Event","color":"gold"}'}}},TileY:16,TileX:-290,Invisible:1b,TileZ:63,Fixed:1b}
summon item_frame -303.50 16.50 72.97 {Facing:2b,Invulnerable:1b,Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Cursor height","color":"aqua","italic":false}'}}},TileY:16,TileX:-304,Invisible:1b,TileZ:72,Fixed:1b}
setblock -299 4 53 air
function library:game/reset/markers
schedule function library:game/save 20