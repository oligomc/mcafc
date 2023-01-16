scoreboard players remove $m afc.global 1

# &
execute store success score $format afc.global run data modify storage afc:data temp.parse.format set from storage afc:data temp.parse.iter[0]
data modify storage afc:data temp.parse.format set value "&"
execute unless score $format afc.global matches 1 run function afc:parse/tokenize/token/check

# \\
execute unless score $break afc.global matches 1 run function afc:parse/tokenize/nest

data remove storage afc:data temp.parse.iter[0]
execute unless score $m afc.global matches 0 run function afc:parse/tokenize/main