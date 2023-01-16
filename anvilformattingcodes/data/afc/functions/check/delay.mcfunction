# execute if entity @s[tag=afc.check.b, tag=!afc.check.a.2, tag=!afc.check.c] run say validate
# execute if entity @s[tag=!afc.check.a.2, tag=afc.check.c] run function afc:check/item/untag
execute if entity @s[tag=afc.check.b, tag=!afc.check.a.2] run function afc:check/validate
# execute if entity @s[tag=afc.check.c] run say c
tag @s remove afc.check.a.1
tag @s remove afc.check.a.2
tag @s remove afc.check.b
# tag @s remove afc.check.c
advancement revoke @s from afc:check/a