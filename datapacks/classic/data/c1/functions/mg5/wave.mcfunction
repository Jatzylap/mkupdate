summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:40}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
summon area_effect_cloud -5 2 35 {CustomName:"{\"text\":\"mg5/2\"}",Particle:smoke,Radius:0f,Duration:20}
execute as @a[scores={mg5=1..},tag=SDplayers] at @s unless block ~ 5 ~ petrified_oak_slab run tp @e[limit=1,type=area_effect_cloud,name="mg5/2"] ~ 2 ~
setblock -339 2 -55 air
kill @e[type=area_effect_cloud,name=mg5]