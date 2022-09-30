#White pieces
execute in sister_dimension run summon villager 281 -1 18 {VillagerData:{profession:"nitwit"},Silent:1,Tags:[mg25],PersistenceRequired:1,NoGravity:1,Invulnerable:1}
execute in sister_dimension run summon shulker 307 5 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp1]}
execute in sister_dimension run summon shulker 307 8 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp2]}
execute in sister_dimension run summon shulker 307 11 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp3]}
execute in sister_dimension run summon shulker 307 14 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp4]}
execute in sister_dimension run summon shulker 307 17 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp5]}
execute in sister_dimension run summon shulker 307 20 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp6]}
execute in sister_dimension run summon shulker 307 23 25 {Color:15,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-white,Tags:[mg25,mg25_wp7]}
execute in sister_dimension as @e[tag=mg25,team=mg25-white] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 white_shulker_box[facing=west] keep
execute in sister_dimension as @e[tag=mg25,team=mg25-white] at @s run setblock ~ ~ ~ air

#Black pieces
execute in sister_dimension run summon villager 281 -1 6 {VillagerData:{profession:"nitwit"},Silent:1,Tags:[mg25],PersistenceRequired:1,NoGravity:1,Invulnerable:1}
execute in sister_dimension run summon shulker 307 5 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp1]}
execute in sister_dimension run summon shulker 307 8 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp2]}
execute in sister_dimension run summon shulker 307 11 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp3]}
execute in sister_dimension run summon shulker 307 14 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp4]}
execute in sister_dimension run summon shulker 307 17 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp5]}
execute in sister_dimension run summon shulker 307 20 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp6]}
execute in sister_dimension run summon shulker 307 23 -1 {Color:0,AttachFace:5b,Invulnerable:1,PersistenceRequired:1,Silent:1,NoGravity:1,DeathLootTable:"",NoAI:1,Team:mg25-black,Tags:[mg25,mg25_bp7]}
execute in sister_dimension as @e[tag=mg25,team=mg25-black] at @s run fill ~ ~-1 ~-1 ~ ~1 ~1 black_shulker_box[facing=west] keep
execute in sister_dimension as @e[tag=mg25,team=mg25-black] at @s run setblock ~ ~ ~ air