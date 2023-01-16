# interpret
execute store result score $m afc.global run data get storage afc:data temp.parse.tokens
data modify block 29999985 -63 43376 Text1 set value '{"text":""}'
function afc:parse/interpret/loop