## suso.str
# entities
kill 00000000-0000-0226-0000-000000000000
kill 00000000-0000-0226-0000-000000000001

# scoreboards
scoreboard objectives remove suso.str

# data storages
data remove storage suso.str:io in
data remove storage suso.str:io out
data remove storage suso.str:internal result
data remove storage suso.str:internal possible_chars_set
data remove storage suso.str:internal possible_chars2
data remove storage suso.str:internal possible_chars
data remove storage suso.str:internal prep
data remove storage suso.str:internal callback
data remove storage suso.str:internal flattened_in
data remove storage suso.str:internal flattened_cmp
data remove storage suso.str:internal flattened_tag_list
data remove storage suso.str:internal current_char
data remove storage suso.str:internal time
data remove storage suso.str:internal tags_start

# blocks
fill 29999984 -64 43376 29999986 -63 43377 minecraft:barrier

## afc
# scoreboards
scoreboard objectives remove afc.global
scoreboard objectives remove afc.queue

# tags
tag @a remove afc.check.a.1
tag @a remove afc.check.a.2
tag @a remove afc.check.a.b
tag @e remove afc.checked

# advancements
advancement revoke @a from afc:check/a

# data storages
data remove storage afc:data temp

# forceload
execute as b35a8fdc-5b14-47d2-9aed-b6c688940287 at @s align xyz run function afc:assets/forceload