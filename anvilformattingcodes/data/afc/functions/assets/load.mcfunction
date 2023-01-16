## afc
# forceload
forceload add 29999999 43376

# entities
# forceload marker: (b35a8fdc-5b14-47d2-9aed-b6c688940287, [I;-1285910564,1528055762,-1695697210,-2003565945])
summon marker 29999984 -64.5 43376 {Tags:["global.forceload", "global.ignore", "global.ignore.kill", "global.ignore.gui", "global.ignore.pos"], UUID:[I;-1285910564,1528055762,-1695697210,-2003565945], CustomName:'{"text":""}'}

# scoreboards
scoreboard objectives add afc.global dummy
scoreboard objectives add afc.queue dummy
scoreboard players set $global afc.queue -1
scoreboard players set $running afc.queue 0

# data storages
data merge storage afc:data {temp:{current:{}, queue:[], inventory:[], renamed:[], pass:[], count:[], batch:{hotbar:[], inventory:[]}, parse:{out:[], iter:[], tokens:[{code:"r", extra:[]}], code:"", format:"&", escape:"\\", codes: ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "k", "l", "m", "n", "o", "r"]}}}

# blocks
setblock 29999984 -63 43376 yellow_shulker_box

## suso.str
# entities
# JSON concat: (00000000-0000-0226-0000-000000000000, [I;0,550,0,0])
# tag lists: (00000000-0000-0226-0000-000000000001, [I;0,550,0,1])
summon marker 29999984 -64 43376 {Tags:["global.ignore", "global.ignore.kill", "global.ignore.gui", "global.ignore.pos"], UUID:[I;0,550,0,0]}
summon marker 29999984 -64 43376 {UUID:[I;0,550,0,1],CustomName:'{"text":""}'}

# scoreboards
scoreboard objectives add suso.str dummy
scoreboard players set #2 suso.str 2
scoreboard players set #4 suso.str 4

# data storages
data modify storage suso.str:internal possible_chars set value [" ","!","#","$","%","&","'","(",")","*","+",",","-",".","/","0","1","2","3","4","5","6","7","8","9",":",";","<","=",">","?","@","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","[","\"","\\","]","^","_","`","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","{","|","}","~"]
data modify storage suso.str:internal possible_chars_set set from storage suso.str:internal possible_chars
data modify storage suso.str:internal prep set value '{"text":"{\\"text\\":\\""}'
data modify storage suso.str:internal callback set value 'execute as @a[scores={afc.queue=0}, limit=1] run function afc:parse/queue/update'

# blocks
setblock 29999984 -64 43376 minecraft:command_block[conditional=false,facing=east]{auto:0b,UpdateLastExecution:1b,Command:"function suso.str:internal/start",TrackOutput:0b}
setblock 29999985 -64 43376 minecraft:chain_command_block[conditional=false,facing=east]{auto:1b,UpdateLastExecution:1b,Command:"function suso.str:internal/main",TrackOutput:0b}
setblock 29999985 -63 43376 minecraft:oak_sign[rotation=4,waterlogged=false]
setblock 29999986 -64 43376 minecraft:chain_command_block[conditional=false,facing=south]{auto:1b,UpdateLastExecution:0b,TrackOutput:1b}
setblock 29999986 -64 43377 minecraft:chain_command_block[conditional=false,facing=west]{auto:1b,UpdateLastExecution:0b,TrackOutput:0b}
setblock 29999985 -64 43377 minecraft:chain_command_block[conditional=false,facing=north]{auto:1b,UpdateLastExecution:0b,Command:"help me",TrackOutput:1b}
setblock 29999984 -64 43377 minecraft:command_block[conditional=false,facing=up]{auto:0b,UpdateLastExecution:1b,TrackOutput:1b} destroy

# others
gamerule maxCommandChainLength 2147483647