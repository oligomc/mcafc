data modify storage afc:data temp.parse.code set from storage afc:data temp.parse.tokens[-1].code
function afc:parse/interpret/decode
data remove storage afc:data temp.parse.tokens[-1]
scoreboard players remove $m afc.global 1
execute unless score $m afc.global matches 0 run function afc:parse/interpret/loop