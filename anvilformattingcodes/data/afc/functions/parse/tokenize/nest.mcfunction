execute store success score $escape afc.global run data modify storage afc:data temp.parse.escape set from storage afc:data temp.parse.iter[0]
data modify storage afc:data temp.parse.escape set value "\\"
execute unless score $escape afc.global matches 1 run function afc:parse/tokenize/escape/check

# other character
execute unless score $break afc.global matches 1 unless score $escape afc.global matches 0 unless score $format afc.global matches 0 run data modify storage afc:data temp.parse.tokens[-1].extra append from storage afc:data temp.parse.iter[0]