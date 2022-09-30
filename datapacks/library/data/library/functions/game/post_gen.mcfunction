#music
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.11"}'} run playsound music_disc.11 record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.13"}'} run playsound music_disc.13 record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.blocks"}'} run playsound music_disc.blocks record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.cat"}'} run playsound music_disc.cat record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.chirp"}'} run playsound music_disc.chirp record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.far"}'} run playsound music_disc.far record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.mall"}'} run playsound music_disc.mall record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.mellohi"}'} run playsound music_disc.mellohi record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.pigstep"}'} run playsound music_disc.pigstep record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.stal"}'} run playsound music_disc.stal record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.strad"}'} run playsound music_disc.strad record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.wait"}'} run playsound music_disc.wait record @a[scores={mgc=-1..}] ~ ~ ~ 1000
execute at @e[limit=1,tag=3vent,tag=start] if data block -290 16 60 {Text2:'{"bold":true,"color":"green","text":"Disc.ward"}'} run playsound music_disc.ward record @a[scores={mgc=-1..}] ~ ~ ~ 1000

#buttons
execute if data block -290 15 57 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Button"}'} run tag @e[tag=3vent,tag=button] add mgc-button.g
execute if data block -306 15 54 {Text3:'{"color":"yellow","clickEvent":{"action":"run_command","value":"/function library:game/toggle/criterion"},"text":"@Button"}'} run tag @e[tag=3vent,tag=button] add mgc-button.p
execute if data block -290 15 58 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"After: "}'} run tag @e[tag=3vent,tag=button] add mgc-button.g
execute if data block -290 15 60 {Text2:'{"bold":true,"color":"aqua","extra":[{"bold":false,"color":"yellow","text":"@Button"}],"text":"Until: "}'} run tag @e[tag=3vent,tag=button] add mgc-button.g

#markers
execute as @e[tag=3vent,tag=!target,tag=block] at @s run function library:game/generate/block
execute as @e[tag=3vent,tag=!target,tag=particle] at @s run function library:game/generate/particle
execute as @e[tag=3vent,tag=!target,tag=sound] at @s run function library:game/generate/sound
execute if data block -290 15 57 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Start"}'} run function library:game/loop/sound
execute if data block -290 15 57 {Text3:'{"color":"green","clickEvent":{"action":"run_command","value":"/function library:game/toggle/trigger"},"extra":[{"color":"yellow","text":" >>"}],"text":"@Start"}'} run function library:game/loop/particle

schedule function library:game/loop/clear 12
execute as @e[tag=mgc_extra_data] at @s run function library:game/addons/template