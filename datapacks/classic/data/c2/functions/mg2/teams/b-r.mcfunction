#Blue vs Red condition
bossbar set sg_countdown name ["",{"text":"Team: Blue","color":"blue","bold":true},{"text":" ✔ ","color":"green"},{"text":"-","bold":true},{"text":" Team: Red","color":"red","bold":true},{"text":" ✔ ","color":"green"}]
setblock -352 2 -77 bedrock
execute if block 508 159 69 #beds run setblock 508 159 69 air
execute if block 508 163 69 dragon_egg run fill 507 159 68 509 163 70 air