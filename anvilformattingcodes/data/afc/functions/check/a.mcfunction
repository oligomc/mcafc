execute unless entity @s[tag=afc.check.a.1] run schedule function afc:check/schedule 1t
tag @s[tag=afc.check.a.1] add afc.check.a.2
tag @s add afc.check.a.1
advancement revoke @s from afc:check/a