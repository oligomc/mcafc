data remove storage afc:data temp.parse.iter[0]
data remove storage afc:data temp.parse.iter[0]
scoreboard players remove $m afc.global 2
execute store success score $token afc.global run data modify storage afc:data temp.parse.format set from storage afc:data temp.parse.iter[0]
data modify storage afc:data temp.parse.format set value "&"
execute if score $token afc.global matches 0 run data modify storage afc:data temp.parse.tokens[-1].extra append from storage afc:data temp.parse.iter[0]
execute unless score $token afc.global matches 0 store success score $break afc.global run scoreboard players set $m afc.global 0