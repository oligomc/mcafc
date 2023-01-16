data remove storage afc:data temp.queue[0]
scoreboard players remove $global afc.queue 1
scoreboard players remove @a[scores={afc.queue=1..}] afc.queue 1
scoreboard players reset @s afc.queue
scoreboard players set $running afc.queue 0