# Sync UI - Key System
![SyncUI](https://media.discordapp.net/attachments/1074291934501290087/1160430673404907581/SYNC_UI_20231008_121648_0000.png?ex=6534a248&is=65222d48&hm=0687595bf51ba68fa76f5300d67e07afd60cee63fa6333227023f78144a69735&)

## Booting the library
```lua
local SyncUI = loadstring(game:HttpGet('https://raw.githubusercontent.com/ZenithDust/Quantumix-Networks/main/Library/SyncUI/SyncV2.lua'))()
```

## Creating the UI
```lua
SyncUI:Create({
  Service = "example",
  Name = "Example HUB",
  Discord = "dsc.gg/example",
  Callback = function()
    print('example')
  end
  SaveKey = true
})
```
