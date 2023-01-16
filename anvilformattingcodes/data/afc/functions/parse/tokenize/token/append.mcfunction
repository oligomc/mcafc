data modify storage afc:data temp.parse.tokens append value {code:"", extra:[]}
data modify storage afc:data temp.parse.tokens[-1].code set from storage afc:data temp.parse.iter[0]