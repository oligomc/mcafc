# Anvil Formatting Codes (mcafc)

## Description
Allows for the use of [formatting codes](https://minecraft.fandom.com/wiki/Formatting_codes) when renaming items in anvils, providing survival-friendly text formatting of item names.

## Installation
Once the data pack is [installed](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack), type `/reload` in-game to load all data pack assets.

The data pack can be disabled in-game using the command `/function afc:uninstall`, whereafter the contents can be removed from the data packs folder.

## Usage
Text in the anvil GUI can be formatted using the ampersand sign (`&`) followed by a valid formatting character:
|Code|Name|
|:---|:---|
|`&0`|Black|
|`&1`|Dark Blue|
|`&2`|Dark Green|
|`&3`|Dark Aqua|
|`&4`|Dark Red|
|`&5`|Dark Purple|
|`&6`|Gold|
|`&7`|Gray|
|`&8`|Dark Gray|
|`&9`|Blue|
|`&a`|Green|
|`&b`|Aqua|
|`&c`|Red|
|`&d`|Light Purple|
|`&e`|Yellow|
|`&f`|White|
|`&k`|Obfuscated|
|`&l`|Bold|
|`&m`|Strikethrough|
|`&n`|Underline|
|`&o`|Italic|
|`&r`|Reset|


NOTE: Parsing anvil names is not instantaneous and can require a few ticks to a few seconds depending on server backup.

## Credits
This data pack utilizes [5uso's General String Parser](https://github.com/5uso/String-Parser) for generating character arrays from raw strings. For complete credits see `CREDITS.txt`

## License
Copy of 5uso's Apache 2.0 license attached
