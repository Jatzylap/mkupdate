#Blue vs Yellow condition
bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Yellow","color":"yellow","bold":true},{"text":" ✔ ","color":"green"}]
setblock -353 2 -77 bedrock
execute if block 440 159 135 #beds run setblock 440 159 135 air
execute if block 440 163 135 dragon_egg run fill 441 159 134 439 163 136 air