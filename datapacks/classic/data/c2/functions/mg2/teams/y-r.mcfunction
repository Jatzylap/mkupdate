#Yellow vs Red condition
bossbar set sg_countdown name ["",{"text":"Team: Yellow","color":"yellow","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ✔ ","color":"green"}]
setblock -351 2 -77 bedrock
execute if block 442 159 1 #beds run setblock 442 159 1 air
execute if block 442 163 1 dragon_egg run fill 441 159 2 443 163 0 air