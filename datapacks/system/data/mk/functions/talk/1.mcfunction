execute as @e[tag=n,scores={0=50}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"W","bold":true}',CustomNameVisible:1}
execute as @e[tag=p0ly,tag=0,scores={0=440}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run particle witch ~ ~2.5 ~ 1 1 1 0 10 normal @a
execute as @e[tag=p0ly,tag=0,scores={0=720}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run particle witch ~ ~2.5 ~ 1 1 1 0 10 normal @a
execute as @e[tag=p0ly] at @s if score @e[limit=1,tag=n] 0 matches 1840.. unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {Attributes:[{Base:0.1d,Name:generic.movement_speed}]}
execute as @e[tag=n,scores={0=60}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Wh","bold":true}'}
execute as @e[tag=n,scores={0=70}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Why","bold":true}'}
execute as @e[tag=n,scores={0=90}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Why.","bold":true}'}
execute as @e[tag=n,scores={0=100}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Why..","bold":true}'}
execute as @e[tag=n,scores={0=110}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Why..?","bold":true}'}
execute as @e[tag=n,scores={0=130}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"H","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=132}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HO","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=134}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=136}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW ","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=138}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW D","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=140}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DA","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=142}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DAR","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=144}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=146}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE ","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=148}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE T","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=150}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE TH","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=152}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THO","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=154}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=190}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU.","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=210}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU..","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=230}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU...","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=235}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU... ","bold":true}'}
execute as @e[tag=n,scores={0=260}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU... O","bold":true}'}
execute as @e[tag=n,scores={0=262}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU... Oh","bold":true}'}
execute as @e[tag=n,scores={0=264}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"HOW DARE THOU... Oh?","bold":true}'}
execute as @e[tag=p0ly] at @s if score @e[tag=n,limit=1] 0 matches 300 unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {MainGene:worried}
execute as @e[tag=n,scores={0=300}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Quadness","bold":true}'}
execute as @e[tag=n,scores={0=320}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Quadness Me!","bold":true}'}
execute as @e[tag=n,scores={0=360}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"D","bold":true}'}
execute as @e[tag=n,scores={0=362}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do","bold":true}'}
execute as @e[tag=n,scores={0=364}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do e","bold":true}'}
execute as @e[tag=n,scores={0=366}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do ex","bold":true}'}
execute as @e[tag=n,scores={0=368}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do exc","bold":true}'}
execute as @e[tag=n,scores={0=370}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excu","bold":true}'}
execute as @e[tag=n,scores={0=372}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excus","bold":true}'}
execute as @e[tag=n,scores={0=374}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse","bold":true}'}
execute as @e[tag=n,scores={0=376}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse m","bold":true}'}
execute as @e[tag=n,scores={0=378}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my","bold":true}'}
execute as @e[tag=n,scores={0=380}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my i","bold":true}'}
execute as @e[tag=n,scores={0=382}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my im","bold":true}'}
execute as @e[tag=n,scores={0=384}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my imp","bold":true}'}
execute as @e[tag=n,scores={0=386}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impe","bold":true}'}
execute as @e[tag=n,scores={0=388}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my imper","bold":true}'}
execute as @e[tag=n,scores={0=390}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impert","bold":true}'}
execute as @e[tag=n,scores={0=392}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my imperti","bold":true}'}
execute as @e[tag=n,scores={0=394}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impertin","bold":true}'}
execute as @e[tag=n,scores={0=396}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impertine","bold":true}'}
execute as @e[tag=n,scores={0=398}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impertinen","bold":true}'}
execute as @e[tag=n,scores={0=400}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impertinenc","bold":true}'}
execute as @e[tag=n,scores={0=402}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do excuse my impertinence","bold":true}'}
execute as @e[tag=p0ly] at @s if score @e[tag=n,limit=1] 0 matches 414 unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {MainGene:happy}
execute as @e[tag=n,scores={0=414}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"f","bold":true}'}
execute as @e[tag=n,scores={0=416}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"fo","bold":true}'}
execute as @e[tag=n,scores={0=418}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for","bold":true}'}
execute as @e[tag=n,scores={0=420}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for b","bold":true}'}
execute as @e[tag=n,scores={0=422}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for be","bold":true}'}
execute as @e[tag=n,scores={0=424}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for bei","bold":true}'}
execute as @e[tag=n,scores={0=426}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for bein","bold":true}'}
execute as @e[tag=n,scores={0=428}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being","bold":true}'}
execute as @e[tag=n,scores={0=430}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a","bold":true}'}
execute as @e[tag=n,scores={0=432}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a t","bold":true}'}
execute as @e[tag=n,scores={0=434}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a tr","bold":true}'}
execute as @e[tag=n,scores={0=436}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a tri","bold":true}'}
execute as @e[tag=n,scores={0=438}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trif","bold":true}'}
execute as @e[tag=n,scores={0=440}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifl","bold":true}'}
execute as @e[tag=n,scores={0=442}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifle","bold":true}'}
execute as @e[tag=n,scores={0=444}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifle obtuse","bold":true}'}
execute as @e[tag=n,scores={0=450}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifle obtuse-angled.","bold":true}'}
execute as @e[tag=n,scores={0=470}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifle obtuse-angled..","bold":true}'}
execute as @e[tag=n,scores={0=490}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"for being a trifle obtuse-angled...","bold":true}'}
execute as @e[tag=n,scores={0=500}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"1","bold":true}'}
execute as @e[tag=n,scores={0=502}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10","bold":true}'}
execute as @e[tag=n,scores={0=504}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-","bold":true}'}
execute as @e[tag=n,scores={0=506}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-s","bold":true}'}
execute as @e[tag=n,scores={0=508}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-sq","bold":true}'}
execute as @e[tag=n,scores={0=510}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squ","bold":true}'}
execute as @e[tag=n,scores={0=512}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squa","bold":true}'}
execute as @e[tag=n,scores={0=514}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squar","bold":true}'}
execute as @e[tag=n,scores={0=516}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-square","bold":true}'}
execute as @e[tag=n,scores={0=518}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared ","bold":true}'}
execute as @e[tag=n,scores={0=520}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared p","bold":true}'}
execute as @e[tag=n,scores={0=522}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared pe","bold":true}'}
execute as @e[tag=n,scores={0=524}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared pea","bold":true}'}
execute as @e[tag=n,scores={0=526}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared peac","bold":true}'}
execute as @e[tag=n,scores={0=528}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared peace","bold":true}'}
execute as @e[tag=n,scores={0=530}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared peacef","bold":true}'}
execute as @e[tag=n,scores={0=532}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared peacefu","bold":true}'}
execute as @e[tag=n,scores={0=534}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"10-squared peaceful","bold":true}'}

execute as @e[tag=n,scores={0=536}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"p","bold":true}'}
execute as @e[tag=n,scores={0=538}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"pa","bold":true}'}
execute as @e[tag=n,scores={0=540}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"pan","bold":true}'}
execute as @e[tag=n,scores={0=542}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"pand","bold":true}'}
execute as @e[tag=n,scores={0=544}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda ","bold":true}'}
execute as @e[tag=n,scores={0=546}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda y","bold":true}'}
execute as @e[tag=n,scores={0=548}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda ye","bold":true}'}
execute as @e[tag=n,scores={0=550}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda yea","bold":true}'}
execute as @e[tag=n,scores={0=552}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda year","bold":true}'}
execute as @e[tag=n,scores={0=554}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years","bold":true}'}
execute as @e[tag=n,scores={0=556}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years d","bold":true}'}
execute as @e[tag=n,scores={0=558}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do","bold":true}'}
execute as @e[tag=n,scores={0=560}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do s","bold":true}'}
execute as @e[tag=n,scores={0=562}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do se","bold":true}'}
execute as @e[tag=n,scores={0=564}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do see","bold":true}'}
execute as @e[tag=n,scores={0=566}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do seem","bold":true}'}
execute as @e[tag=n,scores={0=568}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do seem t","bold":true}'}
execute as @e[tag=n,scores={0=570}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"panda years do seem to","bold":true}'}

execute as @e[tag=n,scores={0=572}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"h","bold":true}'}
execute as @e[tag=n,scores={0=574}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"ha","bold":true}'}
execute as @e[tag=n,scores={0=576}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"hav","bold":true}'}
execute as @e[tag=n,scores={0=578}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have","bold":true}'}
execute as @e[tag=n,scores={0=580}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have p","bold":true}'}
execute as @e[tag=n,scores={0=582}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have pa","bold":true}'}
execute as @e[tag=n,scores={0=584}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have pas","bold":true}'}
execute as @e[tag=n,scores={0=586}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past","bold":true}'}
execute as @e[tag=n,scores={0=588}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past q","bold":true}'}
execute as @e[tag=n,scores={0=590}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past qu","bold":true}'}
execute as @e[tag=n,scores={0=592}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past qui","bold":true}'}
execute as @e[tag=n,scores={0=594}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quit","bold":true}'}
execute as @e[tag=n,scores={0=596}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite","bold":true}'}
execute as @e[tag=n,scores={0=598}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite d","bold":true}'}
execute as @e[tag=n,scores={0=600}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dr","bold":true}'}
execute as @e[tag=n,scores={0=602}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dra","bold":true}'}
execute as @e[tag=n,scores={0=604}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dram","bold":true}'}
execute as @e[tag=n,scores={0=606}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite drama","bold":true}'}
execute as @e[tag=n,scores={0=608}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramat","bold":true}'}
execute as @e[tag=n,scores={0=610}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramati","bold":true}'}
execute as @e[tag=n,scores={0=612}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramatic","bold":true}'}
execute as @e[tag=n,scores={0=614}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramatica","bold":true}'}
execute as @e[tag=n,scores={0=616}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramatical","bold":true}'}
execute as @e[tag=n,scores={0=618}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramaticall","bold":true}'}
execute as @e[tag=n,scores={0=620}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"have past quite dramatically","bold":true}'}

execute as @e[tag=n,scores={0=622}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"s","bold":true}'}
execute as @e[tag=n,scores={0=624}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"si","bold":true}'}
execute as @e[tag=n,scores={0=626}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"sin","bold":true}'}
execute as @e[tag=n,scores={0=628}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"sinc","bold":true}'}
execute as @e[tag=n,scores={0=630}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since","bold":true}'}
execute as @e[tag=n,scores={0=632}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I","bold":true}'}
execute as @e[tag=n,scores={0=634}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I l","bold":true}'}
execute as @e[tag=n,scores={0=636}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I la","bold":true}'}
execute as @e[tag=n,scores={0=638}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I las","bold":true}'}
execute as @e[tag=n,scores={0=640}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last","bold":true}'}
execute as @e[tag=n,scores={0=642}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last h","bold":true}'}
execute as @e[tag=n,scores={0=644}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last ha","bold":true}'}
execute as @e[tag=n,scores={0=646}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had","bold":true}'}
execute as @e[tag=n,scores={0=648}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had c","bold":true}'}
execute as @e[tag=n,scores={0=650}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had co","bold":true}'}
execute as @e[tag=n,scores={0=652}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had com","bold":true}'}
execute as @e[tag=n,scores={0=654}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had comp","bold":true}'}
execute as @e[tag=n,scores={0=656}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had compa","bold":true}'}
execute as @e[tag=n,scores={0=658}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had compan","bold":true}'}
execute as @e[tag=n,scores={0=660}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company","bold":true}'}
execute as @e[tag=n,scores={0=662}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company h","bold":true}'}
execute as @e[tag=n,scores={0=664}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company he","bold":true}'}
execute as @e[tag=n,scores={0=666}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company her","bold":true}'}
execute as @e[tag=n,scores={0=668}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company here","bold":true}'}
execute as @e[tag=n,scores={0=670}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company here.","bold":true}'}
execute as @e[tag=n,scores={0=672}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"since I last had company here..","bold":true}'}
execute as @e[tag=n,scores={0=720}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Y","bold":true}'}
execute as @e[tag=n,scores={0=722}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Yo","bold":true}'}
execute as @e[tag=n,scores={0=724}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"You","bold":true}'}
execute as @e[tag=n,scores={0=726}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"You s","bold":true}'}
execute as @e[tag=n,scores={0=728}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"You se","bold":true}'}
execute as @e[tag=n,scores={0=730}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"You see,","bold":true}'}

execute as @e[tag=n,scores={0=750}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"t","bold":true}'}
execute as @e[tag=n,scores={0=752}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"tr","bold":true}'}
execute as @e[tag=n,scores={0=754}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"tra","bold":true}'}
execute as @e[tag=n,scores={0=756}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"trav","bold":true}'}
execute as @e[tag=n,scores={0=758}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"trave","bold":true}'}
execute as @e[tag=n,scores={0=760}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travel","bold":true}'}
execute as @e[tag=n,scores={0=762}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travell","bold":true}'}
execute as @e[tag=n,scores={0=764}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travelle","bold":true}'}
execute as @e[tag=n,scores={0=766}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"traveller","bold":true}'}
execute as @e[tag=n,scores={0=768}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers","bold":true}'}
execute as @e[tag=n,scores={0=770}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers d","bold":true}'}
execute as @e[tag=n,scores={0=772}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers do","bold":true}'}
execute as @e[tag=n,scores={0=774}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don","bold":true}'}
execute as @e[tag=n,scores={0=776}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t","bold":true}'}
execute as @e[tag=n,scores={0=778}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t j","bold":true}'}
execute as @e[tag=n,scores={0=780}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t ju","bold":true}'}
execute as @e[tag=n,scores={0=782}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t jus","bold":true}'}
execute as @e[tag=n,scores={0=784}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just","bold":true}'}
execute as @e[tag=n,scores={0=786}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just s","bold":true}'}
execute as @e[tag=n,scores={0=788}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just st","bold":true}'}
execute as @e[tag=n,scores={0=790}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stu","bold":true}'}
execute as @e[tag=n,scores={0=792}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stum","bold":true}'}
execute as @e[tag=n,scores={0=794}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumb","bold":true}'}
execute as @e[tag=n,scores={0=796}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumbl","bold":true}'}
execute as @e[tag=n,scores={0=798}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumble","bold":true}'}
execute as @e[tag=n,scores={0=800}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumble u","bold":true}'}
execute as @e[tag=n,scores={0=802}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumble up","bold":true}'}
execute as @e[tag=n,scores={0=804}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumble upo","bold":true}'}
execute as @e[tag=n,scores={0=806}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"travellers don\'t just stumble upon","bold":true}'}

execute as @e[tag=n,scores={0=808}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"t","bold":true}'}
execute as @e[tag=n,scores={0=810}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"th","bold":true}'}
execute as @e[tag=n,scores={0=812}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"the","bold":true}'}
execute as @e[tag=n,scores={0=814}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"thes","bold":true}'}
execute as @e[tag=n,scores={0=816}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these","bold":true}'}
execute as @e[tag=n,scores={0=818}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these s","bold":true}'}
execute as @e[tag=n,scores={0=820}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these sh","bold":true}'}
execute as @e[tag=n,scores={0=822}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these sha","bold":true}'}
execute as @e[tag=n,scores={0=824}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shap","bold":true}'}
execute as @e[tag=n,scores={0=826}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shape","bold":true}'}
execute as @e[tag=n,scores={0=828}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapel","bold":true}'}
execute as @e[tag=n,scores={0=830}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapele","bold":true}'}
execute as @e[tag=n,scores={0=832}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeles","bold":true}'}
execute as @e[tag=n,scores={0=834}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless","bold":true}'}
execute as @e[tag=n,scores={0=836}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless c","bold":true}'}
execute as @e[tag=n,scores={0=838}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless ch","bold":true}'}
execute as @e[tag=n,scores={0=840}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chu","bold":true}'}
execute as @e[tag=n,scores={0=842}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chun","bold":true}'}
execute as @e[tag=n,scores={0=844}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunk","bold":true}'}
execute as @e[tag=n,scores={0=846}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks","bold":true}'}
execute as @e[tag=n,scores={0=848}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks w","bold":true}'}
execute as @e[tag=n,scores={0=850}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks wi","bold":true}'}
execute as @e[tag=n,scores={0=852}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks wit","bold":true}'}
execute as @e[tag=n,scores={0=854}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks with","bold":true}'}
execute as @e[tag=n,scores={0=856}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks witho","bold":true}'}
execute as @e[tag=n,scores={0=858}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks withou","bold":true}'}
execute as @e[tag=n,scores={0=860}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without","bold":true}'}
execute as @e[tag=n,scores={0=862}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without r","bold":true}'}
execute as @e[tag=n,scores={0=864}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without re","bold":true}'}
execute as @e[tag=n,scores={0=866}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without rea","bold":true}'}
execute as @e[tag=n,scores={0=868}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reas","bold":true}'}
execute as @e[tag=n,scores={0=870}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reaso","bold":true}'}
execute as @e[tag=n,scores={0=872}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reason","bold":true}'}

execute as @e[tag=n,scores={0=874}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reason.","bold":true}'}
execute as @e[tag=n,scores={0=876}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reason..","bold":true}'}
execute as @e[tag=n,scores={0=878}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"these shapeless chunks without reason...","bold":true}'}
execute as @e[tag=n,scores={0=900}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"t","bold":true}'}
execute as @e[tag=n,scores={0=902}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"th","bold":true}'}
execute as @e[tag=n,scores={0=904}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"the","bold":true}'}
execute as @e[tag=n,scores={0=906}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they","bold":true}'}
execute as @e[tag=n,scores={0=908}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they a","bold":true}'}
execute as @e[tag=n,scores={0=910}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they ar","bold":true}'}
execute as @e[tag=n,scores={0=912}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are","bold":true}'}
execute as @e[tag=n,scores={0=914}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are q","bold":true}'}
execute as @e[tag=n,scores={0=916}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are qu","bold":true}'}
execute as @e[tag=n,scores={0=918}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are qui","bold":true}'}
execute as @e[tag=n,scores={0=920}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quit","bold":true}'}
execute as @e[tag=n,scores={0=922}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite","bold":true}'}
execute as @e[tag=n,scores={0=924}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite t","bold":true}'}
execute as @e[tag=n,scores={0=926}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite th","bold":true}'}
execute as @e[tag=n,scores={0=928}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the","bold":true}'}
execute as @e[tag=n,scores={0=930}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the v","bold":true}'}
execute as @e[tag=n,scores={0=932}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the va","bold":true}'}
execute as @e[tag=n,scores={0=934}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the val","bold":true}'}
execute as @e[tag=n,scores={0=936}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valu","bold":true}'}
execute as @e[tag=n,scores={0=938}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valua","bold":true}'}
execute as @e[tag=n,scores={0=940}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuab","bold":true}'}
execute as @e[tag=n,scores={0=942}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuabl","bold":true}'}
execute as @e[tag=n,scores={0=944}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable","bold":true}'}
execute as @e[tag=n,scores={0=946}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable r","bold":true}'}
execute as @e[tag=n,scores={0=948}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable ra","bold":true}'}
execute as @e[tag=n,scores={0=950}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable rar","bold":true}'}
execute as @e[tag=n,scores={0=952}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable rari","bold":true}'}
execute as @e[tag=n,scores={0=954}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable rarit","bold":true}'}
execute as @e[tag=n,scores={0=956}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"they are quite the valuable rarity!","bold":true}'}

execute as @e[tag=n,scores={0=970}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"B","bold":true}'}
execute as @e[tag=n,scores={0=972}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Bu","bold":true}'}
execute as @e[tag=n,scores={0=974}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But","bold":true}'}
execute as @e[tag=n,scores={0=976}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But d","bold":true}'}
execute as @e[tag=n,scores={0=978}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But do","bold":true}'}
execute as @e[tag=n,scores={0=980}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don","bold":true}'}
execute as @e[tag=n,scores={0=982}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t","bold":true}'}
execute as @e[tag=n,scores={0=984}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t t","bold":true}'}
execute as @e[tag=n,scores={0=986}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t th","bold":true}'}
execute as @e[tag=n,scores={0=988}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t thi","bold":true}'}
execute as @e[tag=n,scores={0=990}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t thin","bold":true}'}
execute as @e[tag=n,scores={0=992}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think","bold":true}'}
execute as @e[tag=n,scores={0=994}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I","bold":true}'}
execute as @e[tag=n,scores={0=996}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I h","bold":true}'}
execute as @e[tag=n,scores={0=998}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I ha","bold":true}'}
execute as @e[tag=n,scores={0=1000}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I hav","bold":true}'}
execute as @e[tag=n,scores={0=1002}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I have","bold":true}'}
execute as @e[tag=n,scores={0=1004}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I haven","bold":true}'}
execute as @e[tag=n,scores={0=1006}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"But don\'t think I haven\'t","bold":true}'}

execute as @e[tag=n,scores={0=1010}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"b","bold":true}'}
execute as @e[tag=n,scores={0=1012}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"be","bold":true}'}
execute as @e[tag=n,scores={0=1014}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"bee","bold":true}'}
execute as @e[tag=n,scores={0=1016}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been","bold":true}'}
execute as @e[tag=n,scores={0=1018}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been e","bold":true}'}
execute as @e[tag=n,scores={0=1020}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been ex","bold":true}'}
execute as @e[tag=n,scores={0=1022}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been exp","bold":true}'}
execute as @e[tag=n,scores={0=1024}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expe","bold":true}'}
execute as @e[tag=n,scores={0=1026}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expec","bold":true}'}
execute as @e[tag=n,scores={0=1028}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expect","bold":true}'}
execute as @e[tag=n,scores={0=1030}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecti","bold":true}'}
execute as @e[tag=n,scores={0=1032}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expectin","bold":true}'}
execute as @e[tag=n,scores={0=1034}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting","bold":true}'}
execute as @e[tag=n,scores={0=1036}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting a","bold":true}'}
execute as @e[tag=n,scores={0=1038}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting an","bold":true}'}
execute as @e[tag=n,scores={0=1040}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting any","bold":true}'}
execute as @e[tag=n,scores={0=1042}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting anyo","bold":true}'}
execute as @e[tag=n,scores={0=1044}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting anyon","bold":true}'}
execute as @e[tag=n,scores={0=1046}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"been expecting anyone!","bold":true}'}
execute as @e[tag=n,scores={0=1068}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"A","bold":true}'}
execute as @e[tag=n,scores={0=1080}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"An","bold":true}'}
execute as @e[tag=n,scores={0=1082}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And","bold":true}'}
execute as @e[tag=n,scores={0=1084}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And b","bold":true}'}
execute as @e[tag=n,scores={0=1086}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And by","bold":true}'}
execute as @e[tag=n,scores={0=1088}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And by t","bold":true}'}
execute as @e[tag=n,scores={0=1090}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And by th","bold":true}'}
execute as @e[tag=n,scores={0=1092}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And by thi","bold":true}'}
execute as @e[tag=n,scores={0=1094}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"And by this,","bold":true}'}

execute as @e[tag=n,scores={0=1100}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I","bold":true}'}
execute as @e[tag=n,scores={0=1102}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I m","bold":true}'}
execute as @e[tag=n,scores={0=1104}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I me","bold":true}'}
execute as @e[tag=n,scores={0=1106}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mea","bold":true}'}
execute as @e[tag=n,scores={0=1108}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean","bold":true}'}
execute as @e[tag=n,scores={0=1110}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean w","bold":true}'}
execute as @e[tag=n,scores={0=1112}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean we","bold":true}'}
execute as @e[tag=n,scores={0=1114}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean wel","bold":true}'}
execute as @e[tag=n,scores={0=1116}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welc","bold":true}'}
execute as @e[tag=n,scores={0=1118}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welco","bold":true}'}
execute as @e[tag=n,scores={0=1120}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcom","bold":true}'}
execute as @e[tag=n,scores={0=1122}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcomi","bold":true}'}
execute as @e[tag=n,scores={0=1124}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcomin","bold":true}'}
execute as @e[tag=n,scores={0=1126}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming","bold":true}'}
execute as @e[tag=n,scores={0=1128}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming y","bold":true}'}
execute as @e[tag=n,scores={0=1130}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming yo","bold":true}'}
execute as @e[tag=n,scores={0=1132}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming you","bold":true}'}
execute as @e[tag=n,scores={0=1134}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming you t","bold":true}'}
execute as @e[tag=n,scores={0=1136}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming you to","bold":true}'}
execute as @e[tag=n,scores={0=1138}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming you to.","bold":true}'}
execute as @e[tag=n,scores={0=1140}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I mean welcoming you to..","bold":true}'}

execute as @e[tag=n,scores={0=1160}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"T","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1162}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Th","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1164}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1166}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The K","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1168}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Ki","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1170}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kin","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1172}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The King","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1174}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingd","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1176}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdo","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1178}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1180}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom E","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1182}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom En","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1184}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Ent","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1186}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Entr","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1188}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Entra","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1190}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Entran","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1192}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Entranc","color":"light_purple","bold":true}'}
execute as @e[tag=n,scores={0=1194}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"The Kingdom Entrance!","color":"light_purple","bold":true}'}

execute as @e[tag=n,scores={0=1236}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"W","bold":true}'}
execute as @e[tag=n,scores={0=1238}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"We","bold":true}'}
execute as @e[tag=n,scores={0=1240}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Wel","bold":true}'}
execute as @e[tag=n,scores={0=1242}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well","bold":true}'}
execute as @e[tag=n,scores={0=1244}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well.","bold":true}'}
execute as @e[tag=n,scores={0=1246}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well..","bold":true}'}
execute as @e[tag=n,scores={0=1266}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well...","bold":true}'}
execute as @e[tag=n,scores={0=1268}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... w","bold":true}'}
execute as @e[tag=n,scores={0=1270}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... wh","bold":true}'}
execute as @e[tag=n,scores={0=1272}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... wha","bold":true}'}
execute as @e[tag=n,scores={0=1274}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what","bold":true}'}
execute as @e[tag=n,scores={0=1276}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s","bold":true}'}
execute as @e[tag=n,scores={0=1278}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s l","bold":true}'}
execute as @e[tag=n,scores={0=1280}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s le","bold":true}'}
execute as @e[tag=n,scores={0=1282}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s lef","bold":true}'}
execute as @e[tag=n,scores={0=1284}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left","bold":true}'}
execute as @e[tag=n,scores={0=1286}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left o","bold":true}'}
execute as @e[tag=n,scores={0=1288}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of","bold":true}'}
execute as @e[tag=n,scores={0=1290}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of i","bold":true}'}
execute as @e[tag=n,scores={0=1292}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of it","bold":true}'}
execute as @e[tag=n,scores={0=1294}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of it n","bold":true}'}
execute as @e[tag=n,scores={0=1296}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of it no","bold":true}'}
execute as @e[tag=n,scores={0=1298}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Well... what\'s left of it now","bold":true}'}

execute as @e[tag=n,scores={0=1308}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"N","bold":true}'}
execute as @e[tag=n,scores={0=1310}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"No","bold":true}'}
execute as @e[tag=n,scores={0=1312}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not","bold":true}'}
execute as @e[tag=n,scores={0=1314}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not q","bold":true}'}
execute as @e[tag=n,scores={0=1316}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not qu","bold":true}'}
execute as @e[tag=n,scores={0=1318}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not qui","bold":true}'}
execute as @e[tag=n,scores={0=1320}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quit","bold":true}'}
execute as @e[tag=n,scores={0=1322}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite","bold":true}'}
execute as @e[tag=n,scores={0=1324}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite s","bold":true}'}
execute as @e[tag=n,scores={0=1326}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite sh","bold":true}'}
execute as @e[tag=n,scores={0=1328}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite sha","bold":true}'}
execute as @e[tag=n,scores={0=1330}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shap","bold":true}'}
execute as @e[tag=n,scores={0=1332}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape","bold":true}'}
execute as @e[tag=n,scores={0=1334}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape f","bold":true}'}
execute as @e[tag=n,scores={0=1336}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape fo","bold":true}'}
execute as @e[tag=n,scores={0=1338}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for","bold":true}'}
execute as @e[tag=n,scores={0=1340}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for y","bold":true}'}
execute as @e[tag=n,scores={0=1342}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for yo","bold":true}'}
execute as @e[tag=n,scores={0=1344}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for you","bold":true}'}
execute as @e[tag=n,scores={0=1346}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your","bold":true}'}
execute as @e[tag=n,scores={0=1348}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your t","bold":true}'}
execute as @e[tag=n,scores={0=1350}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your ta","bold":true}'}
execute as @e[tag=n,scores={0=1352}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your tas","bold":true}'}
execute as @e[tag=n,scores={0=1354}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your tast","bold":true}'}
execute as @e[tag=n,scores={0=1356}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste","bold":true}'}
execute as @e[tag=n,scores={0=1358}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste, m","bold":true}'}
execute as @e[tag=n,scores={0=1360}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste, ma","bold":true}'}
execute as @e[tag=n,scores={0=1362}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste, may","bold":true}'}
execute as @e[tag=n,scores={0=1364}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste, mayb","bold":true}'}
execute as @e[tag=n,scores={0=1366}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Not quite shape for your taste, maybe?","bold":true}'}

execute as @e[tag=n,scores={0=1416}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Hmm","bold":true}'}
execute as @e[tag=n,scores={0=1418}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Hmm.","bold":true}'}
execute as @e[tag=n,scores={0=1420}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Hmm..","bold":true}'}
execute as @e[tag=n,scores={0=1452}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Hmm...","bold":true}'}
execute as @e[tag=n,scores={0=1454}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I","bold":true}'}
execute as @e[tag=n,scores={0=1456}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I f","bold":true}'}
execute as @e[tag=n,scores={0=1458}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I fo","bold":true}'}
execute as @e[tag=n,scores={0=1460}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I for","bold":true}'}
execute as @e[tag=n,scores={0=1462}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forg","bold":true}'}
execute as @e[tag=n,scores={0=1464}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forge","bold":true}'}
execute as @e[tag=n,scores={0=1466}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget","bold":true}'}
execute as @e[tag=n,scores={0=1468}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget t","bold":true}'}
execute as @e[tag=n,scores={0=1470}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget th","bold":true}'}
execute as @e[tag=n,scores={0=1472}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the","bold":true}'}
execute as @e[tag=n,scores={0=1474}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the l","bold":true}'}
execute as @e[tag=n,scores={0=1476}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the le","bold":true}'}
execute as @e[tag=n,scores={0=1478}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the lea","bold":true}'}
execute as @e[tag=n,scores={0=1480}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the leas","bold":true}'}
execute as @e[tag=n,scores={0=1482}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least","bold":true}'}
execute as @e[tag=n,scores={0=1484}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least f","bold":true}'}
execute as @e[tag=n,scores={0=1486}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least fo","bold":true}'}
execute as @e[tag=n,scores={0=1488}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least for","bold":true}'}
execute as @e[tag=n,scores={0=1490}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least form","bold":true}'}
execute as @e[tag=n,scores={0=1492}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least forma","bold":true}'}
execute as @e[tag=n,scores={0=1494}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal","bold":true}'}
execute as @e[tag=n,scores={0=1496}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal e","bold":true}'}
execute as @e[tag=n,scores={0=1498}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal ex","bold":true}'}
execute as @e[tag=n,scores={0=1500}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal exp","bold":true}'}
execute as @e[tag=n,scores={0=1502}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expr","bold":true}'}
execute as @e[tag=n,scores={0=1504}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expre","bold":true}'}
execute as @e[tag=n,scores={0=1506}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expres","bold":true}'}
execute as @e[tag=n,scores={0=1508}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal express","bold":true}'}
execute as @e[tag=n,scores={0=1510}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expressi","bold":true}'}
execute as @e[tag=n,scores={0=1512}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expressio","bold":true}'}
execute as @e[tag=n,scores={0=1514}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I forget the least formal expression","bold":true}'}

execute as @e[tag=n,scores={0=1516}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"u","bold":true}'}
execute as @e[tag=n,scores={0=1518}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"us","bold":true}'}
execute as @e[tag=n,scores={0=1520}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"use","bold":true}'}
execute as @e[tag=n,scores={0=1522}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used","bold":true}'}
execute as @e[tag=n,scores={0=1524}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used n","bold":true}'}
execute as @e[tag=n,scores={0=1526}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used no","bold":true}'}
execute as @e[tag=n,scores={0=1528}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used now","bold":true}'}
execute as @e[tag=n,scores={0=1530}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowa","bold":true}'}
execute as @e[tag=n,scores={0=1532}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowad","bold":true}'}
execute as @e[tag=n,scores={0=1534}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowada","bold":true}'}
execute as @e[tag=n,scores={0=1536}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowaday","bold":true}'}
execute as @e[tag=n,scores={0=1538}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowadays","bold":true}'}
execute as @e[tag=n,scores={0=1540}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowadays.","bold":true}'}
execute as @e[tag=n,scores={0=1542}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"used nowadays..","bold":true}'}
execute as @e[tag=n,scores={0=1544}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but","bold":true}'}
execute as @e[tag=n,scores={0=1546}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but","bold":true}'}
execute as @e[tag=n,scores={0=1548}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but","bold":true}'}
execute as @e[tag=n,scores={0=1550}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but i","bold":true}'}
execute as @e[tag=n,scores={0=1552}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it","bold":true}'}
execute as @e[tag=n,scores={0=1554}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it s","bold":true}'}
execute as @e[tag=n,scores={0=1556}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it sh","bold":true}'}
execute as @e[tag=n,scores={0=1558}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it sho","bold":true}'}
execute as @e[tag=n,scores={0=1560}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it shou","bold":true}'}
execute as @e[tag=n,scores={0=1562}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it shoul","bold":true}'}
execute as @e[tag=n,scores={0=1564}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it should","bold":true}'}
execute as @e[tag=n,scores={0=1566}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it should b","bold":true}'}
execute as @e[tag=n,scores={0=1568}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"but it should be","bold":true}'}

execute as @e[tag=n,scores={0=1570}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"d","bold":true}'}
execute as @e[tag=n,scores={0=1572}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"di","bold":true}'}
execute as @e[tag=n,scores={0=1574}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"dis","bold":true}'}
execute as @e[tag=n,scores={0=1576}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"disp","bold":true}'}
execute as @e[tag=n,scores={0=1578}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displ","bold":true}'}
execute as @e[tag=n,scores={0=1580}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displa","bold":true}'}
execute as @e[tag=n,scores={0=1582}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"display","bold":true}'}
execute as @e[tag=n,scores={0=1584}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displaye","bold":true}'}
execute as @e[tag=n,scores={0=1586}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed","bold":true}'}
execute as @e[tag=n,scores={0=1588}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed o","bold":true}'}
execute as @e[tag=n,scores={0=1590}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on","bold":true}'}
execute as @e[tag=n,scores={0=1592}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on y","bold":true}'}
execute as @e[tag=n,scores={0=1594}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on yo","bold":true}'}
execute as @e[tag=n,scores={0=1596}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on you","bold":true}'}
execute as @e[tag=n,scores={0=1598}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your","bold":true}'}
execute as @e[tag=n,scores={0=1600}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your s","bold":true}'}
execute as @e[tag=n,scores={0=1602}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your sc","bold":true}'}
execute as @e[tag=n,scores={0=1604}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your scr","bold":true}'}
execute as @e[tag=n,scores={0=1606}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your scre","bold":true}'}
execute as @e[tag=n,scores={0=1608}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your scree","bold":true}'}
execute as @e[tag=n,scores={0=1610}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen","bold":true}'}
execute as @e[tag=n,scores={0=1612}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen i","bold":true}'}
execute as @e[tag=n,scores={0=1614}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in","bold":true}'}
execute as @e[tag=n,scores={0=1616}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in t","bold":true}'}
execute as @e[tag=n,scores={0=1618}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in th","bold":true}'}
execute as @e[tag=n,scores={0=1620}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in thi","bold":true}'}
execute as @e[tag=n,scores={0=1622}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in this","bold":true}'}
execute as @e[tag=n,scores={0=1624}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in this w","bold":true}'}
execute as @e[tag=n,scores={0=1626}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in this wa","bold":true}'}
execute as @e[tag=n,scores={0=1628}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"displayed on your screen in this way","bold":true}'}

execute as @e[tag=n,scores={0=1630}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"w","bold":true}'}
execute as @e[tag=n,scores={0=1632}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"wh","bold":true}'}
execute as @e[tag=n,scores={0=1634}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"whe","bold":true}'}
execute as @e[tag=n,scores={0=1636}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when","bold":true}'}
execute as @e[tag=n,scores={0=1638}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when y","bold":true}'}
execute as @e[tag=n,scores={0=1640}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when yo","bold":true}'}
execute as @e[tag=n,scores={0=1642}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you","bold":true}'}
execute as @e[tag=n,scores={0=1644}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you r","bold":true}'}
execute as @e[tag=n,scores={0=1646}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you re","bold":true}'}
execute as @e[tag=n,scores={0=1648}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you ret","bold":true}'}
execute as @e[tag=n,scores={0=1650}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you retu","bold":true}'}
execute as @e[tag=n,scores={0=1652}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you retur","bold":true}'}
execute as @e[tag=n,scores={0=1654}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return","bold":true}'}
execute as @e[tag=n,scores={0=1656}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return t","bold":true}'}
execute as @e[tag=n,scores={0=1658}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to","bold":true}'}
execute as @e[tag=n,scores={0=1660}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to t","bold":true}'}
execute as @e[tag=n,scores={0=1662}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to th","bold":true}'}
execute as @e[tag=n,scores={0=1664}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to the","bold":true}'}
execute as @e[tag=n,scores={0=1666}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to thes","bold":true}'}
execute as @e[tag=n,scores={0=1668}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these","bold":true}'}
execute as @e[tag=n,scores={0=1670}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these p","bold":true}'}
execute as @e[tag=n,scores={0=1672}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these pa","bold":true}'}
execute as @e[tag=n,scores={0=1674}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these par","bold":true}'}
execute as @e[tag=n,scores={0=1676}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these part","bold":true}'}
execute as @e[tag=n,scores={0=1678}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these parts","bold":true}'}
execute as @e[tag=n,scores={0=1680}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these parts.","bold":true}'}
execute as @e[tag=n,scores={0=1682}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"when you return to these parts..","bold":true}'}

execute as @e[tag=n,scores={0=1625..1643}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] title [""]
execute as @e[tag=n,scores={0=1625..1628}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"yellow","bold":true},{"text":"pawn ~","bold":true}]
execute as @e[tag=n,scores={0=1628..1631}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"S","color":"gold","bold":true},{"text":"p","color":"yellow","bold":true},{"text":"awn ~","bold":true}]
execute as @e[tag=n,scores={0=1631..1634}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"Sp","color":"gold","bold":true},{"text":"a","color":"yellow","bold":true},{"text":"wn ~","bold":true}]
execute as @e[tag=n,scores={0=1634..1637}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"Spa","color":"gold","bold":true},{"text":"w","color":"yellow","bold":true},{"text":"n ~","bold":true}]
execute as @e[tag=n,scores={0=1637..1640}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"Spaw","color":"gold","bold":true},{"text":"n","color":"yellow","bold":true},{"text":" ~","bold":true}]
execute as @e[tag=n,scores={0=1640..1643}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run title @a[tag=0] subtitle ["",{"text":"~ ","bold":true},{"text":"Spawn","color":"gold","bold":true},{"text":" ~","bold":true}]
execute as @e[tag=n,scores={0=1716}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I","bold":true}'}
execute as @e[tag=n,scores={0=1718}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I r","bold":true}'}
execute as @e[tag=n,scores={0=1720}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I re","bold":true}'}
execute as @e[tag=n,scores={0=1722}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I rea","bold":true}'}
execute as @e[tag=n,scores={0=1724}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I real","bold":true}'}
execute as @e[tag=n,scores={0=1726}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I reall","bold":true}'}
execute as @e[tag=n,scores={0=1728}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really","bold":true}'}
execute as @e[tag=n,scores={0=1730}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really d","bold":true}'}
execute as @e[tag=n,scores={0=1732}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do","bold":true}'}
execute as @e[tag=n,scores={0=1734}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do t","bold":true}'}
execute as @e[tag=n,scores={0=1736}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do th","bold":true}'}
execute as @e[tag=n,scores={0=1738}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do thi","bold":true}'}
execute as @e[tag=n,scores={0=1740}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do thin","bold":true}'}
execute as @e[tag=n,scores={0=1742}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think","bold":true}'}
execute as @e[tag=n,scores={0=1744}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think i","bold":true}'}
execute as @e[tag=n,scores={0=1746}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it","bold":true}'}
execute as @e[tag=n,scores={0=1748}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it s","bold":true}'}
execute as @e[tag=n,scores={0=1750}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it sh","bold":true}'}
execute as @e[tag=n,scores={0=1752}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it sha","bold":true}'}
execute as @e[tag=n,scores={0=1754}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shap","bold":true}'}
execute as @e[tag=n,scores={0=1756}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shape","bold":true}'}
execute as @e[tag=n,scores={0=1758}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes","bold":true}'}
execute as @e[tag=n,scores={0=1760}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes t","bold":true}'}
execute as @e[tag=n,scores={0=1762}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes th","bold":true}'}
execute as @e[tag=n,scores={0=1764}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes thi","bold":true}'}
execute as @e[tag=n,scores={0=1766}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this","bold":true}'}
execute as @e[tag=n,scores={0=1768}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this p","bold":true}'}
execute as @e[tag=n,scores={0=1780}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this pl","bold":true}'}
execute as @e[tag=n,scores={0=1782}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this pla","bold":true}'}
execute as @e[tag=n,scores={0=1784}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this plac","bold":true}'}
execute as @e[tag=n,scores={0=1786}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"I really do think it shapes this place!","bold":true}'}

execute as @e[tag=n,scores={0=1810}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"D","bold":true}'}
execute as @e[tag=n,scores={0=1812}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Do","bold":true}'}
execute as @e[tag=n,scores={0=1814}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don","bold":true}'}
execute as @e[tag=n,scores={0=1816}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t","bold":true}'}
execute as @e[tag=n,scores={0=1818}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t y","bold":true}'}
execute as @e[tag=n,scores={0=1820}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t yo","bold":true}'}
execute as @e[tag=n,scores={0=1822}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you","bold":true}'}
execute as @e[tag=n,scores={0=1824}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you m","bold":true}'}
execute as @e[tag=n,scores={0=1826}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you me","bold":true}'}
execute as @e[tag=n,scores={0=1828}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you mea","bold":true}'}
execute as @e[tag=n,scores={0=1830}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you meas","bold":true}'}
execute as @e[tag=n,scores={0=1832}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measu","bold":true}'}
execute as @e[tag=n,scores={0=1834}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measur","bold":true}'}
execute as @e[tag=n,scores={0=1836}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure","bold":true}'}
execute as @e[tag=n,scores={0=1838}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure i","bold":true}'}
execute as @e[tag=n,scores={0=1840}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure it","bold":true}'}
execute as @e[tag=n,scores={0=1842}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure it t","bold":true}'}
execute as @e[tag=n,scores={0=1844}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure it to","bold":true}'}
execute as @e[tag=n,scores={0=1846}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run data merge entity @s {CustomName:'{"text":"Don\'t you measure it too?","bold":true}'}

execute as @e[tag=n,scores={0=1876..}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run tag @e[tag=p0ly] remove 0
execute as @e[tag=n,scores={0=1876..}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run tag @e[limit=1,name="M@K"] add 0p
execute as @e[tag=n,scores={0=1876..}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run tag @e[limit=1,name="M@K"] add 00p
execute as @e[tag=n,scores={0=1876..}] at @s unless entity @e[tag=1p] unless entity @e[tag=3p] run advancement grant @a only mk:story