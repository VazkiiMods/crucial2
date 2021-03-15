mkdir mods
Import-Csv mods.csv -Header "Source", "Destination" | Start-BitsTransfer