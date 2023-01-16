execute as @e[type=item, tag=!afc.checked] run function afc:check/item/main
execute as @a[scores={afc.queue=0}, limit=1] if score $running afc.queue matches 0 run function afc:parse/enter