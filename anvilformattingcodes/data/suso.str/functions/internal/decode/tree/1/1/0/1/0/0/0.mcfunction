data modify storage suso.str:internal interpreted append value "h"

execute store result score $bit suso.str if data storage suso.str:internal bits[]
execute if score $bit suso.str matches 8.. run function suso.str:internal/decode/tree/do