data remove storage afc:data temp.parse.iter[0]
scoreboard players remove $m afc.global 1
data modify storage afc:data temp.parse.codes append from storage afc:data temp.parse.iter[0]
data modify entity 00000000-0000-0226-0000-000000000001 Tags set from storage afc:data temp.parse.codes
execute store result score $code afc.global run data get entity 00000000-0000-0226-0000-000000000001 Tags
data remove storage afc:data temp.parse.codes[-1]
execute if score $code afc.global matches 22 run function afc:parse/tokenize/token/append
execute unless score $code afc.global matches 22 store success score $break afc.global run scoreboard players set $m afc.global 0