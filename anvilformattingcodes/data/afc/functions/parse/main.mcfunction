# tokenize
scoreboard players set $break afc.global 0
data modify storage afc:data temp.parse.out set from storage suso.str:io out
data modify storage afc:data temp.parse.iter set from storage afc:data temp.parse.out
execute store result score $m afc.global run data get storage afc:data temp.parse.iter
data merge storage afc:data {temp:{parse:{tokens:[{code:"r", extra:[]}]}}}
function afc:parse/tokenize/main

# interpret
execute unless score $break afc.global matches 1 run function afc:parse/interpret/main
execute if score $break afc.global matches 1 run function afc:parse/break

# merge
function afc:parse/merge/main