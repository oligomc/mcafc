execute store result score $cmdfeed suso.str run gamerule sendCommandFeedback
gamerule sendCommandFeedback true
data modify block ~ ~ ~1 auto set value 0b

data modify block ~ ~ ~ auto set value 0b
data modify block ~1 ~ ~ UpdateLastExecution set value 0b
scoreboard players set $state suso.str 0
scoreboard players set $offset suso.str 0
scoreboard players set $last_ctx suso.str 1
scoreboard players set $curr_chars suso.str 0

data modify entity 00000000-0000-0226-0000-000000000000 CustomName set value '{"text":""}'
data modify entity 00000000-0000-0226-0000-000000000001 Tags set value []
data remove storage suso.str:io out
data remove storage suso.str:internal cmp
data remove storage suso.str:internal tags_start
data remove storage suso.str:internal constructed
data remove storage suso.str:internal current_char
data remove storage suso.str:internal flattened_in
data remove storage suso.str:internal flattened_cmp
data remove storage suso.str:internal possible_chars2
data remove storage suso.str:internal flattened_tag_list

data modify storage suso.str:internal result set value []
execute store result score $max_chars suso.str run data get storage suso.str:io in.string
scoreboard players remove $max_chars suso.str 11