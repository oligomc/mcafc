function afc:parse/main
data remove storage afc:data temp.queue[0][0]
scoreboard players remove $n afc.queue 1
execute if score $n afc.queue matches 1.. run function afc:parse/call
execute if score $n afc.queue matches 0 run function afc:parse/queue/remove